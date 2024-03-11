package kr.co.softsoldesk.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import kr.co.softsoldesk.beans.TeacherBean;


public class TeacherValidator implements Validator{
	
	@Override
	public boolean supports(Class<?> clazz) {
		return TeacherBean.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		
		TeacherBean teacherBean  = (TeacherBean)target;
		
		String beanName=errors.getObjectName();
		//System.out.println(beanName);
		System.out.println(beanName);
		
		
		//회원가입 및 비밀번호 변경 할 때 비밀번호 확인 또는 수정할 때
		if(beanName.equals("Sign_upTeacherBean")) {
		if(teacherBean.getTeacher_Password().equals(teacherBean.getTeacher_Password2()) == false) {
			errors.rejectValue("teacher_Password", "NotEquals");
			errors.rejectValue("teacher_Password2", "NotEquals");
		}
		
		//회원가입 할 때
		if(beanName.equals("Sign_upTeacherBean")) {
			
			//디비에 있다=사용 할 수 없는 아이디
			if(teacherBean.isTeacherIdExist() == false) {
				errors.rejectValue("teacher_id", "DontCheckteacherIdExist");
			}
		}
		
	}
	}	
	
}
