package com.human.basic.dao;

import java.util.List;

import com.human.basic.domain.ProductListVO;
import com.human.basic.domain.SearchCriteriaGyu;

public interface ProductListiDAO {

	// 제품 리스트 불러오기
	List<ProductListVO> product_list(SearchCriteriaGyu cri);
	
	// 클릭한 제품 정보 불러오기
	ProductListVO pro_list(ProductListVO vo);

	// 게시글 갯수
	int getListCnt(SearchCriteriaGyu cri);
	
	// 브랜드 출력
	List<ProductListVO> product_brand();

}
 