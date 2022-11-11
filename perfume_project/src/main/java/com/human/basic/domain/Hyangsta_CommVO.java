package com.human.basic.domain;

import lombok.Data;

@Data
public class Hyangsta_CommVO {

	private int hcomment_id;
	private int hpost_id;
	private String hc_date;
	private String hc_content;
	private String hc_user_id;
	
	private int sNum = 1;	// rnum 시작번호
	
}
