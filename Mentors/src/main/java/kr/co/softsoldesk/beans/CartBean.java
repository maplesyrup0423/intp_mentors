package kr.co.softsoldesk.beans;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CartBean {

	private String teacher_id;
	private String WT_Key;
	
	private String WT_Thumbnail;
	private int WT_TrainingTime;
	private String WT_Title;
	private int WT_Price;

}
