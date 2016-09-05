package reqmodel

import (
	"time"
)

type P_Insert_Req struct {
	Name  string
	Price float64
	Store int64
	Rate  float64
	Intro string
	Info  string
}

type P_GetPgInfo_Req struct {
	Catagory string
	Name     string
	Status   int
	From     time.Time
	To       time.Time
}

type P_Update_Req P_Insert_Req
