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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.human.basic.domain.PageMaker;
import com.human.basic.domain.Perfume_StoryVO;
import com.human.basic.domain.Perfume_Story_CommVO;
import com.human.basic.domain.SearchCriteria;
import com.human.basic.service.Perfume_StoryService;

@Controller
@RequestMapping(value="/4_community/")
public class Perfume_StoryController {

	@Autowired
	private Perfume_StoryService perfume_StoryService;
	
	
	// 게시글(향수이야기) 목록
	@RequestMapping(value= "story_list.do", method=RequestMethod.GET)
	public String list( Model model, @ModelAttribute("cri") SearchCriteria cri) throws Exception {
		
		// 게시글 정보 담기
		model.addAttribute("list", perfume_StoryService.list(cri));
		
		// 페이징
		PageMaker pageMaker = new PageMaker();
	    pageMaker.setCri(cri);
	    pageMaker.setTotalCount(perfume_StoryService.listCount(cri));
	    
		model.addAttribute("pagemaker", pageMaker);
	
		return "4_community/story_list";
		 
	}
	
	
	// 향수이야기 글쓰기 페이지
	@RequestMapping("story_write.do")
	public void insertBoard() {
		
	}
	
	// 향수이야기 글 등록
	@RequestMapping(value = "saveBoard.do", method = RequestMethod.POST)
	public String saveBoard( Perfume_StoryVO vo) {
		
		perfume_StoryService.saveBoard(vo);
		
		return "redirect:/4_community/story_list.do";
	}

	
	// 향수이야기 글 상세 조회
	@RequestMapping("story_view.do")
	public String getBoard_story(Perfume_StoryVO vo, Model model, @ModelAttribute("cri") SearchCriteria cri) throws Exception {
	
		// 글 등록
		model.addAttribute("board", perfume_StoryService.getBoard_story(vo));
		// 페이징, 검색 정보 저장
		model.addAttribute("cri", cri );
	
		// 댓글 출력
		List<Perfume_Story_CommVO> commList = perfume_StoryService.commList(vo.getPs_article_id());
		model.addAttribute("commList", commList );
		
		return "/4_community/story_view";		
	}
	

	// 게시글 수정 페이지로 이동
	@RequestMapping(value= "story_modify.do", method=RequestMethod.GET)
	public String updateBoardView(Perfume_StoryVO vo, Model model) {
	
		vo= perfume_StoryService.getBoard_story(vo);
		
		model.addAttribute("board", vo);
		
		return "/4_community/story_modify";
	}

	// 게시글 수정
	@RequestMapping(value= "updateBoard.do", method=RequestMethod.POST)
	public String updateBoard(Perfume_StoryVO vo, RedirectAttributes re) {
		
		perfume_StoryService.updateBoard(vo);
		re.addAttribute("user_id", vo.getUser_id());
		re.addAttribute("ps_article_id", vo.getPs_article_id());
		
		return "redirect:/4_community/story_list.do";
	}
	
	
	// 게시글 삭제
	@RequestMapping(value= "deleteBoard.do", method=RequestMethod.POST)
	public String deleteBoard(Perfume_StoryVO vo, RedirectAttributes re) {
		
		perfume_StoryService.deleteBoard(vo);
		re.addAttribute("user_id", vo.getUser_id());
		
		return "redirect:/4_community/story_list.do";
	}
	
	// 파일
	@RequestMapping("fileDown.do")
	public void fileDown(Perfume_StoryVO vo, HttpServletResponse response) throws IOException {
		
		 vo = perfume_StoryService.fileDown(vo);
	  
	      byte fileByte[] = FileUtils.readFileToByteArray(
	            new File("C:\\Users\\human\\Desktop\\springProject\\perfume_project\\src\\main\\webapp\\resources\\assets\\upload\\"+vo.getPs_fname_en()));
	    
	      response.setContentType("application/octet-stream");
	      // 길이
	      response.setContentLength(fileByte.length);
	      // 파일이름
	      response.setHeader("Content-Disposition", "attachment; fileName="+vo.getPs_fname()+";");
	      // 실제파일을 재작성
	      response.getOutputStream().write(fileByte);
	      
	      // 초기화
	      response.getOutputStream().flush();
	      // 종료
	      response.getOutputStream().close();
	}
	
	
	//댓글 목록
	@ResponseBody
	@RequestMapping("commList.do") 
    public List<Perfume_Story_CommVO> commList(int ps_article_id) throws Exception {
    	

		// 게시물에 들어가면 댓글 수 업데이트
		perfume_StoryService.commCnt(ps_article_id);
		
    	List<Perfume_Story_CommVO> list = perfume_StoryService.commList(ps_article_id);
    	return list;
    }
	
    // 댓글 등록
 	@ResponseBody
 	@RequestMapping("insertComm.do")
 	public void insertComm(Perfume_Story_CommVO commVo) throws Exception {
 
 		perfume_StoryService.insertComm(commVo);
 	}

 	// 댓글 수정
 	@ResponseBody
 	@RequestMapping("updateComm.do")
 	public void updateHyComm(Perfume_Story_CommVO commVo) throws Exception {
 		perfume_StoryService.updateComm(commVo);
 	}
 	
 	// 댓글 삭제
 	@ResponseBody
 	@RequestMapping("deleteComm.do")
 	public void deleteComm(Perfume_Story_CommVO commVo) throws Exception {
 		perfume_StoryService.deleteComm(commVo);
 	}

	
}



