package com.human.basic.domain;

import lombok.Data;

@Data
public class CriteriaGyu {

	private int page;	// 현재 페이지 번호
	 private int perPageNum;	// 한 페이지당 보여줄 게시글의 개수
	 private int rowStart;		// 특정 페이지의 게시글 시작 번호, 게시글 시작 행 번호
	 private int rowEnd;		// 특정 페이지의 게시글 마지막 번호
	 
//	 private String keyword;	// 검색 키워드
	 
	 // 생성자, 처음 게시판 목록 들어갔을 때 기본 셋팅( 1페이지당 15게시글)
	 public CriteriaGyu(){
		 this.page = 1;	
		 this.perPageNum = 15;
	 }

	 // 페이지가 음수값이 되지 않게 설정. 음수가 되면 1페이지
	 public void setPage(int page){
		 
		  if (page <= 0){
		   this.page = 1;
		   return;
		  }
		  this.page = page;
	 }

	 // 페이지당 보여줄 게시글 수가 변하지 않게 설정
	 public void setPerPageNum(int pageCount){
		 int count = this.perPageNum;
		 
		  if (pageCount != count){
			   this.perPageNum = count;
		  } else {
			  this.perPageNum = pageCount;
		  }
	 }
		  

	 public int getPage(){
		return page;
	 }

	 public int getPageStart(){
		 return (this.page - 1) * perPageNum;
	 }

	 public int getPerPageNum(){
		 return perPageNum;
	 }

	 public int getRowStart() {
	  rowStart = ((page - 1) * perPageNum) + 1;
	  return rowStart;
	 }

	 public int getRowEnd() {
	  rowEnd = rowStart + perPageNum - 1;
	  return rowEnd;
	 }




	 
}
