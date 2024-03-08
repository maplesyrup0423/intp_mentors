package kr.co.softsoldesk.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.softsoldesk.beans.AdminBean;
import kr.co.softsoldesk.mapper.AdminMapper;

@Repository
public class AdminDao {
	
	@Autowired
	private AdminMapper adminMapper;
	
	public List<AdminBean> getAdminNotiList(){
		return adminMapper.getAdminNotiList();
	}
	
	public AdminBean getAdminNotiDetail(String noti_key) {
		return adminMapper.getAdminNotiDetail(noti_key);
	}
	
	public AdminBean getAdminNotiModify(String noti_key) {
		return adminMapper.getAdminNotiModify(noti_key);
	}
	
	public List<AdminBean> getAdminQnAqList(){
		return adminMapper.getAdminQnAqList();
	}

}
