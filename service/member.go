package service

import (
	"errors"
	"obuy_model"
	"obuy_openapi/reqmodel"
)

type MemberService struct{}

func (this *MemberService) M_GetPgInfo(req *reqmodel.M_GetPgInfo_Req) (m_pgInfo []obuy_model.Member, err error) {

	return memberRepository.M_GetPgInfo(req)

}

func (this *MemberService) M_Insert(req *reqmodel.M_Insert_Req) (affected_rows int, err error) {

	return memberRepository.M_Insert(req)
}

func (this *MemberService) M_Update(req *reqmodel.M_Update_Req) (affected_rows int, err error) {

	return memberRepository.M_Update(req)
}

func (this *MemberService) M_DelById(m_id int64) (affected_rows int, err error) {

	res := 0

	if 0 >= m_id {
		return res, errors.New("parameter err")
	}

	return memberRepository.M_DelById(m_id)
}

func (this *MemberService) M_GetById(m_id int64) (m *obuy_model.Member, err error) {

	if 0 >= m_id {
		return nil, errors.New("parameter err")
	}

	return memberRepository.M_GetById(m_id)

}
