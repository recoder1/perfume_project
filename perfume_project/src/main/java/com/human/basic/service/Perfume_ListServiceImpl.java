package com.human.basic.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.basic.dao.Perfume_ListDAO;
import com.human.basic.dao.Perfume_ListDAOImpl;
import com.human.basic.domain.Perfume_ListVO;

@Service("perfume_ListService")
public class Perfume_ListServiceImpl implements Perfume_ListService{

	@Autowired
	private Perfume_ListDAOImpl perfume_ListDAO;
	
	   public List<Perfume_ListVO> perfumeView() {
		   return perfume_ListDAO.perfumeView();
	   }
}

