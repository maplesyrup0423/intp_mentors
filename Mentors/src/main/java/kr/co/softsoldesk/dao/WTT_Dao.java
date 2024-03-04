package kr.co.softsoldesk.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.softsoldesk.beans.WTT_Bean;
import kr.co.softsoldesk.mapper.WTT_Mapper;

@Repository
public class WTT_Dao {

	@Autowired
	private WTT_Mapper wtt_Mapper;
	
	
	
	public List<WTT_Bean> addMyRoomAll(String teacher_id){
		return wtt_Mapper.addMyRoomAll(teacher_id);
	}
	
/*	public List<WTT_Bean> addMyRoomSelect(int WTT_Completion, String teacher_id){
		return wtt_Mapper.addMyRoomSelect(WTT_Completion, teacher_id);
	}*/
}
