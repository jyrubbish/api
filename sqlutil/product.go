package sqlutil

var (
	P_GetPgInfo = " select * From member where 1 = 1 and ? order by id limit ?, ? "

	P_Insert = "insert into product(pro_name,pro_price,pro_store,pro_rate,pro_intro,pro_info) values (?, ?, ?, ?, ?, ?)"

	P_Update = " update member "

	P_DelById = " delete from member where id = ? "

	P_GetById = " select * from member where id = ? "
)
