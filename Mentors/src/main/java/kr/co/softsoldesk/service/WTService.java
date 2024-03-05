package kr.co.softsoldesk.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.softsoldesk.beans.TeacherBean;
import kr.co.softsoldesk.beans.WTBean;
import kr.co.softsoldesk.dao.WTDao;

@Service
public class WTService {
	
	@Autowired
	private WTDao wtDao;
	
	@Resource(name = "tempCategoryBean")
	private WTBean tempCategoryBean;
	
	
	
	public 	List<WTBean> getWTList(){
		return wtDao.getWTList();
	}

	public WTBean getWTInfo(String WT_Key) {
		WTBean infoBean =wtDao.getWTInfo(WT_Key);
		if(infoBean.getWT_Tag_School()==1) {
			infoBean.setStr_WT_Tag_School("초등학교");
		}else if(infoBean.getWT_Tag_School()==2) {
			infoBean.setStr_WT_Tag_School("중학교");
		}else if(infoBean.getWT_Tag_School()==3) {
			infoBean.setStr_WT_Tag_School("고등학교");
		}
		
		if(infoBean.getWT_Tag_TypeCategory()==1) {
			infoBean.setStr_WT_Tag_TypeCategory("교과지도");
		}else if(infoBean.getWT_Tag_TypeCategory()==2) {
			infoBean.setStr_WT_Tag_TypeCategory("학습지도");
		}else if(infoBean.getWT_Tag_TypeCategory()==3) {
			infoBean.setStr_WT_Tag_TypeCategory("생활지도");
		}
		return infoBean;
	}
	
	
	public List<WTBean> getSchool(int WT_Tag_School){
		return wtDao.getSchool(WT_Tag_School);
	}
	
	public List<WTBean> getTime(int WT_Tag_Time){
		return wtDao.getTime(WT_Tag_Time);
	}
	
	public List<WTBean> getCategory(int WT_Tag_TypeCategory){
		return wtDao.getCategory(WT_Tag_TypeCategory);
	}
	
	public List<WTBean> getSchoolNTime(int WT_Tag_School, int WT_Tag_Time){
		return wtDao.getSchoolNTime(WT_Tag_School, WT_Tag_Time);
	}
	
	public List<WTBean> getSchoolNCategory(int WT_Tag_School, int WT_Tag_TypeCategory){
		return wtDao.getSchoolNCategory(WT_Tag_School, WT_Tag_TypeCategory);
	}
	
	public List<WTBean> getTimeNCategory(int WT_Tag_Time, int WT_Tag_TypeCategory){
		return wtDao.getTimeNCategory(WT_Tag_Time, WT_Tag_TypeCategory);
	}
	
	public List<WTBean> getAllTag(int WT_Tag_School, int WT_Tag_Time, int WT_Tag_TypeCategory){
		return wtDao.getAllTag(WT_Tag_School, WT_Tag_Time, WT_Tag_TypeCategory);
	}
	
}
