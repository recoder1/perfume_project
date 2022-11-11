package com.human.basic.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.human.basic.domain.Hyangsta_PostVO;
import com.human.basic.domain.MemberVO;
import com.human.basic.domain.PageMakerGyu;
import com.human.basic.domain.ProductListVO;
import com.human.basic.domain.ReviewVO;
import com.human.basic.domain.SearchCriteriaGyu;
import com.human.basic.service.HyangstaService;
import com.human.basic.service.MemberServiceImpl;
import com.human.basic.service.ProductListServiceImpl;
import com.human.basic.service.ReviewServiceImpl;

@Controller
public class ProductListController {

	@Autowired
	private ProductListServiceImpl productListService;
	
	@Autowired
	private ReviewServiceImpl reviewService;
	
	@Autowired
	private MemberServiceImpl memberService;
	
	@Autowired
	private HyangstaService hyangstaService;
	
	// page : learn_about < 요 글자
	@RequestMapping("learn/{page}.do")
	public String learn_about(@PathVariable String page) {
		
		System.out.println("향수공부컨트롤");
		return "learn/"+page;
	}
	
	// page : productList_shop < 요 글자
	@RequestMapping("product/{page}.do")
	public String productList_shop(@PathVariable String page) {
		
		System.out.println("키키 성공이다!!");
		return "product/"+page;
	}
	
	// 리뷰 올리기
	@ResponseBody
	@RequestMapping("product/review_upload.do")
	public Object review_upload(ReviewVO vo) {
		
		reviewService.review_upload(vo);
		
		return "redirect:/product/review_list.do";
	}
	
	// 상세페이지
	@RequestMapping("product/review_list.do")
	public String review_list(Model model, ProductListVO vo, ReviewVO rvo, MemberVO mem) {
		
		// vo : productid
		// 상단 브랜드
		model.addAttribute("brands", productListService.product_brand());		
		
		// 제품이랑 상세페이지 연결
		ProductListVO p_list = productListService.pro_list(vo);		
		model.addAttribute("pro_list", p_list);
		
		// 리뷰
		List<ReviewVO> re_list = reviewService.review_list(rvo);
		model.addAttribute("re_list", re_list);
		
		// 리뷰 총 갯수
		int review_cnt = reviewService.review_cnt(rvo);
		model.addAttribute("review_cnt", review_cnt);
		
		// 향스타 불러오기 >> 해시태그에 제품명 있으면 검색해줌 최대 15개
		String keyword = p_list.getProduct_name().replaceAll(" ","").replaceAll("'","''");

		HashMap map = new HashMap(); // 검색어를 위한 변수
		map.put("searchCondition", "hp_tag"); // (키, 값)
		map.put("searchKeyword", keyword );
		map.put("sNum", 1);

		List<Hyangsta_PostVO> hplist = hyangstaService.getHyPostList(map);
		model.addAttribute("hplist", hplist);
		
		return "product/productList_product-details";
	}
	
	// 리뷰 수정
	@RequestMapping("product/review_update.do")
	@ResponseBody
	public String review_revise(ReviewVO vo) {
		System.out.println("수정컨트롤");
		
		reviewService.review_update(vo);
		
		return "product/productList_product-details";
	}
	
	// 리뷰 삭제
	@RequestMapping("product/review_delete.do")
	@ResponseBody
	public Object review_delete(ReviewVO vo) {
		System.out.println("삭제컨트롤");
		reviewService.review_delete(vo);
		
		HashMap map = new HashMap();

		// 새롭게 만들든가 변경하든가 > 선택된 제품의 리뷰만 나오도록 재생성
		List<ReviewVO> re_list = reviewService.review_list(vo);		

		map.put("re_list", re_list);
		
		return map;
		
	}
	
	//=================================================
	
	// 제품 리스트 불러오기
	@RequestMapping(value= "product/product_list.do", method=RequestMethod.GET)
	public String product_list(Model model, @ModelAttribute("cri") SearchCriteriaGyu cri) throws Exception {
		// 제품들 불러옴
		System.out.println("페이징 시도중...컨트롤");
		System.out.println(""+cri.getBrand());
		model.addAttribute("list", productListService.product_list(cri));
		
		// 페이징
		PageMakerGyu pm = new PageMakerGyu();
		pm.setCri(cri);
		pm.setTotalCount(productListService.getListCnt(cri));
		model.addAttribute("pagemaker", pm);
		
		// 상단 브랜드
		model.addAttribute("brands", productListService.product_brand());
		
		// 브랜드 누르고 정렬
		
		
		return "product/productList_shop";
	}
	
	
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
