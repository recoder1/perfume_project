package com.human.basic.domain;

public class Perfume_ListVO {
	private String productid;
	private String product_name;
	private String brand;
	private String gender;
	private String season;
	private String strength;
	private String lasting;
	private String note1;
	private String note2;
	private String note3;
	private String store;
	private String pl_fname;
	private String pl_fname_en;
	private String pro_duct_id;
	
	/*
	//*************************************************
	MultipartFile file;	// write.jsp에 파일첨부시 name="file"과 동일한 변수명
	// 만일 여러 개의 파일을 다룬다면 MultipartFile[] < 이렇게 배열로 바꾸어주면 된다.
	
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
		
		// 업로드 파일 접근
		if(! file.isEmpty()){
			this.pl_fname = file.getOriginalFilename();
			
//			System.out.println("origin: "+b_fname);

			// 가짜이름도 하나 생성
			
			// 가짜이름에는 확장자 없음 > 진짜 이름에서 확장자를 가져오기
			String fileExtension = pl_fname.substring(pl_fname.lastIndexOf("."));
			// 사용자가 파일을 저장할때 겹치지않도록 암호화한 코드
			// 형식 : 랜덤문자열32자리.확장자명
			this.pl_fname_en = UUID.randomUUID().toString().replaceAll("-","")+fileExtension;

			// 해당 경로로 변경
			File f = new File("C:\\Users\\human\\Desktop\\springProject\\perfume_project\\src\\main\\webapp\\resources\\assets\\img\\perfumes\\"+pl_fname_en);
			
			try {
				file.transferTo(f);
				
			} catch (IllegalStateException e) {				
				e.printStackTrace();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		}
	}
	*/
	
	
	
	
	public String getProductid() {
		return productid;
	}
	public void setProductid(String productid) {
		this.productid = productid;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getSeason() {
		return season;
	}
	public void setSeason(String season) {
		this.season = season;
	}
	public String getStrength() {
		return strength;
	}
	public void setStrength(String strength) {
		this.strength = strength;
	}
	public String getLasting() {
		return lasting;
	}
	public void setLasting(String lasting) {
		this.lasting = lasting;
	}
	public String getNote1() {
		return note1;
	}
	public void setNote1(String note1) {
		this.note1 = note1;
	}
	public String getNote2() {
		return note2;
	}
	public void setNote2(String note2) {
		this.note2 = note2;
	}
	public String getNote3() {
		return note3;
	}
	public void setNote3(String note3) {
		this.note3 = note3;
	}
	public String getStore() {
		return store;
	}
	public void setStore(String store) {
		this.store = store;
	}
	public String getPl_fname() {
		return pl_fname;
	}
	public void setPl_fname(String pl_fname) {
		this.pl_fname = pl_fname;
	}
	public String getPl_fname_en() {
		return pl_fname_en;
	}
	public void setPl_fname_en(String pl_fname_en) {
		this.pl_fname_en = pl_fname_en;
	}
	public String getPro_duct_id() {
		return pro_duct_id;
	}
	public void setPro_duct_id(String pro_duct_id) {
		this.pro_duct_id = pro_duct_id;
	}
	
	
}
