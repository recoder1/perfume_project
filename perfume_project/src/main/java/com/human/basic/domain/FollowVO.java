package com.human.basic.domain;

import lombok.Data;

@Data
public class FollowVO {

	private String user_id;
	private String following_id;
	
	private int sNum=1 ;
}
