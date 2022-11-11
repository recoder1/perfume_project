package com.human.basic.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.basic.domain.MemberVO;

@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 회원가입
	@Override
	public int memberInsert(MemberVO vo) {
		return mybatis.insert("user.userInsert" , vo);
	}
	
	// 비동기통신 id 중복 검사
	@Override
	public MemberVO idCheck(MemberVO vo) {
		return mybatis.selectOne("user.idCheck", vo);
	}

	// 비동기통신 email 중복 검사
	@Override
	public MemberVO emailCheck(MemberVO vo) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("user.emailCheck", vo);
	}
	
	// 비동기통신 nickname 중복 검사
	@Override
	public MemberVO nicknameCheck(MemberVO vo) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("user.nicknameCheck", vo);
	}
	
	// 로그인
	@Override
	public MemberVO memberLogin(MemberVO vo) {
		System.out.println("로그인 호출");
		return mybatis.selectOne("user.userLogin", vo);
	}
	
	// 회원 정보수정
	@Override
	public int memberUpdate(MemberVO vo) {
		System.out.println("MemberDAOImpl 회원정보 업데이트 호출");
		return mybatis.update("user.memberInfoChange" , vo);
	}
	
	// 회원 탈퇴
	@Override
	public int memberDelete(MemberVO vo) {
		System.out.println("탈퇴기능 호출");
		return mybatis.delete("user.memberDelete",vo);
	}

	
	
	
	
	

	
}
