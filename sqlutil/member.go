package sqlutil

var (
	M_GetPgInfo = " select * From member where 1 = 1 and ? order by id limit ?, ? "

	M_Insert = " insert into member (open_id, m_name, nick_name, m_age, m_gender, m_addr, m_province, m_city, m_area, m_img, l_name, l_pwd, m_phone, is_del, create_time, create_name, modify_name, modify_time, remark, other) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) "

	M_Update = " update member "

	M_DelById = " delete from member where id = ? "

	M_GetById = " select * from member where id = ? "
)
