package repository

import (
	"errors"
	"obuy_model"
	"obuy_openapi/reqmodel"
)

type MemberRepository struct {
}

func (this *MemberRepository) M_GetPgInfo(req *reqmodel.M_GetPgInfo_Req) (m_pgInfo []obuy_model.Member, err error) {

	return nil, errors.New("err")
}

func (this *MemberRepository) M_Insert(req *reqmodel.M_Insert_Req) (affected_rows int, err error) {

	var res int

	res = 0

	return res, nil
}

func (this *MemberRepository) M_Update(req *reqmodel.M_Update_Req) (affected_rows int, err error) {

	res := 0

	return res, nil
}

func (this *MemberRepository) M_DelById(m_id int64) (affected_rows int, err error) {

	res := 0

	if 0 >= m_id {
		return res, errors.New("parameter err")
	}

	return res, nil
}

func (this *MemberRepository) M_GetById(m_id int64) (m *obuy_model.Member, err error) {

	m_temp := new(obuy_model.Member)
	if 0 >= m_id {
		return m_temp, errors.New("parameter err")
	}

	return m, nil

}
