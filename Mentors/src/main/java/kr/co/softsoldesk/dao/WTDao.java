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
	
	public List<WTBean> getSchool(int WT_Tag_School){
		return wtMapper.getSchool(WT_Tag_School);
	}
	
	public List<WTBean> getTime(int WT_Tag_Time){
		return wtMapper.getTime(WT_Tag_Time);
	}
	
	public List<WTBean> getCategory(int WT_Tag_TypeCategory){
		return wtMapper.getCategory(WT_Tag_TypeCategory);
	}
	
	public List<WTBean> getSchoolNTime(int WT_Tag_School, int WT_Tag_Time){
		return wtMapper.getSchoolNTime(WT_Tag_School, WT_Tag_Time);
	}
	
	public List<WTBean> getSchoolNCategory(int WT_Tag_School, int WT_Tag_TypeCategory){
		return wtMapper.getSchoolNCategory(WT_Tag_School, WT_Tag_TypeCategory);
	}
	
	public List<WTBean> getTimeNCategory(int WT_Tag_Time, int WT_Tag_TypeCategory){
		return wtMapper.getTimeNCategory(WT_Tag_Time, WT_Tag_TypeCategory);
	}
	
	public List<WTBean> getAllTag(int WT_Tag_School, int WT_Tag_Time, int WT_Tag_TypeCategory){
		return wtMapper.getAllTag(WT_Tag_School, WT_Tag_Time, WT_Tag_TypeCategory);
	}

}
