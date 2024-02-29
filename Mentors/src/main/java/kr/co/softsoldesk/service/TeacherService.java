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
			loginTeacherBean.setTeacherLogin(true);
		}
	}
	
}
