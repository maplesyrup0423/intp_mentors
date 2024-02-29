package kr.co.softsoldesk.mapper;

import org.apache.ibatis.annotations.Insert;

public interface CartMapper {

	@Insert("insert into cart values(#{teacher_id},#{WT_Key})")
	void addCart(String teacher_id,String WT_Key);
}
