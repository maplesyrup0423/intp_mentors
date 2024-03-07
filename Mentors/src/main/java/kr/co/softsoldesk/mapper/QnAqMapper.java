package kr.co.softsoldesk.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.co.softsoldesk.beans.QnAqBean;

public interface QnAqMapper {
	
	@Select("select q_key, WTT_Key, q_Title, q_writer, q_a_check, q_date from QnAq")
	List<QnAqBean> getQnAq();
	
	@Select("select q_key, WTT_Key, q_Title, q_writer, q_a_check, q_date from QnAq where q_key = #{q_key}")
	QnAqBean getQnAqInfo(int q_key);
	
	@Update("UPDATE QnAq SET response_status = #{status} WHERE q_key = #{q_key}")
	void updateResponseStatus(@Param("q_key") int q_key, @Param("status") String status);
}
