package controller

import (
	"github.com/gin-gonic/gin"

	"obuy_openapi/reqmodel"

	"net/http"
	"strconv"
)

type MemberController struct{}

func M_GetPgInfo(c *gin.Context) {

	open_id := c.Query("open_id")
	m_name := c.Query("m_name")
	nick_name := c.Query("nick_name")
	p_index := c.Query("p_index")
	p_size := c.Query("p_size")
	b_time := c.Query("b_time")
	e_time := c.Query("e_time")

	i_p_index, err := strconv.Atoi(p_index)

	if nil != err {

		c.JSON(http.StatusBadRequest, gin.H{"status": "-1", "msg": err, "data": ""})
		c.Abort()
		return
	}

	i_p_size, err := strconv.Atoi(p_size)
	if nil != err {

		c.JSON(http.StatusBadRequest, gin.H{"status": "-1", "msg": err, "data": ""})
		c.Abort()
		return
	}

	m_pgInfo, err := memberService.M_GetPgInfo(&reqmodel.M_GetPgInfo_Req{OpenId: open_id, MName: m_name, NickName: nick_name, PIndex: i_p_index, PSize: i_p_size, BTime: b_time, ETime: e_time})

	if nil != err {

		c.JSON(http.StatusBadRequest, gin.H{"status": "-1", "msg": err, "data": ""})
		c.Abort()
		return
	}

	c.JSON(http.StatusOK, gin.H{"status": "1", "msg": "success", "data": m_pgInfo})
	return

}

func (this *MemberController) M_Insert(c *gin.Context) {

	var req reqmodel.M_Insert_Req

	err := c.BindJSON(&req)
	if nil != err {

		c.JSON(http.StatusBadRequest, gin.H{"status": "-1", "msg": err, "data": ""})
		c.Abort()
		return
	}

	res, err := memberService.M_Insert(&req)

	if nil != err {
		c.JSON(http.StatusBadRequest, gin.H{"status": "-1", "msg": err, "data": ""})
		c.Abort()
		return
	}

	c.JSON(http.StatusOK, gin.H{"status": "1", "msg": "success", "data": res})
	return

}

func (this *MemberController) M_Update(c *gin.Context) {

}

func (this *MemberController) M_DelById(c *gin.Context) {

}

func (this *MemberController) M_GetById(c *gin.Context) {

}
