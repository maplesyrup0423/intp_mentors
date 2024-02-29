package kr.co.softsoldesk.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import kr.co.softsoldesk.beans.TeacherBean;

public interface TeacherMapper {
	//로그인시 유저 정보 받기
	@Select("select  teacher_name,teacher_birth,teacher_gender,teacher_email,teacher_tel,teacher_nickname,teacher_work_in,teacher_type,teacher_neis\r\n"
			+ "from teacher_info where teacher_id = #{teacher_id} and teacher_password=#{teacher_password}")
	TeacherBean getLoginTeacherInfo(TeacherBean teacherBean);
	
	//아이디 중복체크
	@Select("select teacher_name from teacher_info where teacher_id = #{teacher_id}")
	String checkTeacherIdExist(String teacher_id);
	
	
}

