package com.human.basic.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.basic.domain.Perfume_ListVO;

@Repository("perfume_ListDAO")
public class Perfume_ListDAOImpl implements Perfume_ListDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public List<Perfume_ListVO> perfumeView(){
		System.out.println("===> ProductMapper perfumeView 호출");
		return mybatis.selectList("perfumeList.perfumeView");
	}
	
}
