package kr.co.softsoldesk.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import kr.co.softsoldesk.beans.WTBean;

public interface WTMapper {

	// 연수 리스트에서 사용할 정보 받아오기
	@Select("select WT_Key, WT_Title, WT_Thumbnail, WT_Price from workplace_T")
	List<WTBean> getWTList();	
	

	// 연수 상세페이지에 사용할 정보 받아오기
	@Select("select WT_Key, WT_Title,WT_Price,WT_TrainingTime,WT_Tag_School,WT_Tag_TypeCategory,WT_Thumbnail,"
			+ "    WT_Info, WT_Text from workplace_T where WT_Key=#{WT_Key}")
	WTBean getWTInfo(String WT_Key);
	
	
	//--------------------------------------------------------------------------------------------------------------

	// 학급 태그만 선택 되었을 때
	@Select("select WT_Key, WT_Title, WT_Thumbnail, WT_Price from workplace_T where wt_Tag_School = #{wt_Tag_School}")
	List<WTBean> getSchool(int wt_Tag_School);

	// 시간 태그만 선택 되었을 때
	@Select("select WT_Key, WT_Title, WT_Thumbnail, WT_Price from workplace_T where wt_Tag_Time = #{wt_Tag_Time}")
	List<WTBean> getTime(int wt_Tag_Time);

	// 분류 태그만 선택 되었을 때
	@Select("select WT_Key, WT_Title, WT_Thumbnail, WT_Price from workplace_T where wt_Tag_TypeCategory = #{wt_Tag_TypeCategory}")
	List<WTBean> getCategory(int wt_Tag_TypeCategory);

	// 학교, 시간 태그만 선택 되었을 때
	@Select("select WT_Key, WT_Title, WT_Thumbnail, WT_Price from workplace_T where wt_Tag_School = #{param1} and wt_Tag_Time = #{param2}")
	List<WTBean> getSchoolNTime(int param1, int param2);

	// 학교, 분류 태그만 선택 되었을 때
	@Select("select WT_Key, WT_Title, WT_Thumbnail, WT_Price from workplace_T where wt_Tag_School = #{param1} and wt_Tag_TypeCategory = #{param2}")
	List<WTBean> getSchoolNCategory(int param1, int param2);

	// 시간, 분류 태그만 선택 되었을 때
	@Select("select WT_Key, WT_Title, WT_Thumbnail, WT_Price from workplace_T where wt_Tag_Time = #{param1} and wt_Tag_TypeCategory = #{param2}")
	List<WTBean> getTimeNCategory(int param1, int param2);
	
	//전부 선택 되었을 때
	@Select("select WT_Key, WT_Title, WT_Thumbnail, WT_Price from workplace_T where wt_Tag_School = #{param1} and wt_Tag_Time = #{param2} and wt_Tag_TypeCategory = #{param3}")
	List<WTBean> getAllTag(int param1, int param2, int param3);
}
