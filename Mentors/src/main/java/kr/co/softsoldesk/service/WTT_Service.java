package kr.co.softsoldesk.service;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
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

	public List<WTT_Bean> addMyRoomAll() {
		String loginTeacher_id = loginTeacherBean.getTeacher_id();
		System.out.println("loginTeacher_id = " + loginTeacher_id);
		List<WTT_Bean> wttList = wtt_Dao.addMyRoomAll(loginTeacher_id);
		for (WTT_Bean wtt : wttList) {
			if (wtt.getWt_Tag_School() == 1) {
				wtt.setStr_WT_Tag_School("초등학교");
			} else if (wtt.getWt_Tag_School() == 2) {
				wtt.setStr_WT_Tag_School("중학교");
			} else if (wtt.getWt_Tag_School() == 3) {
				wtt.setStr_WT_Tag_School("고등학교");
			}

			if (wtt.getWt_Tag_TypeCategory() == 1) {
				wtt.setStr_WT_Tag_TypeCategory("교과지도");
			} else if (wtt.getWt_Tag_TypeCategory() == 2) {
				wtt.setStr_WT_Tag_TypeCategory("학습지도");
			} else if (wtt.getWt_Tag_TypeCategory() == 3) {
				wtt.setStr_WT_Tag_TypeCategory("생활지도");
			}

			if (wtt.getWtt_Completion() == 0) {
				wtt.setStr_wtt_Completion("학습중");
				wtt.setWtt_Completion_div_color_class("WTT_Completion_bc0");
			} else if (wtt.getWtt_Completion() == 1) {
				wtt.setStr_wtt_Completion("학습완료");
				wtt.setWtt_Completion_div_color_class("WTT_Completion_bc1");
			} else if (wtt.getWtt_Completion() == 2) {
				wtt.setStr_wtt_Completion("기간만료");
				wtt.setWtt_Completion_div_color_class("WTT_Completion_bc2");
			}
		}
		return wttList;
	}

	public List<WTT_Bean> addMyRoomSelect(int WTT_Completion) {
		String loginTeacher_id = loginTeacherBean.getTeacher_id();
		System.out.println("loginTeacher_id = " + loginTeacher_id);
		List<WTT_Bean> wttList = wtt_Dao.addMyRoomSelect(WTT_Completion, loginTeacher_id);
		for (WTT_Bean wtt : wttList) {
			if (wtt.getWt_Tag_School() == 1) {
				wtt.setStr_WT_Tag_School("초등학교");
			} else if (wtt.getWt_Tag_School() == 2) {
				wtt.setStr_WT_Tag_School("중학교");
			} else if (wtt.getWt_Tag_School() == 3) {
				wtt.setStr_WT_Tag_School("고등학교");
			}

			if (wtt.getWt_Tag_TypeCategory() == 1) {
				wtt.setStr_WT_Tag_TypeCategory("교과지도");
			} else if (wtt.getWt_Tag_TypeCategory() == 2) {
				wtt.setStr_WT_Tag_TypeCategory("학습지도");
			} else if (wtt.getWt_Tag_TypeCategory() == 3) {
				wtt.setStr_WT_Tag_TypeCategory("생활지도");
			}

			if (wtt.getWtt_Completion() == 0) {
				wtt.setStr_wtt_Completion("학습중");
				wtt.setWtt_Completion_div_color_class("WTT_Completion_bc0");
			} else if (wtt.getWtt_Completion() == 1) {
				wtt.setStr_wtt_Completion("학습완료");
				wtt.setWtt_Completion_div_color_class("WTT_Completion_bc1");
			} else if (wtt.getWtt_Completion() == 2) {
				wtt.setStr_wtt_Completion("기간만료");
				wtt.setWtt_Completion_div_color_class("WTT_Completion_bc2");
			}

		}
		return wttList;
	}

	public WTT_Bean getWTT_Bean(String wtt_Key) {
		WTT_Bean wtt_Bean = wtt_Dao.getWTT_Bean(wtt_Key);

		if (wtt_Bean.getWt_Tag_School() == 1) {
			wtt_Bean.setStr_WT_Tag_School("초등학교");
		} else if (wtt_Bean.getWt_Tag_School() == 2) {
			wtt_Bean.setStr_WT_Tag_School("중학교");
		} else if (wtt_Bean.getWt_Tag_School() == 3) {
			wtt_Bean.setStr_WT_Tag_School("고등학교");
		}

		if (wtt_Bean.getWt_Tag_TypeCategory() == 1) {
			wtt_Bean.setStr_WT_Tag_TypeCategory("교과지도");
		} else if (wtt_Bean.getWt_Tag_TypeCategory() == 2) {
			wtt_Bean.setStr_WT_Tag_TypeCategory("학습지도");
		} else if (wtt_Bean.getWt_Tag_TypeCategory() == 3) {
			wtt_Bean.setStr_WT_Tag_TypeCategory("생활지도");
		}

		if (wtt_Bean.getWtt_Completion() == 0) {
			wtt_Bean.setStr_wtt_Completion("학습중");
			wtt_Bean.setWtt_Completion_div_color_class("WTT_Completion_bc0");
		} else if (wtt_Bean.getWtt_Completion() == 1) {
			wtt_Bean.setStr_wtt_Completion("학습완료");
			wtt_Bean.setWtt_Completion_div_color_class("WTT_Completion_bc1");
		} else if (wtt_Bean.getWtt_Completion() == 2) {
			wtt_Bean.setStr_wtt_Completion("기간만료");
			wtt_Bean.setWtt_Completion_div_color_class("WTT_Completion_bc2");
		}
		
		//강의 시간 % 구하기
		int vTime=wtt_Bean.getWtt_viewing_time()/60;//초를 분으로 바꿈
		int tTime=wtt_Bean.getWt_TrainingTime();//분
		double timeVprogress = ((double)vTime/(double)tTime)*100;
		wtt_Bean.setVideo_progress(timeVprogress);
		
		
		
		// 전체 강의 진행도
		int testResult = wtt_Bean.getWtt_test_result();
		double testResult20=(double)testResult*0.2;
		double timeVprogress80=timeVprogress*0.8;
		double progress=testResult20+timeVprogress80;
		wtt_Bean.setTestResultFinal(testResult20);
		wtt_Bean.setTimeVprogressFinal(timeVprogress80);
		wtt_Bean.setProgress(progress);
		
		
		
		
		// 결제일 date 타입으로 포멧
		try {
		System.out.println("log1 : "+ wtt_Bean.getWtt_payment_date());
		String pdate = wtt_Bean.getWtt_payment_date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date sdate = format.parse(pdate);
		System.out.println("log2 : " + sdate);
		wtt_Bean.setSDate(sdate);
		
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		//마감일 구하기 결제일 +30
		Calendar cal = Calendar.getInstance();
		cal.setTime(wtt_Bean.getSDate());
		cal.add(Calendar.DATE, 30);
		Date edate = new Date(cal.getTimeInMillis());
		System.out.println("log3 : " + edate);
		wtt_Bean.setEDate(edate);
		
		return wtt_Bean;
	}

}
