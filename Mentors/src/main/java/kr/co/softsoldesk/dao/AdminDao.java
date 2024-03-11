package kr.co.softsoldesk.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.softsoldesk.beans.AdminBean;
import kr.co.softsoldesk.beans.EventBean;
import kr.co.softsoldesk.beans.WTBean;
import kr.co.softsoldesk.mapper.AdminMapper;

@Repository
public class AdminDao {

	@Autowired
	private AdminMapper adminMapper;

	public List<AdminBean> getAdminNotiList() {
		return adminMapper.getAdminNotiList();
	}

	public AdminBean getAdminNotiDetail(String noti_key) {
		return adminMapper.getAdminNotiDetail(noti_key);
	}

	public AdminBean getAdminNotiModify(String noti_key) {
		return adminMapper.getAdminNotiModify(noti_key);
	}

	public List<AdminBean> getAdminQnAqList() {
		return adminMapper.getAdminQnAqList();
	}

	public List<WTBean> getAdminWTBeanList() {
		return adminMapper.getAdminWTBeanList();
	}

	public void deleteWT(String WT_Key) {
		adminMapper.deleteWT(WT_Key);
	}

	public AdminBean getAdminQnAQ(String q_key) {
		return adminMapper.getAdminQnAQ(q_key);
	}

	public String getAdminQnAA(String q_key) {
		return adminMapper.getAdminQnAA(q_key);
	}

	public void insertA(String q_key) {
		adminMapper.insertA(q_key);
	}

	public void updateA(String a_content, String q_key) {
		adminMapper.updateA(a_content, q_key);
	}
	
	public void updateQCheck(String q_key) {
		adminMapper.updateQCheck(q_key);
	}
	public List<AdminBean> getTInfoList(){
		return adminMapper.getTInfoList();
	}
	
	public List<EventBean> getAeventList(){
		return adminMapper.getAeventList();
	}
	
	public void deleteEvent(String event_key) {
		adminMapper.deleteEvent(event_key);
	}
}
