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
	
	public void addTeacherInfo(TeacherBean sign_upteacherbean) {
		teachermapper.addTeacherInfo(sign_upteacherbean);
	}
	
	public String checkTeacherIdExist(String teacher_id) {
		return teachermapper.checkTeacherIdExist(teacher_id);
	}
	
	/*public TeacherBean getModifyTeacherinfo(String Teacher_id) {
		return teachermapper.getModifyTeacherinfo(Teacher_id);
	}*/
	
	public void modifyTeacherInfo(TeacherBean modifyTeacherBean) {
		teachermapper.modifyTeacherInfo(modifyTeacherBean);
	}
}
