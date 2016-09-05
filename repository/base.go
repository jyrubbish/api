package repository

import (
	"database/sql"
	"sync"
	"time"

	_ "github.com/go-sql-driver/mysql"
	"github.com/uber-go/zap"

	"obuy_openapi/config"
)

var conn *sql.DB
var onceDB sync.Once

func DBOpen(connStr string) *sql.DB {
	onceDB.Do(func() {
		if conn != nil {
			return
		}
		db, err := sql.Open("mysql", connStr)
		if err != nil {
			config.Logger.Panic("connect mysql", zap.Error(err))
		}
		err = db.Ping()
		if err != nil {
			config.Logger.Panic("connect mysql", zap.Error(err))
		}
		db.SetMaxOpenConns(10)
		db.SetMaxIdleConns(5)
		db.SetConnMaxLifetime(time.Minute)
		conn = db
	})
	return conn
}

func DBClose() error {
	if conn != nil {
		return conn.Close()
	}
	return nil
}
