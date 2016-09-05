package controller

import (
	"obuy_openapi/service"
)

var (
	memberService  *service.MemberService  = new(service.MemberService)
	productService *service.ProductService = new(service.ProductService)
)
