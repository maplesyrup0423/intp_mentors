package kr.co.softsoldesk.beans;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class WTBean {
	private String WT_Key;
	private String WT_Title;
	private int WT_Price;
	private int WT_TrainingTime;
	private int WT_Tag_School; //1 초등학교 | 2 중학교 3 | 고등학교
	private int WT_Tag_Time; //1 0~60분 | 2 60~90분 | 3 90분이상
	private int WT_Tag_TypeCategory;// 1 교과지도 | 2 학습지도 | 3 생활지도
	private String WT_Thumbnail; //썸네일 파일(이미지)
	private String WT_Info; //상세 정보 파일(이미지)
	private String WT_Text;
	private String WT_Video;
	
	//----------------------------------------------------
	private MultipartFile upload_WT_Thumbnail; //썸네일 파일 받기
	private MultipartFile upload_WT_Info; //상세정보 파일 받기
}
