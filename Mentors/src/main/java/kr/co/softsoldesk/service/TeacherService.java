package kr.co.softsoldesk.service;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.softsoldesk.beans.TeacherBean;
import kr.co.softsoldesk.dao.TeacherDao;

@Service
public class TeacherService {
	

	@Autowired
	private TeacherDao teacherDao;


	@Resource(name = "loginTeacherBean")
	private TeacherBean loginTeacherBean;
	
	public boolean checkTeacherIdExist(String teacher_id) {
		String teacher_name= teacherDao.checkTeacherIdExist(teacher_id);
		
		if(teacher_name==null) {
			return true; //디비에 없다=사용가능한 아이디 
		}else {
			return false; //디비에 있다=사용 할 수 없는 아이디
		}
	}
	
	public void addTeacherInfo(TeacherBean sign_upteacherbean) {
		teacherDao.addTeacherInfo(sign_upteacherbean);
	}
	
	public void getLoginTeacherInfo(TeacherBean teacherBean) {
		TeacherBean tempTeacherBean = teacherDao.getLoginTeacherInfo(teacherBean);
		if(tempTeacherBean!=null) {
			loginTeacherBean.setTeacher_Name(tempTeacherBean.getTeacher_Name());
			loginTeacherBean.setTeacher_Birth(tempTeacherBean.getTeacher_Birth());
			loginTeacherBean.setTeacher_Gender(tempTeacherBean.getTeacher_Gender());
			loginTeacherBean.setTeacher_Email(tempTeacherBean.getTeacher_Email());
			loginTeacherBean.setTeacher_Tel(tempTeacherBean.getTeacher_Tel());
			loginTeacherBean.setTeacher_Nickname(tempTeacherBean.getTeacher_Nickname());
			loginTeacherBean.setTeacher_Work_In(tempTeacherBean.getTeacher_Work_In());
			loginTeacherBean.setTeacher_Type(tempTeacherBean.getTeacher_Type());
			loginTeacherBean.setTeacher_Neis(tempTeacherBean.getTeacher_Neis());
			loginTeacherBean.setTeacher_id(tempTeacherBean.getTeacher_id());
			loginTeacherBean.setTeacher_Password(tempTeacherBean.getTeacher_Password());
			loginTeacherBean.setTeacherLogin(true);
			System.out.println(tempTeacherBean.getTeacher_Password());
			System.out.println(loginTeacherBean.getTeacher_Password());
			System.out.println("로그인 상태값"+loginTeacherBean.isTeacherLogin());
		}
	}

	public void getModifyTeacherinfo(TeacherBean modifyTeacherBean) {
		TeacherBean tempModifyUserBean = teacherDao.getModifyTeacherinfo(loginTeacherBean.getTeacher_id());
		
		modifyTeacherBean.setTeacher_id(loginTeacherBean.getTeacher_id());
		modifyTeacherBean.setTeacher_Name(tempModifyUserBean.getTeacher_Name());
		modifyTeacherBean.setTeacher_Birth(tempModifyUserBean.getTeacher_Birth());
		modifyTeacherBean.setTeacher_Email(tempModifyUserBean.getTeacher_Email());
		modifyTeacherBean.setTeacher_Tel(tempModifyUserBean.getTeacher_Tel());
		modifyTeacherBean.setTeacher_Nickname(tempModifyUserBean.getTeacher_Nickname());
		modifyTeacherBean.setTeacher_Gender(tempModifyUserBean.getTeacher_Gender());
		modifyTeacherBean.setTeacher_Work_In(tempModifyUserBean.getTeacher_Work_In());
		modifyTeacherBean.setTeacher_Type(tempModifyUserBean.getTeacher_Type());
		modifyTeacherBean.setTeacher_Neis(tempModifyUserBean.getTeacher_Neis());
	}
	
	public void modifyTeacherInfo(TeacherBean modifyTeacherBean) {
		modifyTeacherBean.setTeacher_id(loginTeacherBean.getTeacher_id());
		teacherDao.modifyTeacherInfo(modifyTeacherBean);
		
		TeacherBean tempModifyTeacherBean = teacherDao.getModifyTeacherinfo(loginTeacherBean.getTeacher_id());
		loginTeacherBean.setTeacher_Name(tempModifyTeacherBean.getTeacher_Name());
		loginTeacherBean.setTeacher_Email(tempModifyTeacherBean.getTeacher_Email());
		loginTeacherBean.setTeacher_Tel(tempModifyTeacherBean.getTeacher_Tel());
		loginTeacherBean.setTeacher_Nickname(tempModifyTeacherBean.getTeacher_Nickname());
		loginTeacherBean.setTeacher_Work_In(tempModifyTeacherBean.getTeacher_Work_In());
		loginTeacherBean.setTeacher_Type(tempModifyTeacherBean.getTeacher_Type());
		loginTeacherBean.setTeacher_Neis(tempModifyTeacherBean.getTeacher_Neis());
	}
	
}
