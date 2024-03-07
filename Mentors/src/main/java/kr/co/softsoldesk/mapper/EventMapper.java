package kr.co.softsoldesk.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import kr.co.softsoldesk.beans.EventBean;

public interface EventMapper {
	
	@Select("select event_key, event_thumbnail, event_s_date, event_e_date, event_title from event where sysdate <= event_e_date")
	List<EventBean> getConEventList();
	
	@Select("select event_key, event_thumbnail, event_s_date, event_e_date, event_title from event where sysdate > event_e_date")
	List<EventBean> getEndEventList();
	
	@Select("select event_thumbnail, event_content_img, event_s_date, event_e_date, event_title, event_text from event where event_key = #{event_key}")
	EventBean getEventInfo(String event_key);
	
	@Select("SELECT event_e_date - sysdate FROM event where event_key=#{event_key}")
	int setDday(String event_key);

}
