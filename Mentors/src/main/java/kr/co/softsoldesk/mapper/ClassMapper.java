package kr.co.softsoldesk.mapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.co.softsoldesk.beans.ClassBean;
import kr.co.softsoldesk.beans.WTBean;
import kr.co.softsoldesk.beans.WTT_Bean;

public interface ClassMapper {
	
	@Update("update wtt_test_a set teat_a1 =#{teat_a1},teat_a2=#{teat_a2},teat_a3=#{teat_a3},teat_a4=#{teat_a4},teat_a5=#{teat_a1},teat_a6=#{teat_a6},teat_a7=#{teat_a7},teat_a8=#{teat_a8},teat_a9=#{teat_a9},teat_a10=#{teat_a10}, test_aa=3 where wtt_Key=#{wtt_Key}")
	void updateAnswer(ClassBean cBean);
	
	@Select("select teat_q1, teat_q2, teat_q3, teat_q4, teat_q5, teat_q6, teat_q7, teat_q8, teat_q9, teat_q10 from wt_test_q q inner join WTT w on w.WT_Key = q.WT_Key where w.WTT_key = #{wtt_Key}")
	ClassBean getQ(String wtt_Key);
	
	@Update("update wtt set WTT_test_result=#{param1} where WTT_key = #{param2}")
	void updateScore(int param1, String param2);
	
	@Select("select WT_Title, WT_TrainingTime, WT_Video, wtt.WTT_viewing_time from workplace_T wt inner join WTT wtt on wt.WT_Key = wtt.WT_Key where wtt.wtt_Key = #{wtt_Key}")
	WTT_Bean getWtInfo(String wtt_Key);
	
	@Update("update wtt set WTT_viewing_time=#{param1} where wtt_Key = #{param2}")
	void updateViewTime(int param1, String param2);
	
	@Select("select wtt_Completion from wtt where wtt_key = #{wtt_key}")
	String getWttCompletion(String wtt_key);
	
	@Update("update wtt set wtt_Completion=#{param1} where wtt_key = #{param2}")
	void updateWttCompletion(String param1, String param2);
	
	@Update("update wtt_test_a set test_aa=#{param1} where where wtt_key = #{param2}")
	void updateTestAA(int param1, String param2);
	

}
