package com.human.basic.dao;

import java.util.List;

import com.human.basic.domain.Perfume_ListVO;

public interface Perfume_ListDAO {
	
	// 모든 향수정보 보기
	List<Perfume_ListVO> perfumeView();

}
