package com.human.basic.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.basic.dao.ProductListDAOImpl;
import com.human.basic.domain.ProductListVO;
import com.human.basic.domain.SearchCriteriaGyu;

@Service("productListService")
public class ProductListServiceImpl implements ProductListService {

	@Autowired
	private ProductListDAOImpl productListDAO;

	@Override
	public ProductListVO pro_list(ProductListVO vo) {
		System.out.println("작은리스트서비스");
		return productListDAO.pro_list(vo);
	}
	
	@Override
	public List<ProductListVO> product_list(SearchCriteriaGyu cri) {
		System.out.println("모든게시글서비스");
		return productListDAO.product_list(cri);
	}

	@Override
	public int getListCnt(SearchCriteriaGyu cri) {
		System.out.println("게시글 총 갯수 서비스");
		return productListDAO.getListCnt(cri);
	}

	@Override
	public List<ProductListVO> product_brand() {
		return productListDAO.product_brand();
	}

	
	


}
