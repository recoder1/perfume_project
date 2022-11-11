package com.human.basic.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.basic.dao.MemberDAOImpl;
import com.human.basic.domain.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberDAOImpl memberDAO;
	
	
	  
	// 회원가입
   public int userInsert(MemberVO vo){
	  return memberDAO.memberInsert(vo);
   }
	   
	//member 정보 수정
   	public int memberUpdate(MemberVO vo) {
	   System.out.println("MemberServiceImpl>>> 호출");
	   return memberDAO.memberUpdate(vo);
	}
	   
	// 회원탈퇴
   @Override
   public int memberDelete(MemberVO vo) {
	   return memberDAO.memberDelete(vo);
   }
   
   // 비동기통신 id 중복검사
	@Override
	public MemberVO idCheck(MemberVO vo) {
		return memberDAO.idCheck(vo);
	}

	
	@Override
	public MemberVO login_check(MemberVO vo) {
		// TODO Auto-generated method stub
		return memberDAO.memberLogin(vo);
	}

	// 비동기 통신 email 중복검사
	@Override
	public MemberVO emailCheck(MemberVO vo) {
		// TODO Auto-generated method stub
		return memberDAO.emailCheck(vo);
	}
	
	// 비동기통신 nickname 중복검사
	@Override
	public MemberVO nicknameCheck(MemberVO vo) {
		// TODO Auto-generated method stub
		return memberDAO.nicknameCheck(vo);
	}



	
	


	    
	  
} 
