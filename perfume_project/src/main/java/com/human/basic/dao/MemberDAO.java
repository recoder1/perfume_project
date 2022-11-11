package com.human.basic.dao;

import com.human.basic.domain.MemberVO;

public interface MemberDAO {
	
	// 회원 가입 기능
	int memberInsert(MemberVO vo);
	
	// 회원 정보 수정
	int memberUpdate(MemberVO vo);
	
	// 회원 탈퇴 기능
	int memberDelete(MemberVO vo);
	
	// id 중복체크
	MemberVO idCheck(MemberVO vo);
	
	// 이메일 중복체크
	MemberVO emailCheck(MemberVO vo);
	
	// 닉네임 중복체크
	MemberVO nicknameCheck(MemberVO vo);
	
	// 로그인 확인
	MemberVO memberLogin(MemberVO vo);
	
	
	
}
