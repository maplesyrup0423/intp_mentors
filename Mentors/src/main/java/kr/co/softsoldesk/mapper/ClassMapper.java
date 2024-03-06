package kr.co.softsoldesk.mapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;

import kr.co.softsoldesk.beans.ClassBean;

public interface ClassMapper {
	
	@Update("update wtt_test_a set teat_a1 =#{teat_a1},teat_a2=#{teat_a2},teat_a3=#{teat_a3},teat_a4=#{teat_a4},teat_a5=#{teat_a1},teat_a6=#{teat_a6},teat_a7=#{teat_a7},teat_a8=#{teat_a8},teat_a9=#{teat_a9},teat_a10=#{teat_a10}, test_aa=3 where wtt_Key=#{wtt_Key}")
	void updateAnswer(ClassBean cBean);
	

}
