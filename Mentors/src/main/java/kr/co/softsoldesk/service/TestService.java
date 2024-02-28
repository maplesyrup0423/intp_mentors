package kr.co.softsoldesk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.softsoldesk.beans.TestBean;
import kr.co.softsoldesk.dao.TestDao;

@Service
public class TestService {
	@Autowired
	TestDao testDao;
	
	public TestBean getTInfo(String teacher_id){
		return testDao.getTInfo(teacher_id);
	}

}
