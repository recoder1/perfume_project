package com.human.basic.domain;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class MarketVO {

	private int m_article_id;
	private String m_title;
	private String user_id;
	private String m_status;
	private String m_head;
	private int m_like;
	private String m_content;
	private String m_fname;
	private long m_fsize;
	private String m_fname_en;
	private int m_count;
	private String m_product;
	private int m_pastprice;
	private int m_saleprice;
	private String m_place;
	private String m_brand;
	private int m_size;
	private String m_use;
	private String m_saleway;
	private Date m_date;
	
	private String m_purdate;
	private String m_expdate;
	
	private int m_commCnt;
	
	

	// 파일 
	MultipartFile file;	
	
	public MultipartFile getFile() {
		return file;
	}
	
	public void setFile(MultipartFile file) {	// 자료형 : MultipartFile
		this.file = file;
	
	// 업로드 파일 접근
		if(! file.isEmpty()){
			this.m_fname = file.getOriginalFilename();
			this.m_fsize = file.getSize();
			
			String fileExtension = m_fname.substring(m_fname.lastIndexOf("."));
			
			// 암호화형식 : 랜덤문자열32자리.확장자명
			this.m_fname_en = UUID.randomUUID().toString().replaceAll("-","")+fileExtension; 
			
			// 경로 변경
			File f = new File("C:\\Users\\human\\Desktop\\springProject\\perfume_project\\src\\main\\webapp\\resources\\assets\\upload\\"+m_fname_en); 
		
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

