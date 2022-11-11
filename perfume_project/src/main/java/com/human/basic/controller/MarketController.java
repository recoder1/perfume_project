package com.human.basic.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.human.basic.domain.MarketVO;
import com.human.basic.domain.Market_CommVO;
import com.human.basic.domain.PageMaker;
import com.human.basic.domain.Perfume_StoryVO;
import com.human.basic.domain.Perfume_Story_CommVO;
import com.human.basic.domain.SearchCriteria;
import com.human.basic.service.MarketService;


@Controller
@RequestMapping(value="/4_community/")
public class MarketController {

	@Autowired
	private MarketService marketService;
	
	//게시글 목록(중고거래) 조회
	@RequestMapping(value= "market_list.do", method=RequestMethod.GET)
	public String list(Model model, @ModelAttribute("cri") SearchCriteria cri) throws Exception{
		
		model.addAttribute("list_m", marketService.list(cri));
		
		PageMaker pageMaker = new PageMaker();
	    pageMaker.setCri(cri);
	    pageMaker.setTotalCount(marketService.listCount(cri));
	    
		model.addAttribute("pagemaker_m", pageMaker);
	
		return "4_community/market_list";
	}
	
	
	// 중고거래 글쓰기 페이지
	@RequestMapping("market_write.do")
	public void insertMarket() {
		
	}
	
	// 중고거래 글 등록
	@RequestMapping(value = "saveMarket.do", method = RequestMethod.POST)
	public String saveMarket( MarketVO vo) {
		
		marketService.saveMarket(vo);
		
		return "redirect:/4_community/market_list.do";
	}

	
	// 중고거래 글 상세 조회
	@RequestMapping("market_view.do")
	public String getBoard_m(MarketVO vo, Model model, @ModelAttribute("cri") SearchCriteria cri) throws Exception {
		
		model.addAttribute("market", marketService.getBoard_m(vo));

		model.addAttribute("cri", cri );
	
		// 댓글
		List<Market_CommVO> commList = marketService.commList(vo.getM_article_id());
		model.addAttribute("commList", commList );
		
		return "/4_community/market_view";	
	}

	// 게시글 수정 페이지로 이동
	@RequestMapping(value= "market_modify.do", method=RequestMethod.GET)
	public String updateMarketView(MarketVO vo, Model model)  {
		vo = marketService.getBoard_m(vo);
		
		vo.setM_purdate(vo.getM_purdate().substring(0,10) );
		vo.setM_expdate(vo.getM_expdate().substring(0,10) );
		
		model.addAttribute("market", vo);
		
		return "/4_community/market_modify";
	}

	// 게시글 수정
	@RequestMapping(value= "updateMarket.do", method=RequestMethod.POST)
	public String updateMarket(MarketVO vo, RedirectAttributes re) {
		
		
		marketService.updateMarket(vo);
		re.addAttribute("user_id", vo.getUser_id());
		re.addAttribute("m_article_id", vo.getM_article_id());
		
		return "redirect:/4_community/market_list.do";
	}
	
	
	// 게시글 삭제
	@RequestMapping(value= "deleteMarket.do", method=RequestMethod.POST)
	public String deleteMarket(MarketVO vo, RedirectAttributes re) {
		
		marketService.deleteMarket(vo);
		re.addAttribute("user_id", vo.getUser_id());
		
		return "redirect:/4_community/market_list.do";
	}
	
	// 파일
	@RequestMapping("fileDown_m.do")
	public void fileDown_m(MarketVO vo, HttpServletResponse response) throws IOException  {
		
		 vo = marketService.fileDown(vo);
	  
	      byte fileByte[] = FileUtils.readFileToByteArray(
	            new File("C:\\Users\\human\\Desktop\\springProject\\perfume_project\\src\\main\\webapp\\resources\\assets\\upload\\"+vo.getM_fname_en()));
	    
	      response.setContentType("application/octet-stream");
	      // 길이
	      response.setContentLength(fileByte.length);
	      // 파일이름
	      response.setHeader("Content-Disposition", "attachment; fileName="+vo.getM_fname()+";");
	      // 실제파일을 재작성
	      response.getOutputStream().write(fileByte);
	      
	      // 초기화
	      response.getOutputStream().flush();
	      // 종료
	      response.getOutputStream().close();
	}

	
	
		//댓글 목록
		@ResponseBody
		@RequestMapping("commList_m.do") 
	    public List<Market_CommVO> commList(int m_article_id) throws Exception {
	    	
	    	// 게시물에 들어가면 댓글 수 업데이트
	    	marketService.commCnt(m_article_id);
			
	    	List<Market_CommVO> list = marketService.commList(m_article_id);
	    	return list;
	    }
		
	    // 댓글 등록
	 	@ResponseBody
	 	@RequestMapping("insertComm_m.do")
	 	public void insertComm(Market_CommVO commVo) throws Exception {
	 
	 		marketService.insertComm(commVo);
	 	}

	 	// 댓글 수정
	 	@ResponseBody
	 	@RequestMapping("updateComm_m.do")
	 	public void updateHyComm(Market_CommVO commVo) throws Exception {
	 		marketService.updateComm(commVo);
	 	}
	 	
	 	// 댓글 삭제
	 	@ResponseBody
	 	@RequestMapping("deleteComm_m.do")
	 	public void deleteComm(Market_CommVO commVo) throws Exception {
	 		marketService.deleteComm(commVo);
	 	}
	
	
	
	
	
	

	
	
	
}
