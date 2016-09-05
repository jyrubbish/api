package controller

import (
	"net/http"

	"github.com/gin-gonic/gin"

	"obuy_openapi/reqmodel"
)

func AddProduct(c *gin.Context) {
	var req reqmodel.P_Insert_Req
	if err := c.BindJSON(&req); err != nil {
		c.AbortWithStatus(http.StatusBadRequest)
		return
	}
	id, err := productService.P_Insert(&req)
	if err != nil {
		c.JSON(200, gin.H{"status": -1, "msg": err, "data": nil})
		return
	}
	c.JSON(200, gin.H{"status": 1, "msg": "", "data": id})
}

func DelProduct(c *gin.Context) {
}

func ListProduct(c *gin.Context) {
}

func GetProduct(c *gin.Context) {
}

func ModifyProduct(c *gin.Context) {
}
