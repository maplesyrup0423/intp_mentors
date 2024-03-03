package kr.co.softsoldesk.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import kr.co.softsoldesk.beans.CartBean;

public interface CartMapper {
	//장바구니 추가
	@Insert("insert into cart values(#{teacher_id},#{WT_Key})")
	void addCart(@Param("teacher_id") String teacher_id, @Param("WT_Key")String WT_Key);
	
	//장바구니에 이미 있는 연수 코드 목록
	@Select("select WT_key from cart where teacher_id=#{teacher_id}")
	List<String> getCartWT_KeyInfo(String teacher_id);
	
	
	//장바구니 리스트
	@Select("select wt.WT_Thumbnail, wt.WT_TrainingTime, wt.WT_Title, wt.WT_Price, wt.WT_Key from workplace_T wt "
			+ "inner join cart c on wt.WT_Key = c.WT_Key "
			+ "inner join teacher_info t on c.teacher_id = t.teacher_id and c.teacher_id = #{teacher_id}")
	List<CartBean> getCartInfo(String teacher_id);
	
	
	@Select("select wt.WT_Thumbnail, wt.WT_TrainingTime, wt.WT_Title, wt.WT_Price, wt.WT_Key from workplace_T wt "
			+ "inner join cart c on wt.WT_Key = c.WT_Key "
			+ "inner join teacher_info t on c.teacher_id = t.teacher_id and c.teacher_id = #{param1} and c.WT_Key = #{param2}")
	CartBean getOneCartInfo(String param1, String param2);
	
}
