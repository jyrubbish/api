package repository

import (
	"errors"

	"obuy_model"
	"obuy_openapi/config"
	"obuy_openapi/reqmodel"
	"obuy_openapi/sqlutil"
)

type ProductRepository struct {
}

func (this *ProductRepository) P_GetPgInfo(req *reqmodel.P_GetPgInfo_Req) (m_pgInfo []obuy_model.Product, err error) {

	return nil, errors.New("err")
}

func (this *ProductRepository) P_Insert(req *reqmodel.P_Insert_Req) (productID int64, err error) {
	res := int64(0)

	db := DBOpen(config.Config.MysqlConnStr)
	if db == nil {
		config.Logger.Fatal("dbopen failed")
	}
	st, err := db.Prepare(sqlutil.P_Insert)
	if err != nil {
		return res, err
	}
	result, err := st.Exec(req.Name, req.Price, req.Store, req.Rate, req.Intro, req.Info)
	if err != nil {
		return res, err
	}
	return result.LastInsertId()
}

func (this *ProductRepository) P_Update(req *reqmodel.P_Update_Req) (affected_rows int, err error) {

	res := 0

	return res, nil
}

func (this *ProductRepository) P_DelById(m_id int64) (affected_rows int, err error) {

	res := 0

	if 0 >= m_id {
		return res, errors.New("parameter err")
	}

	return res, nil
}

func (this *ProductRepository) P_GetById(id int64) (m *obuy_model.Product, err error) {
	if 0 >= id {
		return nil, errors.New("parameter err")
	}
	m = new(obuy_model.Product)
	return
}
