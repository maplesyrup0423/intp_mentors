package kr.co.softsoldesk.service;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

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
		String teacher_ID = teacherDao.checkTeacherIdExist(teacher_id);
		
		if(teacher_id.equals("system1004")) {
			return false; //입력된 값이 관리자아이디라면 사용할 수 없는 아이디
		}
		
		Pattern pattern = Pattern.compile("[ㄱ-ㅎㅏ-ㅣ가-힣]");
        Matcher matcher = pattern.matcher(teacher_id);
        
        if(matcher.find()) {
        	return false;
        }
		
		if(teacher_ID==null) {
			return true; //디비에 없다=사용가능한 아이디 
		}
		else{
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
			System.out.println("log 01 : "+loginTeacherBean.getTeacher_Tel());
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
		//TeacherBean tempModifyUserBean = teacherDao.getModifyTeacherinfo(loginTeacherBean.getTeacher_id());
		
		modifyTeacherBean.setTeacher_id(loginTeacherBean.getTeacher_id());
		modifyTeacherBean.setTeacher_Name(loginTeacherBean.getTeacher_Name());
		modifyTeacherBean.setTeacher_Birth(loginTeacherBean.getTeacher_Birth());
		modifyTeacherBean.setTeacher_Email(loginTeacherBean.getTeacher_Email());
		modifyTeacherBean.setTeacher_Tel(loginTeacherBean.getTeacher_Tel());
		modifyTeacherBean.setTeacher_Nickname(loginTeacherBean.getTeacher_Nickname());
		modifyTeacherBean.setTeacher_Gender(loginTeacherBean.getTeacher_Gender());
		modifyTeacherBean.setTeacher_Work_In(loginTeacherBean.getTeacher_Work_In());
		modifyTeacherBean.setTeacher_Type(loginTeacherBean.getTeacher_Type());
		modifyTeacherBean.setTeacher_Neis(loginTeacherBean.getTeacher_Neis());
	}
	
	public void modifyTeacherInfo(TeacherBean modifyTeacherBean) {
		modifyTeacherBean.setTeacher_id(loginTeacherBean.getTeacher_id());
		teacherDao.modifyTeacherInfo(modifyTeacherBean);
		
		//TeacherBean tempModifyTeacherBean = teacherDao.getModifyTeacherinfo(loginTeacherBean.getTeacher_id());
		loginTeacherBean.setTeacher_Name(modifyTeacherBean.getTeacher_Name());
		loginTeacherBean.setTeacher_Email(modifyTeacherBean.getTeacher_Email());
		loginTeacherBean.setTeacher_Tel(modifyTeacherBean.getTeacher_Tel());
		loginTeacherBean.setTeacher_Nickname(modifyTeacherBean.getTeacher_Nickname());
		loginTeacherBean.setTeacher_Work_In(modifyTeacherBean.getTeacher_Work_In());
		loginTeacherBean.setTeacher_Type(modifyTeacherBean.getTeacher_Type());
		loginTeacherBean.setTeacher_Neis(modifyTeacherBean.getTeacher_Neis());
	}
	
	public String getTeacherId(String teacher_name, String teacher_tel) {
		return teacherDao.getTeacherId(teacher_name, teacher_tel);
	}
	
	public String getTeacherPw(String teacher_id, String teacher_name, String teacher_tel) {
		return teacherDao.getTeacherPw(teacher_id, teacher_name, teacher_tel);
	}
	
	public void deleteAccount(TeacherBean deleteBean) {	
		teacherDao.deleteAccount(deleteBean);
		loginTeacherBean.setTeacherLogin(false);
	}
	
	public void changeTeacherPw(TeacherBean changePwBean) {
		changePwBean.setTeacher_id(loginTeacherBean.getTeacher_id());
		teacherDao.changeTeacherPw(changePwBean);
	}
}
