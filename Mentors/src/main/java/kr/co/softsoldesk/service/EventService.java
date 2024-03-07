package kr.co.softsoldesk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.softsoldesk.beans.EventBean;
import kr.co.softsoldesk.dao.EventDao;

@Service
public class EventService {
	
	@Autowired
	private EventDao eventDao;
	
	public List<EventBean> getConEventList(){
		return eventDao.getConEventList();
	}
	
	public List<EventBean> getEndEventList(){
		return eventDao.getEndEventList();
	}
	
	public EventBean getEventInfo(String event_key) {
		return eventDao.getEventInfo(event_key);
	}
	
	public int setDday(String event_key) {
		return eventDao.setDday(event_key);
	}

}
