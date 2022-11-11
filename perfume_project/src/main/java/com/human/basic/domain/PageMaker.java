package com.human.basic.domain;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PageMaker {

	private Criteria cri;	//
	private int totalCount; // 게시물의 총 갯수
	 private int startPage; // 현제 페이지의 시작 번호 (1, 11, 21 등등)
	 private int endPage;	// 화면에 보여질 마지막 페이지 번호 (10, 20, 30 등등)
	 private boolean prev;	// 이전 페이지로 이동하는 링크의 존재 여부
	 private boolean next;	// 다음 페이지로 이동하는 링크의 존재 여부
	 private int displayPageNum = 5; // 화면에 표시할 페이지 번호 개수

	 

	 public Criteria getCri() {
	        return cri;
	    }
	    public void setCri(Criteria cri) {
	        this.cri = cri;
	    }
	    public int getTotalCount() {
	        return totalCount;
	    }
	    public void setTotalCount(int totalCount) {
	        this.totalCount = totalCount;
	        calcData();
	    }
	    
	    private void calcData() {
	        
	    	//끝 페이지 번호 = (현재 페이지 번호 / 화면에 보여질 페이지 번호의 갯수) * 화면에 보여질 페이지 번호의 갯수
	        endPage = (int) (Math.ceil(cri.getPage() / (double) displayPageNum) * displayPageNum);
	 
	        //시작 페이지 번호 = (끝 페이지 번호 - 화면에 보여질 페이지 번호의 갯수) + 1
	        startPage = (endPage - displayPageNum) + 1;
	        if(startPage <= 0) startPage = 1;
	        
	        //마지막 페이지 번호 = 총 게시글 수 / 한 페이지당 보여줄 게시글의 갯수
	        int tempEndPage = (int) (Math.ceil(totalCount / (double) cri.getPerPageNum()));
	        if (endPage > tempEndPage) {
	            endPage = tempEndPage;
	        }
	 
	        //이전 버튼 생성 여부
	        prev = startPage == 1 ? false : true;
	        //다음 버튼 생성 여부 = 끝 페이지 번호 * 한 페이지당 보여줄 게시글의 갯수 < 총 게시글의 수 ?
	        next = endPage * cri.getPerPageNum() < totalCount ? true : false;
	        
	    }
	    
	   
	 // 검색
	 // uricomponents는 url을 자바에서 작성을 하는 것
	 // queryparam은  필드값과 변수값을 정해주는 역할
	 public String makeSearch(int page) {
	
		UriComponents uriComponents =
				 
				 UriComponentsBuilder.newInstance()
				 .queryParam("page", page)
				 .queryParam("perPageNum", cri.getPerPageNum())
				 .queryParam("searchType", ((SearchCriteria)cri).getSearchType())
				 .queryParam("keyword", encoding(((SearchCriteria)cri).getKeyword()))
				 .build();
		 
		 return uriComponents.toUriString();
		 // 페이징, 검색 정보를 유지한 채로 페이지 이동
	 }
	 
	 private String encoding(String keyword) {
		 if(keyword == null || keyword.trim().length() == 0) {
			 return "";
		 }
		 try {
			 return URLEncoder.encode(keyword, "UTF-8");
		 } catch(UnsupportedEncodingException e){
			 return "";
		 }
	 }

}
