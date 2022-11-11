package com.human.basic.dao;

import java.util.List;

import com.human.basic.domain.ReviewVO;
import com.human.basic.domain.MainReviewVO;

public interface ReviewDAO {

	// 리뷰 불러오기
	List<ReviewVO> review_list(ReviewVO rvo);
	
	void review_upload(ReviewVO vo);
	
	// 리뷰 수정
	void review_update(ReviewVO vo);
	
	// 리뷰 삭제
	void review_delete(ReviewVO vo);
	
	// 리뷰 총갯수
	int review_cnt(ReviewVO rvo);
	
	// 메인 향수사진 리스트
	List<MainReviewVO> main_product_list();
	
	// 메인 리뷰 리스트들
	List<MainReviewVO> main_review_list1();
	List<MainReviewVO> main_review_list2();
	List<MainReviewVO> main_review_list3();
}
