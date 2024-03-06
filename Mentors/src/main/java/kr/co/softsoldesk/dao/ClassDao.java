package kr.co.softsoldesk.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.softsoldesk.beans.ClassBean;
import kr.co.softsoldesk.beans.WTBean;
import kr.co.softsoldesk.beans.WTT_Bean;
import kr.co.softsoldesk.mapper.ClassMapper;

@Repository
public class ClassDao {
	
	@Autowired
	private ClassMapper classMapper;
	
	public void updateAnswer(ClassBean cBean) {
		System.out.println("DAO성공");
		classMapper.updateAnswer(cBean);
		
		System.out.println("dao");
	}
	
	public ClassBean getQ(String wtt_Key) {
		return classMapper.getQ(wtt_Key);
	}
	
	public void updateScore(int WTT_test_result, String wtt_Key) {
		classMapper.updateScore(WTT_test_result, wtt_Key);
	}
	
	public WTT_Bean getWtInfo(String wtt_Key) {
		return classMapper.getWtInfo(wtt_Key);
	}

}
