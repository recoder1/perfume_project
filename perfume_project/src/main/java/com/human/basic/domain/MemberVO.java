package com.human.basic.domain;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class MemberVO {
	
	private String user_id;
	private String user_password;
	private String email;
	private String nickname;
	private String tel;
	private String name;
	private String user_fname;
	private String user_fname_en;
	private int h_follower;
	private int h_following;
	
	// 파일 업로드 관련
	MultipartFile file;
	
	public MultipartFile getFile() {
		return file;
	}
	
	public void setFile(MultipartFile file) {
		this.file = file; 
		if(! file.isEmpty()) {
			this.user_fname = file.getOriginalFilename();
			String fileExtension = user_fname.substring(user_fname.lastIndexOf("."));
			this.user_fname_en = UUID.randomUUID().toString().replaceAll("-", "") + fileExtension;
			File f = new File("C:\\Users\\human\\Desktop\\springProject\\perfume_project\\src\\main\\webapp\\resources\\profileImg\\" + user_fname_en);
			
			try {
				file.transferTo(f);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch(IOException e) {
				e.printStackTrace(); 
			}
		}
		
	}
	
	
	
	
	
} 


