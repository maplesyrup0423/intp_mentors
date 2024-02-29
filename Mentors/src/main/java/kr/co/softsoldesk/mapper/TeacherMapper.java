package kr.co.softsoldesk.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import kr.co.softsoldesk.beans.TeacherBean;

public interface TeacherMapper {
	@Select("select  teacher_name,teacher_birth,teacher_gender,teacher_email,teacher_tel,teacher_nickname,teacher_work_in,teacher_type,teacher_neis\r\n"
			+ "from teacher_info where teacher_id = #{teacher_id} and teacher_password=#{teacher_password}")
	TeacherBean getLoginTeacherInfo(TeacherBean teacherBean);
	
}

