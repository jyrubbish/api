package config

import (
	"encoding/json"
	"os"
	"path/filepath"
	"time"

	"github.com/uber-go/zap"
)

type config struct {
	MysqlConnStr string `json:"mysql_conn_str"`
	AppLogName   string `json:"app_log_file"`
}

var (
	Config *config
	Logger zap.Logger
)

func init() {
	var conffile string
	path, err := os.Getwd()
	if err != nil {
		panic(err)
	}
	switch os.Getenv("GIN_MODE") {
	case "release":
		conffile = filepath.Join(path, "/conf/pro.json")
	case "debug":
		conffile = filepath.Join(path, "/conf/dev.json")
	case "test":
		conffile = filepath.Join(path, "/conf/test.json")
	default:
		conffile = filepath.Join(path, "/conf/dev.json")
	}
	f, err := os.Open(conffile)
	if err != nil {
		panic(err)
	}
	defer f.Close()
	Config = new(config)
	if err := json.NewDecoder(f).Decode(Config); err != nil {
		panic(err)
	}
}

func init() {
	var options []zap.Option
	if Config.AppLogName == "" {
		Logger = zap.New(
			zap.NewJSONEncoder(RFC3339NanoFormatter("time")),
		)
		return
	}
	fo, err := os.OpenFile(Config.AppLogName, os.O_WRONLY|os.O_APPEND|os.O_CREATE, 0777)
	if err != nil {
		panic(err)
	}
	options = append(options, zap.Output(fo))
	Logger = zap.New(
		zap.NewJSONEncoder(RFC3339NanoFormatter("time")),
		options...,
	)
}

func RFC3339NanoFormatter(key string) zap.TimeFormatter {
	return zap.TimeFormatter(func(t time.Time) zap.Field {
		return zap.String(key, t.Local().Format(time.RFC3339Nano))
	})
}

func StampMilliFormatter(key string) zap.TimeFormatter {
	return zap.TimeFormatter(func(t time.Time) zap.Field {
		return zap.String(key, t.Local().Format(time.StampMilli))
	})
}
