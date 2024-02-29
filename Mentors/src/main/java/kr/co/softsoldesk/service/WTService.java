package kr.co.softsoldesk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.softsoldesk.beans.TeacherBean;
import kr.co.softsoldesk.beans.WTBean;
import kr.co.softsoldesk.dao.WTDao;

@Service
public class WTService {
	
	@Autowired
	private WTDao wtDao;
	
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
}
