package com.human.basic.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.basic.domain.Perfume_ListVO;
import com.human.basic.domain.RecommVO;

@Repository("recommDAO")
public class RecommDAOImpl implements RecommDAO{

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public int resultInsert(RecommVO vo) {
		System.out.println("===> RecommMapper resultInsert 호출");
		return mybatis.insert("recomm.resultInsert", vo);
	}
	
	// 추천제품보기
	public List<Perfume_ListVO> resultView(String include, String exc){
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("include", include);
		params.put("exclude", exc);
		
		System.out.println("===> RecommMapper search호출");
		return mybatis.selectList("recomm.search", params);
	}
}
