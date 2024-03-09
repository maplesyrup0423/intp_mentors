package kr.co.softsoldesk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.softsoldesk.beans.NotificationBean;
import kr.co.softsoldesk.dao.NotificationDao;

@Service
public class NotificationService {
	
	@Autowired
	private NotificationDao notificationDao;
	
	/*public List<NotificationBean> getNotification() {
		List<NotificationBean> notification = notificationDao.getNotification();
		return notification;
	}*/
	
	/*public NotificationBean getNotificationInfo(int noti_key) {
		return notificationDao.getNotificationInfo(noti_key);
	}*/
	
	public void addNotificationInfo(NotificationBean notificationBean ) {
		notificationDao.addNotificationInfo(notificationBean);
	}
	
	public NotificationBean getNotificationdetail(int noti_key) {
		return notificationDao.getNotificationdetail(noti_key);
	}
	
	
	 //-----------------------------------------------------
	public List<NotificationBean> getNotiList(String wt_key){
		return notificationDao.getNotiList(wt_key);
	}
	public String getwtKey(String wtt_key) {
		return notificationDao.getwtKey(wtt_key);
	}
	

	public NotificationBean getNoti(String noti_key) {
		return notificationDao.getNoti(noti_key);
	}
}