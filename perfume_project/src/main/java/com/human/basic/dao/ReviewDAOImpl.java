package com.human.basic.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.basic.domain.ReviewVO;
import com.human.basic.domain.MainReviewVO;

@Repository("reviewDAO")
public class ReviewDAOImpl implements ReviewDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public List<ReviewVO> review_list(ReviewVO rvo) {
		return mybatis.selectList("review.review_list", rvo);			

	}

	@Override
	public void review_upload(ReviewVO vo) {
		System.out.println("업로드 다오");
		System.out.println(vo.getUser_id());
		System.out.println("닉네임 : "+vo.getNickname());
		System.out.println(vo.getRe_content());
		mybatis.insert("review.review_upload", vo);
	}

	@Override
	public void review_update(ReviewVO vo) {
		System.out.println("수정 다오");
		mybatis.update("review.review_update", vo);
		
	}

	@Override
	public void review_delete(ReviewVO vo) {
		System.out.println("삭제다오");
		mybatis.delete("review_delete", vo);
		
	}

	@Override
	public int review_cnt(ReviewVO rvo) {
		System.out.println("리뷰 총갯수 다오");
		return mybatis.selectOne("review.review_cnt", rvo);
	}

	@Override
	public List<MainReviewVO> main_product_list() {
		System.out.println("메인향수사진다오");
		return mybatis.selectList("review.main_product_list");
	}

	@Override
	public List<MainReviewVO> main_review_list1() {
		return mybatis.selectList("review.main_review_list1");
	}

	@Override
	public List<MainReviewVO> main_review_list2() {
		return mybatis.selectList("review.main_review_list2");
	}

	@Override
	public List<MainReviewVO> main_review_list3() {
		return mybatis.selectList("review.main_review_list3");
	}



}
