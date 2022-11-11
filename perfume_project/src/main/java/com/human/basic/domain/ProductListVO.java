package com.human.basic.domain;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class ProductListVO {
	
	private String productid;
	private String product_name;
	private String brand;
	private String gender;
	private String strength;
	private String lasting;
	private String season;
	private String note1;
	private String note2;
	private String note3;
	private String store;
	private String pl_fname;
	private String pl_fname_en;
	private String pro_duct_id;
	private String coment;
	private String coment1;
	private String coment2;
	private String coment3;

	MultipartFile file;	// insertBoard.jsp에 파일첨부시 name="file"과 동일한 변수명
	// 파일에 대한 자료형
	
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
		
		// 업로드 파일 접근
		if(! file.isEmpty()){
			this.pl_fname = file.getOriginalFilename();
			// 가짜이름도 하나 생성
			
			// 1. 가짜이름은 파일의 확장자가 없습니다 > 진짜 이름에서 확장자를 가져와야해요
			String fileExtension = pl_fname.substring(pl_fname.lastIndexOf("."));
			// 2. 사용자가 파일을 저장할때 겹치지않도록 암호화 하는 특별한 코드 (암호화)
			//    형식 : 랜덤문자열32자리.확장자명
			this.pl_fname_en = UUID.randomUUID().toString().replaceAll("-","")+fileExtension;
			//***********************************************
			// 해당 경로로 변경
			File f = new File("C:\\Users\\human\\Desktop\\springProject\\perfume_project\\src\\main\\webapp\\resources\\assets\\img\\perfumes\\"+brand+"\\"+pl_fname_en);
//			File f = new File("C:\\Users\\human\\Desktop\\springProject\\dWebBoard\\src\\main\\webapp\\resources\\upload\\assets\\img\\"+pl_fname_en);
//			File f = new File("C:\\Users\\human\\Desktop\\springProject\\dWebBoard\\src\\main\\webapp\\resources\\upload\\"+b_fname);
			
			try {
				file.transferTo(f);
				
			} catch (IllegalStateException e) {				
				e.printStackTrace();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		}
	}
	
}


