package kr.co.softsoldesk.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import kr.co.softsoldesk.beans.QnAaBean;

public interface QnAaMapper {

	@Select("SELECT a_key, q_Key, a_content, a_date FROM QnAa")
	List<QnAaBean> getQnAa();
	
	@Select("select a_key, q_Key, a_content, a_date from QnAa where a_key = #{a_key}")
	QnAaBean getQnAaInfo(int a_key);
	
}
