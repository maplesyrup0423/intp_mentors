package kr.co.softsoldesk.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.softsoldesk.beans.ClassBean;
import kr.co.softsoldesk.beans.WTBean;
import kr.co.softsoldesk.beans.WTT_Bean;
import kr.co.softsoldesk.dao.ClassDao;

@Service
public class ClassService {
	
	@Autowired
	private ClassDao classDao;
	
	public void updateAnswer(ClassBean cBean) {
		System.out.println("서비스 됨");
		classDao.updateAnswer(cBean);
		System.out.println("service");
		
	}
	
	public ClassBean getQ(String wtt_Key) {
		return classDao.getQ(wtt_Key);
	}
	
	public void updateScore(int WTT_test_result,String wtt_Key) {
		classDao.updateScore(WTT_test_result, wtt_Key);
	}
	
	public WTT_Bean getWtInfo(String wtt_Key) {
		return classDao.getWtInfo(wtt_Key);
	}
	
	public void updateViewTime(int wtt_viewing_time, String wtt_Key) {
		classDao.updateViewTime(wtt_viewing_time, wtt_Key);
	}
	
	public String getWttCompletion(String wtt_key) {
		return classDao.getWttCompletion(wtt_key);
	}
	
	public void updateTestAA(int test_aa, String wtt_key) {
		classDao.updateTestAA(test_aa, wtt_key);
	}
	
	public void updateWttCompletion(int wtt_Completion, String wtt_key) {
		classDao.updateWttCompletion(wtt_Completion, wtt_key);
	}

}
