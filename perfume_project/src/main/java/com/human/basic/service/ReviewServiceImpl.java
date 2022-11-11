package com.human.basic.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.basic.dao.ReviewDAO;
import com.human.basic.domain.ReviewVO;
import com.human.basic.domain.MainReviewVO;

@Service("reviewService")
public class ReviewServiceImpl implements ReviewService {
	
	@Autowired
	private ReviewDAO reviewDAO;

	@Override
	public List<ReviewVO> review_list(ReviewVO rvo) {
		return reviewDAO.review_list(rvo);
	}

	@Override
	public void review_upload(ReviewVO vo) {
		System.out.println("리뷰업로드서비스");
		reviewDAO.review_upload(vo);
	}

	@Override
	public void review_update(ReviewVO vo) {
		System.out.println("수정 서비스");
		reviewDAO.review_update(vo);
		
	}

	@Override
	public void review_delete(ReviewVO vo) {
		System.out.println("삭제서비스");
		reviewDAO.review_delete(vo);
		
	}

	@Override
	public int review_cnt(ReviewVO rvo) {
		System.out.println("리뷰 총갯수 서비스");
		return reviewDAO.review_cnt(rvo);
	}

	@Override
	public List<MainReviewVO> main_product_list() {
		System.out.println("메인향수사진서비스");
		return reviewDAO.main_product_list();
	}

	@Override
	public List<MainReviewVO> main_review_list1() {
		return reviewDAO.main_review_list1();
	}

	@Override
	public List<MainReviewVO> main_review_list2() {
		return reviewDAO.main_review_list2();
	}

	@Override
	public List<MainReviewVO> main_review_list3() {
		return reviewDAO.main_review_list3();
	}

}
