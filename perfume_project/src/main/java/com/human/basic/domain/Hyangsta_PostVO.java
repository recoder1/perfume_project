package com.human.basic.domain;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class Hyangsta_PostVO {

	private int hpost_id;
	private String hp_date;
	private String hp_tag;
	private String hp_content;
	private String user_id;
	private String hp_fname;
	private long hp_fsize;
	private String hp_fname_en;
	private int hp_like;
	
	private String nickname; // 유저 닉네임
	private String user_fname_en; // 포스트 작성자 사진
	private int sNum = 1; // rownum 시작 번호
	
	MultipartFile file;
	// insertBoard.jsp에 파일첨부시 name="file"과 동일한 변수명
	
	public MultipartFile getFile() {
		return file;
	}
	
	public void setFile(MultipartFile file) {
		// 파일마다 확장자가 다름 / 크기도 다름 >> 파일의 원본을 저장하기 보다는 파일 경로를 이용 
		
		this.file = file;
		
		// 업로드 파일 접근
		if(! file.isEmpty()){
			this.hp_fname = file.getOriginalFilename();
			this.hp_fsize = file.getSize();
			
//			System.out.println("origin : " + b_fname);
//			System.out.println("fsize : " + b_fsize);
			
			// 가짜이름도 하나 생성
			
			// 1. 가짜이름은 파일의 확장자가 없습니다 > 진짜 이름에서 확장자를 가져와야해요
			
			String fileExtension = hp_fname.substring(hp_fname.lastIndexOf("."));
			// 2. 사용자가 파일을 저장할때 겹치지않도록 암호화 하는 특별한 코드 (암호화)
			//    형식 : 랜덤문자열32자리.확장자명 
			this.hp_fname_en = UUID.randomUUID().toString().replaceAll("-","")+fileExtension;
			//***********************************************
			// 해당 경로로 변경
			File f = new File("C:\\Users\\human\\Desktop\\springProject\\perfume_project\\src\\main\\webapp\\resources\\5_hy_img\\"+hp_fname_en);
			
			try {
				file.transferTo(f); // 파일 저장
				
			} catch (IllegalStateException e) {				
				e.printStackTrace();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		}
	}
	
}
