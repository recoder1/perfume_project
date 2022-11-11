package com.human.basic.domain;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class Market_CommVO {
	
	private int mc_comment_id;
	private String mc_user_id;
	private String mc_content;
	
	private String mc_date;
	
	private int m_article_id;

}
