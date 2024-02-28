package kr.co.softsoldesk.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import kr.co.softsoldesk.beans.TestBean;

@Component
public interface TestMapper {

	@Select("select teacher_name,teacher_gender from teacher_info where teacher_id=#{teacher_id}")
	TestBean getTInfo(String teacher_id);
}
