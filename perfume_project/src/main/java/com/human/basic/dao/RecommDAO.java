package com.human.basic.dao;

import java.util.List;

import com.human.basic.domain.Perfume_ListVO;
import com.human.basic.domain.RecommVO;

public interface RecommDAO {

	// 취향테스트로 추천하기
	int resultInsert(RecommVO vo);
	
	// 추천제품보기
	List<Perfume_ListVO> resultView(String include, String exc);
}
