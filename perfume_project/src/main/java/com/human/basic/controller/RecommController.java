package com.human.basic.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.human.basic.domain.Perfume_ListVO;
import com.human.basic.domain.RecommVO;
import com.human.basic.service.RecommService;

@Controller
@RequestMapping("/recommendation/")
public class RecommController {

	@Autowired
	private RecommService recommService;
	
//	인덱스에서 향수추천 눌렀을 때 이동시키게 하는 맵핑
	@RequestMapping("3_questions.do")
	public String testStart() {
		return "recommendation/3_questions";
	}
	
	@RequestMapping("resultAnalysis.do")
	public String testResultAnalysis(RecommVO vo, Model model) {		
		
		System.out.println("취향테스트 결과 분석 중");
		
		int result = recommService.testResultInsert(vo);

		String code = "";
		
//		if (result > 0) {
			
			code = vo.getResult_code();
			System.out.println(code);

			List<Perfume_ListVO> recommended = recommService.compare(vo);
			
//		}
		
		model.addAttribute("recommList", recommended);
		return "recommendation/3_result_view";
		
	}
	
	
	
}
