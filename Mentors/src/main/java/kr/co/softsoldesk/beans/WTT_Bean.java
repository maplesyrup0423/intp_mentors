package kr.co.softsoldesk.beans;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class WTT_Bean {

	private String wtt_Key;
	private String wt_Key;
	private String teacher_id;
	private String wtt_payment_date; // 결제일
	private int wtt_viewing_time; // 수강시간
	private int wtt_test_result; // 시험점수
	private int wtt_Completion; // 0: 학습중 1 : 학습완료 2: 기간만료(미수료)  -- 로그인 시점 / 시험제출 시점에 갱신

	// -----------------------------------------------------
	private String wt_Title; // 강의이름
	private int wt_TrainingTime; // 강의 시간
	private int wt_Tag_School;// 학급 코드
	private int wt_Tag_TypeCategory;// 분야 코드
	private String wt_Video; //비디오 url

	// -----------------------------------------------------
	private String str_wtt_Completion; //강의 수료여부 문자열
	private String str_WT_Tag_School; // 학급 문자열
	private String str_WT_Tag_TypeCategory; // 분야 문자
	//private String end_date; // 연수 마감일 wtt_payment_date +30일
	private double video_progress; // 강의 진행도 (영상만)
	private double progress; // 강의 진행도 (영상+시험)
	
	private double timeVprogressFinal; // 영상 진행도 점수(80%)
	private double testResultFinal; // 시험 점수 (20%)
	
	private Date sDate; //강의 시작일(결제일)
	private Date eDate; //강의 마감일(결제일 +30)

	// -----------------------------------------------------
	private String wtt_Completion_div_color_class; //my room 학습별 컬러 클래스값
	

}
