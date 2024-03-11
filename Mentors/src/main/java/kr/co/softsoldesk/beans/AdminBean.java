package kr.co.softsoldesk.beans;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class AdminBean {
	
	//teacher_info 테이블 변수
	private String teacher_id;
	private String teacher_name;
	private String teacher_password;
	private String teacher_nickname;
	private String teacher_neis;
	
	//Notification 테이블 변수
	private String noti_key;
	private String noti_title;
	private String noti_content;
	private String noti_date;
	
	//workplace_T 테이블 변수
	private String wt_key;
	private String wt_title;
	//WTT 테이블a
	private String wtt_key;
	
	//qna_q 테이블 변수
	private String q_key;
	private String q_title;
	private String q_content;
	private int q_a_check;
	private String q_date;
	private String a_content;

}
