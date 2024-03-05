package kr.co.softsoldesk.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.softsoldesk.beans.TeacherBean;
import kr.co.softsoldesk.beans.WTT_Bean;
import kr.co.softsoldesk.dao.WTT_Dao;

@Service
public class WTT_Service {
	
	@Autowired
	private WTT_Dao wtt_Dao;
	
	@Resource(name = "loginTeacherBean")
	private TeacherBean loginTeacherBean;
	
	
	
	public List<WTT_Bean> addMyRoomAll(){
		String loginTeacher_id = loginTeacherBean.getTeacher_id();
		System.out.println("loginTeacher_id = "+loginTeacher_id);
		List<WTT_Bean> wttList = wtt_Dao.addMyRoomAll(loginTeacher_id);
		for (WTT_Bean wtt : wttList) {
			if(wtt.getWt_Tag_School()==1) {
				wtt.setStr_WT_Tag_School("초등학교");
			}else if(wtt.getWt_Tag_School()==2) {
				wtt.setStr_WT_Tag_School("중학교");
			}else if(wtt.getWt_Tag_School()==3) {
				wtt.setStr_WT_Tag_School("고등학교");
			}
			
			if(wtt.getWt_Tag_TypeCategory()==1) {
				wtt.setStr_WT_Tag_TypeCategory("교과지도");
			}else if(wtt.getWt_Tag_TypeCategory()==2) {
				wtt.setStr_WT_Tag_TypeCategory("학습지도");
			}else if(wtt.getWt_Tag_TypeCategory()==3) {
				wtt.setStr_WT_Tag_TypeCategory("생활지도");
			}
		}
		return wttList;
	}
	
	public List<WTT_Bean> addMyRoomSelect(int WTT_Completion){
		String loginTeacher_id = loginTeacherBean.getTeacher_id();
		System.out.println("loginTeacher_id = "+loginTeacher_id);
		List<WTT_Bean> wttList = wtt_Dao.addMyRoomSelect(WTT_Completion,loginTeacher_id);
		for (WTT_Bean wtt : wttList) {
			if(wtt.getWt_Tag_School()==1) {
				wtt.setStr_WT_Tag_School("초등학교");
			}else if(wtt.getWt_Tag_School()==2) {
				wtt.setStr_WT_Tag_School("중학교");
			}else if(wtt.getWt_Tag_School()==3) {
				wtt.setStr_WT_Tag_School("고등학교");
			}
			
			if(wtt.getWt_Tag_TypeCategory()==1) {
				wtt.setStr_WT_Tag_TypeCategory("교과지도");
			}else if(wtt.getWt_Tag_TypeCategory()==2) {
				wtt.setStr_WT_Tag_TypeCategory("학습지도");
			}else if(wtt.getWt_Tag_TypeCategory()==3) {
				wtt.setStr_WT_Tag_TypeCategory("생활지도");
			}
		}
		return wttList;
	}
	
}
