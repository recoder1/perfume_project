package com.human.basic.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.basic.dao.HyangstaDAO;
import com.human.basic.domain.FollowVO;
import com.human.basic.domain.Hyangsta_CommVO;
import com.human.basic.domain.Hyangsta_LikeVO;
import com.human.basic.domain.Hyangsta_PostVO;
import com.human.basic.domain.MemberVO;

@Service("hyangstaService")
public class HyangstaServiceImpl implements HyangstaService{

	@Autowired
	private HyangstaDAO hyangstaDAO;
	
	@Override // 유저 정보
	public MemberVO getUser(String user_id) {
		return hyangstaDAO.getUser(user_id);
	}

	@Autowired// 메인화면 포스트 조회
	public List<Hyangsta_PostVO> getMainHyPost(){
		return hyangstaDAO.getMainHyPost();
	}
	
	@Override // 포스트 등록
	public void insertHyPost(Hyangsta_PostVO vo) {
		hyangstaDAO.insertHyPost(vo);
	}
		
	@Override // 포스트 보기
	public Hyangsta_PostVO getHyPost(Hyangsta_PostVO vo) {
		return hyangstaDAO.getHyPost(vo);
	}
	
	@Override // 포스트 수정
	public void updateHyPost(Hyangsta_PostVO vo) {
		hyangstaDAO.updateHyPost(vo);
	}

	@Override // 포스트 삭제
	public void deleteHyPost(Hyangsta_PostVO vo) {
		hyangstaDAO.deleteHyPost(vo);
	}

	@Override // 팔로우한 향스타 목록 조회
	public List<Hyangsta_PostVO> getMyFowPostList(HashMap map) {
		return hyangstaDAO.getMyFowPostList(map);
	}
	
	@Override // 팔로우한 포스트 갯수 조회
	public int getHyFPostCnt(HashMap map) {
		return hyangstaDAO.getHyFPostCnt(map);
	}
	
	@Override // 유저 향스타 목록 조회
	public List<Hyangsta_PostVO> getUserHyPostList(FollowVO vo) {
		return hyangstaDAO.getUserHyPostList(vo);
	}
	@Override // 유저 향스타 목록 갯수 조회
	public int getUserHyPostCnt(FollowVO vo) {
		return hyangstaDAO.getUserHyPostCnt(vo);
	}
	@Override // 전체 향스타 목록 조회
	public List<Hyangsta_PostVO> getHyPostList(HashMap map) {
		return hyangstaDAO.getHyPostList(map);
	}
	
	@Override // 전체 포스트 갯수 조회
	public int getHyPostCnt(HashMap map) {
		return hyangstaDAO.getHyPostCnt(map);
	}
	
	@Override // 댓글 등록
	public void saveHyComm(Hyangsta_CommVO vo) {
		hyangstaDAO.saveHyComm(vo);
	}
	
	@Override // 댓글 수정
	public void updateHyComm(Hyangsta_CommVO vo) {
		hyangstaDAO.updateHyComm(vo);
	}

	@Override // 댓글 삭제
	public void deleteHyComm(Hyangsta_CommVO vo) {
		hyangstaDAO.deleteHyComm(vo);
	}
	
	@Override // 댓글 갯수 조회
	public int getHyCommCnt(Hyangsta_PostVO vo) {
		return hyangstaDAO.getHyCommCnt(vo);
	}

	@Override // 댓글 조회
	public List<Hyangsta_CommVO> getHyComm(Hyangsta_PostVO vo) {
		return hyangstaDAO.getHyComm(vo);
	}

	@Override // 팔로워 목록 조회
	public List<MemberVO> getHyFollower(FollowVO vo) {
		return hyangstaDAO.getHyFollower(vo);
	}

	@Override // 팔로잉 목록 조회
	public List<MemberVO> getHyFollowing(FollowVO vo) {
		return hyangstaDAO.getHyFollowing(vo);
	}

	@Override // 팔로우 유무 판단
	public FollowVO getHyFollow(FollowVO vo) {
		return hyangstaDAO.getHyFollow(vo);
	}

	@Override // 팔로우 등록
	public void saveHyFollow(FollowVO vo) {
		hyangstaDAO.saveHyFollow(vo);
	}

	@Override // 팔로우 취소
	public void deleteHyFollow(FollowVO vo) {
		hyangstaDAO.deleteHyFollow(vo);
	}

	@Override // 팔로워 수 증가
	public void updateFwerCntUp(FollowVO vo) {
		hyangstaDAO.updateFwerCntUp(vo);
	}

	@Override // 팔로잉 수 증가
	public void updateFingCntUp(FollowVO vo) {
		hyangstaDAO.updateFingCntUp(vo);
		
	}

	@Override // 팔로워 수 감소
	public void updateFwerCntDown(FollowVO vo) {
		hyangstaDAO.updateFwerCntDown(vo);
		
	}

	@Override // 팔로잉 수 감소
	public void updateFingCntDown(FollowVO vo) {
		hyangstaDAO.updateFingCntDown(vo);
		
	}

	@Override // 좋아요 조회
	public Hyangsta_LikeVO getHyLike(Hyangsta_PostVO vo) {
		return hyangstaDAO.getHyLike(vo);
	}

	@Override // 좋아요 등록
	public void saveHyLike(Hyangsta_PostVO vo) {
		hyangstaDAO.saveHyLike(vo);
	}

	@Override // 좋아요 수 증가
	public void updateHyLikeUp(Hyangsta_PostVO vo) {
		hyangstaDAO.updateHyLikeUp(vo);	
	}

	@Override // 좋아요 취소
	public void deleteHyLike(Hyangsta_PostVO vo) {
		hyangstaDAO.deleteHyLike(vo);
	}

	@Override // 좋아요 수 감소
	public void updateHyLikeDown(Hyangsta_PostVO vo) {
		hyangstaDAO.updateHyLikeDown(vo);
	}

	@Override // 탈퇴시 팔로워 수 변화 >> 탈퇴유저가 팔로잉하고 있는 유저의 팔로워 수 변화
	public void deleteFollower(MemberVO vo) {
		hyangstaDAO.deleteFollower(vo);
	}

	@Override // 탈퇴시 팔로잉 수 변화 >> 탈퇴한 유저를 팔로잉 하고 있는 유저의 팔로잉 수 변화
	public void deleteFollowing(MemberVO vo) {
		hyangstaDAO.deleteFollowing(vo);
	}

	

	
}
