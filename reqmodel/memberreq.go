package reqmodel

type M_GetPgInfo_Req struct {
	OpenId string `json:"open_id"`

	MName string `json:"m_name"`

	NickName string `json:"nick_name"`

	PIndex int `json:"p_index"`

	PSize int `json:"p_size"`

	BTime string `json:"b_time"`

	ETime string `json:"e_time"`
}

type M_Insert_Req struct{}

type M_Update_Req struct{}
