package kr.co.softsoldesk.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.softsoldesk.beans.EventBean;
import kr.co.softsoldesk.mapper.EventMapper;

@Repository
public class EventDao {
	
	@Autowired
	private EventMapper eventMapper;
	
	public List<EventBean> getConEventList(){
		return eventMapper.getConEventList();
	}
	
	public List<EventBean> getEndEventList(){
		return eventMapper.getEndEventList();
	}
	
	public EventBean getEventInfo(String event_key) {
		return eventMapper.getEventInfo(event_key);
	}
	
	public int setDday() {
		return eventMapper.setDday();
	}

}
