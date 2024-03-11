package kr.co.softsoldesk.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.softsoldesk.beans.TeacherBean;
import kr.co.softsoldesk.beans.WTT_Bean;
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
	
	public String getTeacherId(String teacher_name, String teacher_tel) {
		return teachermapper.getTeacherId(teacher_name, teacher_tel);
	}
	
	public String getTeacherPw(String teacher_id, String teacher_name, String teacher_tel) {
		return teachermapper.getTeacherPw(teacher_id, teacher_name, teacher_tel);
	}
	
	public void deleteAccount(TeacherBean deleteBean) {
		teachermapper.deleteAccount(deleteBean);
	}
	
	public void changeTeacherPw(TeacherBean changePwBean) {
		teachermapper.changeTeacherPw(changePwBean);
	}
	
	public List<WTT_Bean> getPayment(String teacher_id) {
		return teachermapper.getPayment(teacher_id);
	}
}
