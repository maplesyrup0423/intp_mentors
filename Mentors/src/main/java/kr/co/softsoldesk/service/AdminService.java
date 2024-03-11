package kr.co.softsoldesk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.softsoldesk.beans.AdminBean;
import kr.co.softsoldesk.beans.WTBean;
import kr.co.softsoldesk.dao.AdminDao;

@Service
public class AdminService {
	
	@Autowired
	private AdminDao adminDao;
	
	public List<AdminBean> getAdminNotiList(){
		return adminDao.getAdminNotiList();
	}
	
	public AdminBean getAdminNotiDetail(String noti_key) {
		return adminDao.getAdminNotiDetail(noti_key);
	}
	
	public AdminBean getAdminNotiModify(String noti_key) {
		return adminDao.getAdminNotiModify(noti_key);
	}
	
	public List<AdminBean> getAdminQnAqList(){
		return adminDao.getAdminQnAqList();
	}
	
	public List<WTBean> getAdminWTBeanList() {
		return adminDao.getAdminWTBeanList();
	}
	
	public void deleteWT(String WT_Key) {
		adminDao.deleteWT(WT_Key);
	}
	
	public AdminBean getAdminQnAQ(String q_key) {
		return adminDao.getAdminQnAQ(q_key);
	}
	
	public String getAdminQnAA(String q_key) {
		return adminDao.getAdminQnAA(q_key);
	}
	
	public void insertA(String q_key) {
		adminDao.insertA(q_key);
	}

}
