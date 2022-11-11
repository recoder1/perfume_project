package com.human.basic.domain;

import lombok.Data;

@Data
public class RecommVO{

	private String result_id;
	private String gender;
	private String age;
	private String strength;
	private String lasting;
	private String season;
	private String mood;
	private String mood2;
	private String user_likes;
	private String user_likes2;
	private String user_hates;
	private String user_hates2;
	private String result_code;
	
	public RecommVO() {}
	
//	public RecommVO(String gender, String age, String strength, String lasting, String season, String mood,
//			String user_likes, String user_hates, String result_code) {
//		super();
//		this.gender = gender;
//		this.age = age;
//		this.strength = strength;
//		this.lasting = lasting;
//		this.season = season;
//		this.mood = mood;
//		this.user_likes = user_likes;
//		this.user_hates = user_hates;
//		this.result_code = result_code;
//	}
}
