package router

import (
	"github.com/gin-gonic/gin"
	"obuy_openapi/controller"
)

func InitAdminRouter(router *gin.Engine) {

	router.GET("/admin/member/pginfo", controller.M_GetPgInfo)
}
