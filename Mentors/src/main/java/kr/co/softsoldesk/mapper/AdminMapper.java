package kr.co.softsoldesk.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import kr.co.softsoldesk.beans.AdminBean;

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
	@Select("select q_key, q_title, q_date, wt_title, t.teacher_id " +
			"from qna_q q " +
			"inner join WTT wtt on wtt.wtt_key = q.wtt_key " +
			"inner join teacher_info t on t.teacher_id = wtt.teacher_id " +
			"inner join workplace_t wt on wt.wt_key = wtt.wt_key ")
	List<AdminBean> getAdminQnAqList();

}
