package kr.co.softsoldesk.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import kr.co.softsoldesk.beans.WTBean;


public interface WTMapper {

	//연수 리스트에서 사용할 정보 받아오기
	@Select("select WT_Key, WT_Title, WT_Thumbnail, WT_Price from workplace_T")
	List<WTBean> getWTList();
}
