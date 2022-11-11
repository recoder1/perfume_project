package com.human.basic.dao;


import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.basic.domain.ProductListVO;
import com.human.basic.domain.SearchCriteriaGyu;

@Repository("productListDAO")
public class ProductListDAOImpl implements ProductListiDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public ProductListVO pro_list(ProductListVO vo) {
		System.out.println("작은리스트다오");
		return mybatis.selectOne("product_list.pro_list", vo);
	}
	
	@Override
	public List<ProductListVO> product_list(SearchCriteriaGyu cri) {
		System.out.println("모든게시글다오");
		System.out.println("cri "+ cri.getBrand());
		if(cri.getBrand().equals("Malin Goetz")) {
			cri.setBrand(cri.getBrand().replace("Malin ", "Malin+"));
			return mybatis.selectList("product_list.p_list", cri);
		}
		if(cri.getKeyword().isEmpty()) {
			return mybatis.selectList("product_list.p_list", cri);			
		}else {
			return mybatis.selectList("product_list.search", cri);
		}
		
	} 

	@Override
	public int getListCnt(SearchCriteriaGyu cri) {
		System.out.println("게시글 총 갯수 다오");
		if(cri.getKeyword().isEmpty()) {
			return mybatis.selectOne("product_list.getListCnt", cri);			
		}else {
			return mybatis.selectOne("product_list.searchCnt", cri);
		}
	}

	@Override
	public List<ProductListVO> product_brand() {
		System.out.println("브랜드다오");
		return mybatis.selectList("product_list.product_brand");
	}



	
	
}
