package kr.co.softsoldesk.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import kr.co.softsoldesk.beans.WTT_Bean;

public interface WTT_Mapper {

	//WT_my_room 전체 정보
	@Select("select wtt.wtt_Key,wtt.WTT_Completion, wtt.wtt_payment_date, wt.wt_Title, wt.wt_TrainingTime, wt.wt_Tag_School, wt.wt_Tag_TypeCategory "
			+ "from workplace_t wt inner join wtt on wtt.WT_key=wt.WT_key")
	List<WTT_Bean> addMyRoomAll();
	
	//WT_my_room 정보 필터
	@Select("select wtt.wtt_Key,wtt.WTT_Completion, wtt.wtt_payment_date, wt.wt_Title, wt.wt_TrainingTime, wt.wt_Tag_School, wt.wt_Tag_TypeCategory "
			+ "from workplace_t wt inner join wtt on wtt.WT_key=wt.WT_key and wtt.WTT_Completion=#{WTT_Completion}")
	List<WTT_Bean> addMyRoomSelect(int WTT_Completion);
	
}
