package kr.co.softsoldesk.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.softsoldesk.beans.TestBean;
import kr.co.softsoldesk.mapper.TestMapper;

@Repository
public class TestDao {
	@Autowired
	TestMapper testMapper;

	public TestBean getTInfo(String teacher_id){
		return testMapper.getTInfo(teacher_id);
	}
}
