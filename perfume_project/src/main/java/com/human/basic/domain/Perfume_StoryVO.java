package com.human.basic.domain;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class Perfume_StoryVO {

	private int ps_article_id;
	private String ps_title;
	private String ps_head;
	private String ps_content;
	private String user_id;
	private String ps_nickname;
	private Date ps_date;
	private int ps_like;
	private String ps_fname;
	private long ps_fsize;
	private String ps_fname_en;
	private int ps_count;
	private int ps_commCnt;
	
	// 파일 
	MultipartFile file;	
	
	public MultipartFile getFile() {
		return file;
	}
	
	public void setFile(MultipartFile file) {	// 자료형 : MultipartFile
		this.file = file;
	
	// 업로드 파일 접근
		if(! file.isEmpty()){
			this.ps_fname = file.getOriginalFilename();
			this.ps_fsize = file.getSize();
			
			String fileExtension = ps_fname.substring(ps_fname.lastIndexOf("."));
			
			// 암호화형식 : 랜덤문자열32자리.확장자명
			this.ps_fname_en = UUID.randomUUID().toString().replaceAll("-","")+fileExtension; 
			
			// 경로 변경
			File f = new File("C:\\Users\\human\\Desktop\\springProject\\perfume_project\\src\\main\\webapp\\resources\\assets\\upload\\"+ps_fname_en); 
		
			try {
				file.transferTo(f);	// 파일 저장
			} catch (IllegalStateException e) {				
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	
}
	
	