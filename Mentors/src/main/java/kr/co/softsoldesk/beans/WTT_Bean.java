package kr.co.softsoldesk.beans;

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
	private int WTT_Completion; // 0: 미수료 1 : 수료 2: 기간만료(미수료)

	// -----------------------------------------------------
	private String wt_Title; // 강의이름
	private int wt_TrainingTime; // 강의 시간
	private int wt_Tag_School;// 학급 코드
	private int wt_Tag_TypeCategory;// 분야 코드

	// -----------------------------------------------------
	private String str_WT_Tag_School; // 학급 문자열
	private String str_WT_Tag_TypeCategory; // 분야 문자
	private String end_date; // 연수 마감일 wtt_payment_date +30일
	private Double video_progress; // 강의 진행도 (영상만)
	private Double progress; // 강의 진행도 (영상+시험)

	// -----------------------------------------------------


}
