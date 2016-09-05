package service

import "obuy_openapi/repository"

var (
	memberRepository  *repository.MemberRepository  = new(repository.MemberRepository)
	productRepository *repository.ProductRepository = new(repository.ProductRepository)
)
