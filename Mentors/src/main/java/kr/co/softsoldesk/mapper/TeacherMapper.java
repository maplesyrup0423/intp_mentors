package kr.co.softsoldesk.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.co.softsoldesk.beans.TeacherBean;
import kr.co.softsoldesk.beans.WTT_Bean;

public interface TeacherMapper {
	//로그인시 유저 정보 받기
	@Select("select teacher_id, Teacher_Name, Teacher_Birth, Teacher_Gender, " 
			+ "Teacher_Email, Teacher_Tel, Teacher_Nickname, "
			+ "Teacher_Work_In, Teacher_Type, Teacher_Neis, Teacher_Password "
			+ "from Teacher_Info where teacher_id = #{teacher_id} and Teacher_Password=#{teacher_Password}")
	TeacherBean getLoginTeacherInfo(TeacherBean teacherBean);

	//아이디 중복체크
	@Select("select teacher_id from teacher_info where teacher_id = #{teacher_id}")
	String checkTeacherIdExist(String teacher_id);
	
	@Insert("insert into teacher_info values(#{teacher_id}, #{teacher_Name}, #{teacher_Birth}, "
			+ "#{teacher_Gender}, #{teacher_Email}, #{teacher_Tel}, #{teacher_Password}, "
			+ "#{teacher_Nickname}, #{teacher_Work_In}, #{teacher_Type} , #{teacher_Neis})")
	void addTeacherInfo(TeacherBean sign_upTeacherBean);
	
	/*@Select("select Teacher_Name, Teacher_Birth, Teacher_Email, " 
			+ "Teacher_Gender, Teacher_id, Teacher_Nickname, "
			+ "Teacher_Work_In, Teacher_Type, Teacher_Neis "
			+ "from Teacher_info "
			+ "where Teacher_id = #{teacher_id}")
	TeacherBean getModifyTeacherinfo(String Teacher_id);*/
	
	@Update("update Teacher_Info " +
			"set Teacher_Email = #{teacher_Email}, " 
			+ "Teacher_Tel = #{teacher_Tel}, "
			+ "Teacher_Nickname = #{teacher_Nickname}, "
			+ "Teacher_Work_In = #{teacher_Work_In}, "
			+ "Teacher_Type = #{teacher_Type}, "
			+ "Teacher_Neis = #{teacher_Neis}"
			+ "where Teacher_id = #{teacher_id}")
	void modifyTeacherInfo(TeacherBean modifyTeacherBean);
	
	@Select("select teacher_id " 
			+ "from teacher_info "
			+ "where teacher_name=#{param1} and "
			+ "teacher_tel=#{param2}")
	String getTeacherId(String param1, String param2);
	
	@Select("select teacher_password "
			+ "from teacher_info "
			+ "where teacher_id = #{param1} and teacher_name = #{param2} and teacher_tel = #{param3}")
	String getTeacherPw(String param1, String param2, String param3);
	
	@Delete("delete from teacher_info "
			+ "where teacher_password = #{teacher_Password}")
	void deleteAccount(TeacherBean deleteBean);
	
	@Update("update teacher_info "
			+ "set teacher_password = #{new_Password} "
			+ "where teacher_id = #{teacher_id}")
	void changeTeacherPw(TeacherBean changePwBean);
	
	/*
	 @Select("SELECT wt.WT_title, wt_price, "
	 		+ "       TO_CHAR(w.wtt_payment_date, 'YYYY-MM-DD') AS wtt_payment_date "
	 		+ "FROM workplace_T wt "
	 		+ "INNER JOIN WTT w ON wt.wt_key = w.wt_key "
	 		+ "WHERE w.teacher_id = #{teacher_id}") 
	 List<WTT_Bean> getPayment(String teacher_id);
	*/
	
	 @Select("SELECT wt.WT_title, "
	 		+ "TO_CHAR(wt.WT_price, 'FM999,999,999') || '원' AS WT_price, "
	 		+ "TO_CHAR(w.wtt_payment_date, 'YYYY-MM-DD') AS wtt_payment_date "
	 		+ "FROM workplace_T wt "
	 		+ "INNER JOIN WTT w ON wt.wt_key = w.wt_key "
	 		+ "WHERE w.teacher_id = #{teacher_id}") 
		 List<WTT_Bean> getPayment(String teacher_id);
	 
}

