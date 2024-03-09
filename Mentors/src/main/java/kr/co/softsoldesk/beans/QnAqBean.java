package kr.co.softsoldesk.beans;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class QnAqBean {

	private String q_key;
	private String WTT_Key;
	
	private String q_Title;
	private String q_content;
	private String teacher_name;
	private int q_a_check;
	private String q_date;
	
}
