package kr.co.softsoldesk.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.co.softsoldesk.beans.TeacherBean;

public interface TeacherMapper {
	//로그인시 유저 정보 받기
	@Select("select teacher_id, Teacher_Name, Teacher_Birth, Teacher_Gender, " 
			+ "Teacher_Email, Teacher_Tel, Teacher_Nickname, "
			+ "Teacher_Work_In, Teacher_Type, Teacher_Neis, Teacher_Password "
			+ "from Teacher_Info where teacher_id = #{teacher_id} and Teacher_Password=#{teacher_Password}")
	TeacherBean getLoginTeacherInfo(TeacherBean teacherBean);
	
	//아이디 중복체크
	@Select("select teacher_name from teacher_info where teacher_id = #{teacher_id}")
	String checkTeacherIdExist(String teacher_id);
	
	@Insert("insert into teacher_info values(#{teacher_id}, #{teacher_Name}, #{teacher_Birth}, "
			+ "#{teacher_Gender}, #{teacher_Email}, #{teacher_Tel}, #{teacher_Password}, "
			+ "#{teacher_Nickname}, #{teacher_Work_In}, #{teacher_Type} , #{teacher_Neis})")
	void addTeacherInfo(TeacherBean sign_upTeacherBean);
	
	@Select("select Teacher_Name, Teacher_Birth, Teacher_Email, " 
			+ "Teacher_Gender, Teacher_id, Teacher_Nickname, "
			+ "Teacher_Work_In, Teacher_Type, Teacher_Neis "
			+ "from Teacher_info "
			+ "where Teacher_id = #{teacher_id}")
	TeacherBean getModifyTeacherinfo(String Teacher_id);
	
	
	@Update("update Teacher_Info " +
			"set Teacher_Email = #{teacher_Email}, " 
			+ "Teacher_Tel = #{teacher_Tel}, "
			+ "Teacher_Nickname = #{teacher_Nickname}, "
			+ "Teacher_Work_In = #{teacher_Work_In}, "
			+ "Teacher_Type = #{teacher_Type}, "
			+ "Teacher_Neis = #{teacher_Neis}"
			+ "where Teacher_Name = #{teacher_Name}")
	void modifyTeacherInfo(TeacherBean modifyTeacherBean);
	
}

