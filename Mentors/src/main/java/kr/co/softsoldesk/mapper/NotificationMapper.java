package kr.co.softsoldesk.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import kr.co.softsoldesk.beans.NotificationBean;

public interface NotificationMapper {
	
	 // 모든 알림 가져오기
    /*@Select("SELECT noti_key, WT_Key, Title, noti_content, noti_date FROM Notification")
    List<NotificationBean> getNotification();*/
	
	
	
	
    /*@Select("select noti_key, WT_Key, noti_Title, noti_content, noti_date from Notification where noti_key = #{noti_key}")
	NotificationBean getNotificationInfo(int noti_key);*/
    
    //관리자에 필요한거
    @Insert("INSERT INTO notification (noti_key, wt_key, noti_Title, noti_content, noti_date) "
    		+ "VALUES(NOTI_SEQ.nextval, #{WT_Key}, #{Title}, #{noti_content}, sysdate)")
    void addNotificationInfo(NotificationBean notificationBean);
    
    @Select("select noti_Title, noti_content from Notification where noti_key =#{noti_key}")
    NotificationBean getNotificationdetail(int noti_key);
    
    
    //-----------------------------------------------------
    @Select("SELECT noti_key, WT_Key, noti_Title, noti_content, noti_date FROM Notification where wt_key=#{wt_key}")
	List<NotificationBean> getNotiList(String wt_key);
    
    @Select("select WT_Key from wtt where wtt_key=#{wtt_key}")
    String getwtKey(String wtt_key);
    
    @Select("SELECT noti_key, WT_Key, noti_Title, noti_content, noti_date FROM Notification where noti_key=#{noti_key}")
  	NotificationBean getNoti(String noti_key);
    
}
