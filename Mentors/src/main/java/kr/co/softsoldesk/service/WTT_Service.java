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
	@Autowired
	ClassService classService;

	@Resource(name = "loginTeacherBean")
	private TeacherBean loginTeacherBean;

	public List<WTT_Bean> addMyRoomAll() {
		String loginTeacher_id = loginTeacherBean.getTeacher_id();
		System.out.println("loginTeacher_id = " + loginTeacher_id);
		List<WTT_Bean> wttList = wtt_Dao.addMyRoomAll(loginTeacher_id);
		for (WTT_Bean wtt_Bean : wttList) {

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

			// 강의 시간 % 구하기
			double vTime = (double)wtt_Bean.getWtt_viewing_time() / 60;// 초를 분으로 바꿈
			int tTime = wtt_Bean.getWt_TrainingTime();// 분
			double timeVprogress = ((double) vTime / (double) tTime) * 100;
			wtt_Bean.setVideo_progress(timeVprogress);

			// 전체 강의 진행도
			int testResult = wtt_Bean.getWtt_test_result();
			double testResult20 = (double) testResult * 0.2;
			double timeVprogress80 = timeVprogress * 0.8;
			double progress = testResult20 + timeVprogress80;
			wtt_Bean.setTestResultFinal(testResult20);
			wtt_Bean.setTimeVprogressFinal(timeVprogress80);
			wtt_Bean.setProgress(progress);

			// 결제일 date 타입으로 포멧
			try {
				System.out.println("log1 : " + wtt_Bean.getWtt_payment_date());
				String pdate = wtt_Bean.getWtt_payment_date();
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				Date sdate = format.parse(pdate);
				System.out.println("log2 : " + sdate);
				wtt_Bean.setSDate(sdate);

				// 시작일 Date to String yyyy-MM-dd
				SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM-dd");
				String start_date = format2.format(sdate);
				System.out.println("start_date" + start_date);
				wtt_Bean.setStart_date(start_date);

			} catch (Exception e) {
				e.printStackTrace();
			}

			// 마감일 구하기 결제일 +30
			Calendar cal = Calendar.getInstance();
			cal.setTime(wtt_Bean.getSDate());
			cal.add(Calendar.DATE, 30);
			Date edate = new Date(cal.getTimeInMillis());
			System.out.println("log3 : " + edate);
			wtt_Bean.setEDate(edate);

			// 마감일 Date to String yyyy-MM-dd
			SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM-dd");
			String end_date = format2.format(edate);
			System.out.println("end_date" + end_date);
			wtt_Bean.setEnd_date(end_date);

			if (wtt_Bean.getWtt_Completion() == 0) {
				wtt_Bean.setStr_wtt_Completion("학습중");
				wtt_Bean.setWtt_Completion_div_color_class("WTT_Completion_bc0");
				try {
					String strDate = wtt_Bean.getEnd_date(); // 기준 날짜 데이터 (("yyyy-MM-dd")의 형태)
					String todayFm = new SimpleDateFormat("yyyy-MM-dd").format(new Date(System.currentTimeMillis())); // 오늘날짜

					SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

					Date date = new Date(dateFormat.parse(strDate).getTime());
					Date today = new Date(dateFormat.parse(todayFm).getTime());

					long calculate =  date.getTime() - today.getTime();

					int Ddays = (int) (calculate / (24 * 60 * 60 * 1000));
					wtt_Bean.setD_Day(Ddays);
					System.out.println("01 두 날짜 차이일 : " + Ddays);
					if(Ddays<0) {
						//wtt_Completion를 2로변경 기긴만료 처리	
						classService.updateWttCompletion(2, wtt_Bean.getWtt_Key());
					}

				} catch (Exception e) {
					e.printStackTrace();
				}
			} else if (wtt_Bean.getWtt_Completion() == 1) {
				wtt_Bean.setStr_wtt_Completion("학습완료");
				wtt_Bean.setWtt_Completion_div_color_class("WTT_Completion_bc1");
			} else if (wtt_Bean.getWtt_Completion() == 2) {
				wtt_Bean.setStr_wtt_Completion("기간만료");
				wtt_Bean.setWtt_Completion_div_color_class("WTT_Completion_bc2");
			}else if (wtt_Bean.getWtt_Completion() == 3) {
				wtt_Bean.setStr_wtt_Completion("불합격");
				wtt_Bean.setWtt_Completion_div_color_class("WTT_Completion_bc3");
			}

		}
		return wttList;
	}
///////////////////////////////////////////////////////////////////////////////////////////////
	public List<WTT_Bean> addMyRoomSelect(int WTT_Completion) {
		String loginTeacher_id = loginTeacherBean.getTeacher_id();
		System.out.println("loginTeacher_id = " + loginTeacher_id);
		List<WTT_Bean> wttList = wtt_Dao.addMyRoomSelect(WTT_Completion, loginTeacher_id);
		for (WTT_Bean wtt_Bean : wttList) {

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

			// 강의 시간 % 구하기
			double vTime = (double)wtt_Bean.getWtt_viewing_time() / 60;// 초를 분으로 바꿈
			int tTime = wtt_Bean.getWt_TrainingTime();// 분
			double timeVprogress = ((double) vTime / (double) tTime) * 100;
			wtt_Bean.setVideo_progress(timeVprogress);

			// 전체 강의 진행도
			int testResult = wtt_Bean.getWtt_test_result();
			double testResult20 = (double) testResult * 0.2;
			double timeVprogress80 = timeVprogress * 0.8;
			double progress = testResult20 + timeVprogress80;
			wtt_Bean.setTestResultFinal(testResult20);
			wtt_Bean.setTimeVprogressFinal(timeVprogress80);
			wtt_Bean.setProgress(progress);

			// 결제일 date 타입으로 포멧
			try {
				System.out.println("log1 : " + wtt_Bean.getWtt_payment_date());
				String pdate = wtt_Bean.getWtt_payment_date();
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				Date sdate = format.parse(pdate);
				System.out.println("log2 : " + sdate);
				wtt_Bean.setSDate(sdate);

				// 시작일 Date to String yyyy-MM-dd
				SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM-dd");
				String start_date = format2.format(sdate);
				System.out.println("start_date" + start_date);
				wtt_Bean.setStart_date(start_date);

			} catch (Exception e) {
				e.printStackTrace();
			}

			// 마감일 구하기 결제일 +30
			Calendar cal = Calendar.getInstance();
			cal.setTime(wtt_Bean.getSDate());
			cal.add(Calendar.DATE, 30);
			Date edate = new Date(cal.getTimeInMillis());
			System.out.println("log3 : " + edate);
			wtt_Bean.setEDate(edate);

			// 마감일 Date to String yyyy-MM-dd
			SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM-dd");
			String end_date = format2.format(edate);
			System.out.println("end_date" + end_date);
			wtt_Bean.setEnd_date(end_date);

			if (wtt_Bean.getWtt_Completion() == 0) {
				wtt_Bean.setStr_wtt_Completion("학습중");
				wtt_Bean.setWtt_Completion_div_color_class("WTT_Completion_bc0");
				try {
					String strDate = wtt_Bean.getEnd_date(); // 기준 날짜 데이터 (("yyyy-MM-dd")의 형태)
					String todayFm = new SimpleDateFormat("yyyy-MM-dd").format(new Date(System.currentTimeMillis())); // 오늘날짜

					SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

					Date date = new Date(dateFormat.parse(strDate).getTime());
					Date today = new Date(dateFormat.parse(todayFm).getTime());

					long calculate =  date.getTime() - today.getTime();

					int Ddays = (int) (calculate / (24 * 60 * 60 * 1000));
					wtt_Bean.setD_Day(Ddays);
					System.out.println("01 두 날짜 차이일 : " + Ddays);

				} catch (Exception e) {
					e.printStackTrace();
				}
			} else if (wtt_Bean.getWtt_Completion() == 1) {
				wtt_Bean.setStr_wtt_Completion("학습완료");
				wtt_Bean.setWtt_Completion_div_color_class("WTT_Completion_bc1");
			} else if (wtt_Bean.getWtt_Completion() == 2) {
				wtt_Bean.setStr_wtt_Completion("기간만료");
				wtt_Bean.setWtt_Completion_div_color_class("WTT_Completion_bc2");
			}else if (wtt_Bean.getWtt_Completion() == 3) {
				wtt_Bean.setStr_wtt_Completion("불합격");
				wtt_Bean.setWtt_Completion_div_color_class("WTT_Completion_bc3");
			}

		}
		return wttList;
	}
	
	////////////////////////////////////////////////////////////////////////////////////////

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

		// 강의 시간 % 구하기
		double vTime = (double)wtt_Bean.getWtt_viewing_time() / 60;// 초를 분으로 바꿈
		int tTime = wtt_Bean.getWt_TrainingTime();// 분
		double timeVprogress = ((double) vTime / (double) tTime) * 100;
		wtt_Bean.setVideo_progress(timeVprogress);

		// 전체 강의 진행도
		int testResult = wtt_Bean.getWtt_test_result();
		double testResult20 = (double) testResult * 0.2;
		double timeVprogress80 = timeVprogress * 0.8;
		double progress = testResult20 + timeVprogress80;
		wtt_Bean.setTestResultFinal(testResult20);
		wtt_Bean.setTimeVprogressFinal(timeVprogress80);
		wtt_Bean.setProgress(progress);

		// 결제일 date 타입으로 포멧
		try {
			System.out.println("log1 : " + wtt_Bean.getWtt_payment_date());
			String pdate = wtt_Bean.getWtt_payment_date();
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date sdate = format.parse(pdate);
			System.out.println("log2 : " + sdate);
			wtt_Bean.setSDate(sdate);

			// 시작일 Date to String yyyy-MM-dd
			SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM-dd");
			String start_date = format2.format(sdate);
			System.out.println("start_date" + start_date);
			wtt_Bean.setStart_date(start_date);

		} catch (Exception e) {
			e.printStackTrace();
		}

		// 마감일 구하기 결제일 +30
		Calendar cal = Calendar.getInstance();
		cal.setTime(wtt_Bean.getSDate());
		cal.add(Calendar.DATE, 30);
		Date edate = new Date(cal.getTimeInMillis());
		System.out.println("log3 : " + edate);
		wtt_Bean.setEDate(edate);

		// 마감일 Date to String yyyy-MM-dd
		SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM-dd");
		String end_date = format2.format(edate);
		System.out.println("end_date" + end_date);
		wtt_Bean.setEnd_date(end_date);

		if (wtt_Bean.getWtt_Completion() == 0) {
			wtt_Bean.setStr_wtt_Completion("학습중");
			wtt_Bean.setWtt_Completion_div_color_class("WTT_Completion_bc0");
			try {
				String strDate = wtt_Bean.getEnd_date(); // 기준 날짜 데이터 (("yyyy-MM-dd")의 형태)
				String todayFm = new SimpleDateFormat("yyyy-MM-dd").format(new Date(System.currentTimeMillis())); // 오늘날짜

				SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

				Date date = new Date(dateFormat.parse(strDate).getTime());
				Date today = new Date(dateFormat.parse(todayFm).getTime());

				long calculate =  date.getTime() - today.getTime();

				int Ddays = (int) (calculate / (24 * 60 * 60 * 1000));
				wtt_Bean.setD_Day(Ddays);
				System.out.println("01 두 날짜 차이일 : " + Ddays);

			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (wtt_Bean.getWtt_Completion() == 1) {
			wtt_Bean.setStr_wtt_Completion("학습완료");
			wtt_Bean.setWtt_Completion_div_color_class("WTT_Completion_bc1");
		} else if (wtt_Bean.getWtt_Completion() == 2) {
			wtt_Bean.setStr_wtt_Completion("기간만료");
			wtt_Bean.setWtt_Completion_div_color_class("WTT_Completion_bc2");
		}else if (wtt_Bean.getWtt_Completion() == 3) {
			wtt_Bean.setStr_wtt_Completion("불합격");
			wtt_Bean.setWtt_Completion_div_color_class("WTT_Completion_bc3");
		}
		return wtt_Bean;
	}

	/*
	 * public void setDday(List<WTT_Bean> wttList0) { try { //List<WTT_Bean>
	 * wttList0=this.addMyRoomSelect(0); for(WTT_Bean wt : wttList0) { String
	 * strDate = wt.getStart_date(); // 기준 날짜 데이터 (("yyyy-MM-dd")의 형태) String
	 * todayFm = new SimpleDateFormat("yyyy-MM-dd").format(new
	 * Date(System.currentTimeMillis())); // 오늘날짜
	 * 
	 * SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	 * 
	 * Date date = new Date(dateFormat.parse(strDate).getTime()); Date today = new
	 * Date(dateFormat.parse(todayFm).getTime());
	 * 
	 * long calculate = date.getTime() - today.getTime();
	 * 
	 * int Ddays = (int) (calculate / ( 24*60*60*1000)); wt.setD_Day(Ddays);
	 * System.out.println("두 날짜 차이일 : " + Ddays);
	 * 
	 * } } catch (Exception e) { e.printStackTrace(); }
	 * 
	 * }
	 */

}
