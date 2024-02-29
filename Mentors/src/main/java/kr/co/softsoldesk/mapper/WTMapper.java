package kr.co.softsoldesk.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import kr.co.softsoldesk.beans.WTBean;


public interface WTMapper {

	//연수 리스트에서 사용할 정보 받아오기
	@Select("select WT_Key, WT_Title, WT_Thumbnail, WT_Price from workplace_T")
	List<WTBean> getWTList();
	
	//연수 상세페이지에 사용할 정보 받아오기
	@Select("select WT_Title,WT_Price,WT_TrainingTime,WT_Tag_School,WT_Tag_TypeCategory,WT_Thumbnail,\r\n"
			+ "    WT_Info, WT_Text from workplace_T where WT_Key=#{WT_Key}")
	WTBean getWTInfo(String WT_Key);
}
