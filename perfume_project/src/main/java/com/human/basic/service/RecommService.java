package com.human.basic.service;

import java.util.List;

import com.human.basic.domain.Perfume_ListVO;
import com.human.basic.domain.RecommVO;

public interface RecommService {
	
	public int testResultInsert(RecommVO vo);
	public List<Perfume_ListVO> compare(RecommVO vo);

}
