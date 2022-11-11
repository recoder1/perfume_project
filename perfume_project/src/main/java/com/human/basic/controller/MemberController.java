package com.human.basic.controller;

import java.util.Enumeration;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.human.basic.domain.MemberVO;
import com.human.basic.service.HyangstaService;
import com.human.basic.service.MemberService;

@Controller
@RequestMapping("/user/") 
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private HyangstaService hyangstaService;
	
	@RequestMapping("6_myPage_sign-up.do")
	public void joinSignUpPage() {
		System.out.println("회원가입 페이지 호출");
	}
	
	@RequestMapping("6_myPage_login.do")
	public void joinLoginPage() {
		System.out.println("로그인 페이지 호출");
	}
	
	
	
	
	@RequestMapping(value = "{url}.do")
	public String memberConn(@PathVariable String url) {
		System.out.println("호출");
		return "/user/" + url;
	}
	
	// 회원가입
	@RequestMapping("userInsert.do")
	public ModelAndView userInsert(MemberVO vo) {
		
		// db 접근
		int result = memberService.userInsert(vo);
		
		String message ="가입되지않았습니다.";
		
		if(result>0) {
			message = vo.getName() + " 님 , 가입에 성공했습니다.";
		}
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/6_myPage_login");
		return mv;
	}
	
	// 마이페이지 유저정보 수정
	@RequestMapping("memberUpdate.do")
	public ModelAndView memberUpdate(MemberVO vo) {
	
		
		try {
			
			int result = memberService.memberUpdate(vo);
			
			if(result>0) { 
				System.out.println("업데이트 성공");
			}
			
			ModelAndView mv = new ModelAndView();
			mv.setViewName("redirect:/home/home.do");
			return mv;
			
		}catch (Exception e) {
			
			e.printStackTrace();
			
			ModelAndView mv = new ModelAndView();
			mv.setViewName("redirect:/home/home.do");
			return mv;
			
		}
	}
	
	// 탈퇴
	@RequestMapping("memberDelete.do")
	public ModelAndView memberDelete(MemberVO vo) {
		
		System.out.println("탈퇴 아이디 >> " + vo.getUser_id());
		// 팔로워 수 변화 >> 탈퇴유저가 팔로잉하고 있는 유저의 팔로워 수 변화
		hyangstaService.deleteFollower(vo);
		// 팔로잉 수 변화 >> 탈퇴한 유저를 팔로잉 하고 있는 유저의 팔로잉 수 변화
		hyangstaService.deleteFollowing(vo);
		
		int result = memberService.memberDelete(vo);
		
		if (result>0) {
			System.out.println("탈퇴성공!");
		}
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/logout_ok");
		return mv;
	}
	
	// 비동기 통신 // 중복 id 실시간 검사
	@RequestMapping(value = "idCheck.do", produces = "application/text; charset=utf8")
		@ResponseBody
		public String idCheck(MemberVO vo) {
		
		MemberVO resultVO = memberService.idCheck(vo);
		
		String result = "사용가능한 ID 입니다.";
		if(resultVO != null) result ="중복된 ID 입니다.";
		
		return result;
				
	}
	
	// 비동기 통신 // 중복 이메일 실시간 검사
		@RequestMapping(value = "emailCheck.do", produces = "application/text; charset=utf8")
			@ResponseBody
			public String emailCheck(MemberVO vo) {
			
			MemberVO resultVO = memberService.emailCheck(vo);
			
			String result = "사용가능한 이메일 입니다.";
			if(resultVO != null) result ="중복된 이메일 입니다.";
			
			return result;
					
		}
		
		// 비동기 통신 // 중복 닉네임 실시간 검사
			@RequestMapping(value = "nicknameCheck.do", produces = "application/text; charset=utf8")
				@ResponseBody
				public String nicknameCheck(MemberVO vo) {
				
				MemberVO resultVO = memberService.nicknameCheck(vo);
				
				String result = "사용가능한 닉네임 입니다.";
				if(resultVO != null) result ="중복된 닉네임 입니다.";
				
				return result;
						
			}
	// 로그인
	@RequestMapping("login.do")
	public String login(MemberVO vo, HttpSession session) {
		System.out.println("로그인 시도");
		
		MemberVO result = memberService.login_check(vo);
		
		if (result != null) {
			System.out.println("[ "+ result.getUser_id()+" ] 로그인 성공");
			
			session.setAttribute("user_id", result.getUser_id());
			session.setAttribute("user_password", result.getUser_password());
			session.setAttribute("email", result.getEmail());
	        session.setAttribute("nickname", result.getNickname());
	        session.setAttribute("tel", result.getTel());
	        session.setAttribute("name", result.getName());
	        session.setAttribute("user_fname", result.getUser_fname());
	        session.setAttribute("user_fname_en", result.getUser_fname_en());
	        session.setAttribute("h_follower", result.getH_follower());
	        session.setAttribute("h_following", result.getH_following());
	        
	        Enumeration<?> e = session.getAttributeNames();
	        while(e.hasMoreElements()) {
	        	String sa = (String)e.nextElement();
	        	System.out.println("session.getAttribute("+sa+"):"+session.getAttribute(sa));
		}
	        
	        return "/user/login_ok";
	} else {
		System.out.println("로그인 실패");
		
		session.setAttribute("loginFailed", "failed");
			
	    Enumeration<?> e = session.getAttributeNames();
        while(e.hasMoreElements()) {
        	String sa = (String)e.nextElement();
        	System.out.println("session.getAttribute("+sa+"):"+session.getAttribute(sa)); 
        }
	
        return "user/6_myPage_login";
        
	}		
}
	
	// 로그아웃
	@RequestMapping("logout_ok.do")
	public String logout() {
		return "user/logout_ok";
	}
	
	
	
}