package com.human.basic.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.human.basic.domain.FollowVO;
import com.human.basic.domain.Hyangsta_CommVO;
import com.human.basic.domain.Hyangsta_PostVO;
import com.human.basic.domain.MemberVO;
import com.human.basic.service.HyangstaService;

@Controller()
@RequestMapping(value = {"/hyangsta/", "/home/"})
public class HyangstaController {

	@Autowired
	private HyangstaService hyangstaService;
		
	// 단순 화면이동
	@RequestMapping("{step}.do")
	public void hyangsta_writePost(@PathVariable String step) {
	}

	// 포스트 등록
	@RequestMapping("saveHyPost.do")
	public String saveHyPost(Hyangsta_PostVO vo, RedirectAttributes re) {
		// vo : file / hp_content / hp_tag / user_id
		hyangstaService.insertHyPost(vo);
		re.addAttribute("user_id", vo.getUser_id());
		return "redirect:/hyangsta/5_hyangsta_userlist.do";
	}
	
	// 포스트 수정 화면 이동
	@RequestMapping("5_hyangsta_updatePost.do")
	public void hyangsta_updatePost(Hyangsta_PostVO vo, Model model) {
		// vo : hpost_id
		model.addAttribute("hPost", hyangstaService.getHyPost(vo) );
	}
	
	// 포스트 수정
	@RequestMapping("updateHyPost.do")
	public String updateHyPost(Hyangsta_PostVO vo, RedirectAttributes re) {
		// vo : hpost_id / user_id >> 사진 수정시 hp_fname / hp_fname_en / hp_fsize
		// 사진 수정하면 기존 사진 삭제하기
		if( vo.getHp_fname_en() != null) {
			Hyangsta_PostVO vo1 = hyangstaService.getHyPost(vo);
			File f = new File("C:\\Users\\human\\Desktop\\springProject\\perfume_project\\src\\main\\webapp\\resources\\5_hy_img\\"+vo1.getHp_fname_en());
			f.delete();
		}
		hyangstaService.updateHyPost(vo);		
		re.addAttribute("user_id", vo.getUser_id());
		re.addAttribute("hpost_id", vo.getHpost_id());
		return "redirect:/hyangsta/5_hyangsta_viewPost.do";
	}
	
	// 포스트 삭제
	@RequestMapping("deleteHyPost.do")
	public String deleteHypost(Hyangsta_PostVO vo, RedirectAttributes re) {
		// vo : hpost_id / user_id / hp_fname_en
		// 이미지 삭제
		File f = new File("C:\\Users\\human\\Desktop\\springProject\\perfume_project\\src\\main\\webapp\\resources\\5_hy_img\\"+vo.getHp_fname_en());
		f.delete();
		// 포스트 삭제
		hyangstaService.deleteHyPost(vo);
		re.addAttribute("user_id", vo.getUser_id());
		return "redirect:/hyangsta/5_hyangsta_userlist.do";
	}
	
	// 포스트 보기
	@RequestMapping("5_hyangsta_viewPost.do")
	public void getHyPost(Hyangsta_PostVO vo, Model model, HttpSession session) {
		// vo : hpost_id / user_id (포스트 유저 아이디)
		// 향스타 포스트
		vo = hyangstaService.getHyPost(vo);
		model.addAttribute("hPost", vo );
		// 해시태그
		if(vo.getHp_tag() != null) {
			String hp_tag = vo.getHp_tag();
			String tag[] = hp_tag.split("#");
			model.addAttribute("tag", tag);			
		}
		// 유저 정보
		model.addAttribute("hUser", hyangstaService.getUser(vo.getUser_id()) ) ;
		// 댓글 조회
		List<Hyangsta_CommVO> hclist = hyangstaService.getHyComm(vo);
		model.addAttribute("hclist", hclist);
		// 댓글 갯수 조회
		model.addAttribute("hyCommCnt", hyangstaService.getHyCommCnt(vo));
		// 좋아요 조회 >> 로그인 되어있을 경우에만 
		if( session.getAttribute("user_id") != null ) { // 로그인 확인
			vo.setUser_id( (String)session.getAttribute("user_id") ); // user_id 를 로그인 id 로 바꿔준다
			if( hyangstaService.getHyLike(vo) != null) { // 좋아요 누른 경우
				model.addAttribute("hylike", 1);				
			}
		}
	}
	
	// 유저 향스타 >> 첫 화면
	@RequestMapping("5_hyangsta_userlist.do")
	public void getUserHyPostList(FollowVO vo, Model model, HttpSession session) { // Hyangsta_PostVO
		// vo : user_id / sNum
		model.addAttribute("hPostCnt", hyangstaService.getUserHyPostCnt(vo));	// 향스타 포스트 갯수
		// 유저 정보
		model.addAttribute("hUser", hyangstaService.getUser(vo.getUser_id()) );  // 팔로워 팔로잉 수 있음

		// 로그인 되어있을 때, 로그인유저랑 향스타 유저랑 다를 경우만 팔로우 유무 판단해서 팔로우/언팔로우 보여줘야함
		if(  session.getAttribute("user_id") != null && !session.getAttribute("user_id").equals(vo.getUser_id()) ) {
			vo.setFollowing_id( vo.getUser_id() );
			vo.setUser_id( (String)session.getAttribute("user_id") );
			if( hyangstaService.getHyFollow(vo) == null) {
				model.addAttribute("hyfollow", 0);				
			}else {
				model.addAttribute("hyfollow", 1);								
			}
			
		}
	}
	
	// 유저 향스타 >> 피드 스크롤
	@ResponseBody
	@RequestMapping("5_hyangsta_userlist2.do")
	public List<Hyangsta_PostVO> getUserHyPostList2(FollowVO vo) {
		// vo : sNum, user_id
		List<Hyangsta_PostVO> hplist = hyangstaService.getUserHyPostList(vo);	// 향스타 포스트
		return hplist;
	}
	
	// 유저 향스타 >> 팔로워 스크롤
	@ResponseBody
	@RequestMapping("getUserfwerList.do")
	public List<MemberVO> getUserfwerList(FollowVO vo) {
		// vo : sNum, user_id
		List<MemberVO> fwerlist = hyangstaService.getHyFollower(vo); // 팔로잉 목록 
		return fwerlist;
	}
	
	// 유저 향스타 >> 팔로잉 스크롤
	@ResponseBody
	@RequestMapping("getUserfingList.do")
	public List<MemberVO> getUserfingList(FollowVO vo) {
		// vo : sNum, user_id
		List<MemberVO> finglist = hyangstaService.getHyFollowing(vo); // 팔로잉 목록 
		return finglist;
	}
	
	// 팔로잉 향스타 목록 >> 첫 화면, 검색 시
	@RequestMapping("5_hyangsta_followPList.do")
	public void getMyFowPostList(Hyangsta_PostVO vo, Model model, String searchCondition, String searchKeyword) {
		// vo : user_id / sNum
		HashMap map = new HashMap(); // 검색어를 위한 변수 
		map.put("searchCondition", searchCondition);	// (키, 값)
		map.put("searchKeyword", searchKeyword); 
		map.put("user_id", vo.getUser_id());
		
		model.addAttribute("hyfPostCnt", hyangstaService.getHyFPostCnt(map) ); // 포스트 갯수 조회
		model.addAttribute("searchCondition", searchCondition); // 검색
		model.addAttribute("searchKeyword", searchKeyword);		// 검색어
	}
	
	// 팔로잉  향스타 목록 >> 스크롤 페이징
	@ResponseBody
	@RequestMapping("5_hyangsta_followPList2.do")
	public List<Hyangsta_PostVO> getMyFowPostList2(Hyangsta_PostVO vo, Model model, String searchCondition, String searchKeyword) {
		// vo : sNum / user_id
		if( searchKeyword != null) {
			searchKeyword = searchKeyword.replaceAll("'", "''");
		}
		
		HashMap map = new HashMap(); // 검색어를 위한 변수 
		map.put("searchCondition", searchCondition);	// (키, 값)
		map.put("searchKeyword", searchKeyword);
		map.put("user_id", vo.getUser_id());
		map.put("sNum", vo.getSNum());
		
		List<Hyangsta_PostVO> hfplist = hyangstaService.getMyFowPostList(map);
		return hfplist;
	}
	
	
	// 향스타 홈 화면 >> 첫 화면 / 검색 시
	@RequestMapping("5_hyangsta_all.do")
	public void getHyPostList(Hyangsta_PostVO vo, Model model, String searchCondition, String searchKeyword) {
		if( searchKeyword != null) {
			searchKeyword = searchKeyword.replaceAll("'", "''");
		}
		HashMap map = new HashMap(); // 검색어를 위한 변수 
		map.put("searchCondition", searchCondition); // (키, 값)
		map.put("searchKeyword", searchKeyword);
		map.put("sNum", vo.getSNum());
		
		model.addAttribute("hyPostCnt", hyangstaService.getHyPostCnt(map) ); // 포스트 갯수 조회
		model.addAttribute("searchCondition", searchCondition); // 검색
		model.addAttribute("searchKeyword", searchKeyword);	// 검색어
	}

	// 향스타 홈 화면 2 >> 스크롤  페이징
	@ResponseBody
	@RequestMapping("5_hyangsta_all2.do")
	public List<Hyangsta_PostVO> getHyPostList2(Hyangsta_PostVO vo, Model model, String searchCondition, String searchKeyword) {
		HashMap map = new HashMap(); // 검색어를 위한 변수 
		map.put("searchCondition", searchCondition);	// (키, 값)
		map.put("searchKeyword", searchKeyword);
		map.put("sNum", vo.getSNum());
		
		List<Hyangsta_PostVO> hplist = hyangstaService.getHyPostList(map); // 포스트 조회
		return hplist;
	}
	
	// 댓글 조회
	@ResponseBody
	@RequestMapping("getHyComm.do")
	public List<Hyangsta_CommVO> getHyComm(Hyangsta_PostVO vo) {
		// vo : hpost_id / sNum
		List<Hyangsta_CommVO> hclist = hyangstaService.getHyComm(vo);
		return hclist;
	}
	
	// 댓글 등록
	@ResponseBody
	@RequestMapping("saveHyComm.do")
	public void saveHyComm(Hyangsta_CommVO vo) {
		// vo : hpost_id / hc_user_id / hc_content
		hyangstaService.saveHyComm(vo);
	}
	
	// 댓글 삭제
	@ResponseBody
	@RequestMapping("deleteHyComm.do")
	public void deleteHyComm(Hyangsta_CommVO vo) {
		// vo : hcomment_id /hpost_id
		hyangstaService.deleteHyComm(vo);
	}
	
	// 댓글 수정
	@ResponseBody
	@RequestMapping("updateHyComm.do")
	public void updateHyComm(Hyangsta_CommVO vo) {
		// vo : hcomment_id / hc_content
		hyangstaService.updateHyComm(vo);
	}
	
	// 팔로잉 조회
	@ResponseBody
	@RequestMapping("getHyFollow.do")
	public int getHyFollow(FollowVO vo) {
		// vo : user_id(로그인 아이디) / following_id(유저 아이디)
		if( hyangstaService.getHyFollow(vo) == null) {
			return 0;	// 팔로우 안하고 있을 경우
		}else {
			return 1;	// 팔로우 하고 있을 경우
		}
	}
	
	// 팔로우 등록
	@ResponseBody
	@RequestMapping("saveHyFollow.do")
	public MemberVO saveHyFollow(FollowVO vo){
		// vo : user_id / following_id
		hyangstaService.saveHyFollow(vo); // 팔로우 등록
		hyangstaService.updateFwerCntUp(vo); // 팔로워 수 증가
		hyangstaService.updateFingCntUp(vo); // 팔로잉 수 증가
		return hyangstaService.getUser(vo.getFollowing_id()); // following_id 유저 정보
	}
	
	// 팔로우 취소
	@ResponseBody
	@RequestMapping("deleteHyFollow.do")
	public MemberVO deleteHyFollow(FollowVO vo) {
		// vo : user_id / following_id
		hyangstaService.deleteHyFollow(vo); // 팔로우 취소
		hyangstaService.updateFwerCntDown(vo); // 팔로워 수 감소
		hyangstaService.updateFingCntDown(vo); // 팔로잉 수 감소
		return hyangstaService.getUser(vo.getFollowing_id()); // following_id 유저 정보
	}
	
	// 좋아요 조회
	@ResponseBody
	@RequestMapping("getHyLike.do")
	public int getHyLike(Hyangsta_PostVO vo) {
		// vo : user_id / hpost_id
		if( hyangstaService.getHyLike(vo) == null ) { // 좋아요 안 누른 경우
			return 0;
		}else { // 좋아요 누른 경우
			return 1;
		}
	}
	// 좋아요 등록
	@ResponseBody
	@RequestMapping("saveHyLike.do")
	public Hyangsta_PostVO saveHyLike(Hyangsta_PostVO vo) {
		// vo : user_id / hpost_id
		hyangstaService.saveHyLike(vo); // 좋아요 등록
		hyangstaService.updateHyLikeUp(vo); // 좋아요 수 증가
		return hyangstaService.getHyPost(vo); // 포스트 조회
	}
	
	// 좋아요 취소
	@ResponseBody
	@RequestMapping("deleteHyLike.do")
	public Hyangsta_PostVO deleteHyLike(Hyangsta_PostVO vo) {
		// vo : user_id / hpost_id
		hyangstaService.deleteHyLike(vo); // 좋아요 취소
		hyangstaService.updateHyLikeDown(vo); // 좋아요 수 감소
		return hyangstaService.getHyPost(vo); // 포스트 조회
	}
	
}
