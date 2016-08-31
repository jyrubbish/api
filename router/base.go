package router

import (
	"github.com/gin-gonic/gin"
)

func InitRouter(port string) {

	engine := gin.Default()

	InitAdminRouter(engine)

	InitApiRouter(engine)

	//  测试
	engine.Run(port)
}
