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

	/*public WTT_Bean() {
		if (wt_Tag_School == 1) {
			str_WT_Tag_School = "초등학교";
		} else if (wt_Tag_School == 2) {
			str_WT_Tag_School = "중학교";
		} else if (wt_Tag_School == 3) {
			str_WT_Tag_School = "고등학교";
		}
		System.out.println("str_WT_Tag_School : " + str_WT_Tag_School);

		if (wt_Tag_TypeCategory == 1) {
			str_WT_Tag_TypeCategory = "교과지도";
		} else if (wt_Tag_TypeCategory == 2) {
			str_WT_Tag_TypeCategory = "생활지도";
		} else if (wt_Tag_TypeCategory == 3) {
			str_WT_Tag_TypeCategory = "학습지도";
		}
		System.out.println("str_WT_Tag_TypeCategory : " + str_WT_Tag_TypeCategory);
	}*/

}
