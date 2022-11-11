package com.human.basic.service;

import com.human.basic.domain.MemberVO;

public interface MemberService {
	//회원가입
	public int userInsert(MemberVO vo);
	//회원 정보 수정
	public int memberUpdate(MemberVO vo);
	//회원 탈퇴
	public int memberDelete(MemberVO vo);
	//아이디 실시간 중복검사
	public MemberVO idCheck(MemberVO vo);
	//이메일 실시간 중복검사
	public MemberVO emailCheck(MemberVO vo);
	//닉네임 실시간 중복검사
	public MemberVO nicknameCheck(MemberVO vo);
	
	public MemberVO login_check(MemberVO vo);
}
