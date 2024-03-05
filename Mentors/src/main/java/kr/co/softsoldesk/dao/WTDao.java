package kr.co.softsoldesk.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.softsoldesk.beans.WTBean;
import kr.co.softsoldesk.mapper.WTMapper;

@Repository
public class WTDao {

	@Autowired
	private WTMapper wtMapper;

	public List<WTBean> getWTList() {
		return wtMapper.getWTList();
	}
	
	public WTBean getWTInfo(String WT_Key) {
		return wtMapper.getWTInfo(WT_Key);
	}
	
	//=----------------------------------------------------------
	
	public List<WTBean> getSchool(int wt_Tag_School){
		return wtMapper.getSchool(wt_Tag_School);
	}
	
	public List<WTBean> getTime(int wt_Tag_Time){
		return wtMapper.getTime(wt_Tag_Time);
	}
	
	public List<WTBean> getCategory(int wt_Tag_TypeCategory){
		return wtMapper.getCategory(wt_Tag_TypeCategory);
	}
	
	public List<WTBean> getSchoolNTime(int wt_Tag_School, int wt_Tag_Time){
		return wtMapper.getSchoolNTime(wt_Tag_School, wt_Tag_Time);
	}
	
	public List<WTBean> getSchoolNCategory(int wt_Tag_School, int wt_Tag_TypeCategory){
		return wtMapper.getSchoolNCategory(wt_Tag_School, wt_Tag_TypeCategory);
	}
	
	public List<WTBean> getTimeNCategory(int wt_Tag_Time, int wt_Tag_TypeCategory){
		return wtMapper.getTimeNCategory(wt_Tag_Time, wt_Tag_TypeCategory);
	}
	
	public List<WTBean> getAllTag(int wt_Tag_School, int wt_Tag_Time, int wt_Tag_TypeCategory){
		return wtMapper.getAllTag(wt_Tag_School, wt_Tag_Time, wt_Tag_TypeCategory);
	}

}
