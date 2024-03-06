package kr.co.softsoldesk.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import kr.co.softsoldesk.beans.WTT_Bean;

public interface WTT_Mapper {

	//WT_my_room 전체 정보
	@Select("select wtt.wtt_Key,wtt.WTT_Completion, wtt.wtt_payment_date, wt.wt_Title, wt.wt_TrainingTime, wt.wt_Tag_School, wt.wt_Tag_TypeCategory "
			+ "from workplace_t wt inner join wtt on wtt.WT_key=wt.WT_key inner join teacher_info t on wtt.teacher_id = t.teacher_id and wtt.teacher_id=#{teacher_id}")
	List<WTT_Bean> addMyRoomAll(String teacher_id);
	
	//WT_my_room 정보 필터
	@Select("select wtt.wtt_Key,wtt.WTT_Completion, wtt.wtt_payment_date, wt.wt_Title, wt.wt_TrainingTime, wt.wt_Tag_School, wt.wt_Tag_TypeCategory "
			+ "from workplace_t wt inner join wtt on wtt.WT_key=wt.WT_key and wtt.WTT_Completion=#{WTT_Completion} inner join teacher_info t on wtt.teacher_id = t.teacher_id and wtt.teacher_id=#{teacher_id}")
	List<WTT_Bean> addMyRoomSelect(@Param("WTT_Completion") int WTT_Completion, @Param("teacher_id")String teacher_id);
	
	
	//class 정보
	@Select("select wtt.wtt_Key,wtt.wt_Key,wtt.WTT_Completion, wtt.wtt_payment_date, wt.wt_Title, wt.wt_TrainingTime, wt.wt_Tag_School, wt.wt_Tag_TypeCategory,wtt.WTT_viewing_time, wtt.WTT_test_result "
			+ "from workplace_t wt inner join wtt on wtt.WT_key=wt.WT_key and wtt.wtt_Key=#{wtt_Key}")
	WTT_Bean getWTT_Bean(String wtt_Key);
}
