package router

import (
	"github.com/gin-gonic/gin"
	"obuy_openapi/controller"
)

func InitAdminRouter(router *gin.Engine) {

	router.GET("/admin/member/pginfo", controller.M_GetPgInfo)
	router.POST("/admin/products", controller.AddProduct)
	router.GET("/admin/products/list", controller.ListProduct)
	router.PUT("/admin/product/:id", controller.ModifyProduct)
	router.GET("/admin/product/:id", controller.GetProduct)
}
