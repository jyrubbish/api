package router

import (
	"github.com/gin-gonic/gin"
	"obuy_openapi/controller"
)

func InitApiRouter(router *gin.Engine) {
	//  测试
	router.GET("/api/member/:m_id", controller.M_GetPgInfo)
}
