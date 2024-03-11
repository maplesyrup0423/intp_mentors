package kr.co.softsoldesk.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
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
	
	@Insert("INSERT INTO QnAq (WTT_Key, q_Title, q_writer, q_content) VALUES (#{WTT_Key}, #{q_Title}, #{q_writer}, #{q_content})")
    void writeQnA(QnAqBean qna);
	
	
	//---------------------------------------------
	@Select("select q.q_key, q.WTT_Key, q.q_Title, q.q_content, q.q_a_check, q.q_date,ti.teacher_name "
			+ "from wtt w inner join workplace_t wt on w.wt_key=wt.wt_key and wt.wt_key=#{wt_key} INNER JOIN qna_q q on q.wtt_key=w.wtt_key "
			+ "inner join teacher_info ti on ti.teacher_id=w.teacher_id")
	List<QnAqBean> getQList(String wt_key);
}
