package com.human.basic.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.basic.domain.MemberVO;
import com.human.basic.domain.Perfume_ListVO;
import com.human.basic.service.Perfume_ListService;

@Controller
@RequestMapping("/perfumeList/")
public class Perfume_ListController {

	@Autowired
	private Perfume_ListService perfume_ListService;
	
	
//	@RequestMapping(value="{url}.do")
//	public void productListConn(@PathVariable String url) {
//		System.out.println("퍼퓸리스트 호출");
//		// return "/perfumeList/"+url;
//	}
	
	@RequestMapping("perfumeList_view.do")
	public String getPerfumeView(Model model) {
			
		List<Perfume_ListVO> pList = perfume_ListService.perfumeView();
		model.addAttribute("list", pList);
		return "/perfumeList/perfumeList_view";		
	
	}
}
