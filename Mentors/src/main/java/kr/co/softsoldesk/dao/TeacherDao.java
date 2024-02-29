package kr.co.softsoldesk.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.softsoldesk.beans.TeacherBean;
import kr.co.softsoldesk.mapper.TeacherMapper;

@Repository
public class TeacherDao {

	@Autowired
	private TeacherMapper teachermapper;
	
	public TeacherBean getLoginTeacherInfo(TeacherBean teacherBean) {
		return teachermapper.getLoginTeacherInfo(teacherBean);
	}
	
}
