package service

import (
	"obuy_model"
	"obuy_openapi/reqmodel"
)

type ProductService struct{}

func (this *ProductService) P_GetPgInfo(req *reqmodel.P_GetPgInfo_Req) (m_pgInfo []obuy_model.Product, err error) {

	return productRepository.P_GetPgInfo(req)

}

func (this *ProductService) P_Insert(req *reqmodel.P_Insert_Req) (productID int64, err error) {

	return productRepository.P_Insert(req)
}
