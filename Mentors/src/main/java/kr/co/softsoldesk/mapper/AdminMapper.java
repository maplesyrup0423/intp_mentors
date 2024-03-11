package kr.co.softsoldesk.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.co.softsoldesk.beans.AdminBean;
import kr.co.softsoldesk.beans.EventBean;
import kr.co.softsoldesk.beans.WTBean;

public interface AdminMapper {
		
	//관리자 공지사항 글목록 출력
	@Select("select noti_key, wt_title, noti_title, noti_date " +
			"from Notification noti " +
			"inner join workplace_T wt on wt.wt_key = noti.wt_key ")
	List<AdminBean> getAdminNotiList();
	
	//관리자 공지사항 상세페이지 출력
	@Select("select noti_key, noti_date, noti_title, noti_content, wt_title " +
			"from Notification noti " +
			"inner join workplace_T wt on wt.wt_key = noti.wt_key " +
			"where noti.noti_key = #{noti_key} ")
	AdminBean getAdminNotiDetail(String noti_key);
	
	//관리자 공지사항 상세페이지 수정페이지로 이동
	@Select("select noti_key, noti_title, noti_content, wt_title " +
			"from Notification noti " +
			"inner join workplace_T wt on wt.wt_key = noti.wt_key " +
			"where noti.noti_key = #{noti_key} ")
	AdminBean getAdminNotiModify(String noti_key);
		
	//관리자 QnA 글 목록 출력
	@Select("select q_key, q_title, q_date, wt_title, t.teacher_id, q.q_a_check " +
			"from qna_q q " +
			"inner join WTT wtt on wtt.wtt_key = q.wtt_key " +
			"inner join teacher_info t on t.teacher_id = wtt.teacher_id " +
			"inner join workplace_t wt on wt.wt_key = wtt.wt_key ")
	List<AdminBean> getAdminQnAqList();
	
	//관리자 연수 페이지 리스트 출력
	@Select("select WT_Key, WT_Thumbnail, WT_Title " +
			"from workplace_T ")
	List<WTBean> getAdminWTBeanList();

	//관리자 연수 페이지 삭제
	@Delete("delete from workplace_t where WT_Key = #{WT_Key}")
	void deleteWT(String WT_Key);
	
	//관리자 QnA 상세 페이지
	@Select("select q.q_key, q.q_date, q.q_title, q.q_content, t.teacher_name, wt.wt_title " +
			"from qna_q q inner join WTT w on w.WTT_Key=q.WTT_Key " +
			"inner join workplace_T wt on w.WT_Key = wt.WT_Key " +
			"inner join teacher_info t on t.teacher_id=w. teacher_id and q.q_key=#{q_key}")
	AdminBean getAdminQnAQ(String q_key);
	
	//관리자 QnA 답변작성
	@Select("select a_content from qna_a where q_key=#{q_key}")
	String getAdminQnAA(String q_key);
	
	//관리자 QnA 답변등록
	@Insert("insert into qna_a values('ak' || TO_CHAR(ak_seqid.nextval),'#{q_key}',null,sysdate")
	void insertA(@Param("q_key")String q_key);
	
	//관리자 QnA 답변 업데이트
	@Update("update qna_a set a_content = #{a_content}" )
	String getUpdateA(String a_content);
	

	@Update("update qna_a set a_content=#{a_content} where q_key=#{q_key}")
	void updateA(@Param("a_content")String a_content, @Param("q_key")String q_key); 
	
	@Update("update qna_q set q_a_check=1 where q_key=#{q_key}")
	void updateQCheck(String q_key);
	
	@Select("select teacher_id, teacher_name, teacher_password, teacher_nickname, teacher_neis "
			+ "from teacher_info")
	List<AdminBean> getTInfoList();
	
	@Select("select event_key, event_thumbnail, event_title from event")
	List<EventBean> getAeventList();
	
	@Delete("delete from event where event_key=#{event_key}")
	void deleteEvent(String event_key);
}
