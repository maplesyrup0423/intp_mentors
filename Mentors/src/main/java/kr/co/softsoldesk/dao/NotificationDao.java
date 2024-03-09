package kr.co.softsoldesk.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.softsoldesk.beans.NotificationBean;
import kr.co.softsoldesk.mapper.NotificationMapper;

@Repository
public class NotificationDao {
	
	@Autowired
	private NotificationMapper notificationMapper;
	
	/*public List<NotificationBean> getNotification() {
		return notificationMapper.getNotification();
	}*/
	
	public NotificationBean getNotificationInfo(int noti_key) {
		return notificationMapper.getNotificationInfo(noti_key);
	}
	public void addNotificationInfo(NotificationBean notificationBean) {
		notificationMapper.addNotificationInfo(notificationBean);
	}
	
	public NotificationBean getNotificationdetail(int noti_key) {
		return notificationMapper.getNotificationdetail(noti_key);
	}
	
	
	//---------------------------------------------------------
	public List<NotificationBean> getNotiList(String wt_key){
		return notificationMapper.getNotiList(wt_key);
	}
	
	public String getwtKey(String wtt_key) {
		return notificationMapper.getwtKey(wtt_key);
	}
}