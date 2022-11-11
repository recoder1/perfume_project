package com.human.basic.service;

import java.util.HashMap;
import java.util.List;

import com.human.basic.domain.FollowVO;
import com.human.basic.domain.Hyangsta_CommVO;
import com.human.basic.domain.Hyangsta_LikeVO;
import com.human.basic.domain.Hyangsta_PostVO;
import com.human.basic.domain.MemberVO;

public interface HyangstaService {
	// 유저 정보
	MemberVO getUser(String user_id);
	// 메인화면 포스트 조회
	List<Hyangsta_PostVO> getMainHyPost();
	
	// 포스트 등록
	void insertHyPost(Hyangsta_PostVO vo);
	// 포스트 수정
	void updateHyPost(Hyangsta_PostVO vo);
	// 포스트 삭제 >> 댓글도 삭제 되야함
	void deleteHyPost(Hyangsta_PostVO vo);
	// 포스트 보기
	Hyangsta_PostVO getHyPost(Hyangsta_PostVO vo);
	// 팔로우한 포스트 목록 조회
	List<Hyangsta_PostVO> getMyFowPostList(HashMap map);
	// 팔로우한 포스트 갯수 조회
	int getHyFPostCnt(HashMap map);
	// 유저 향스타 목록 조회
	List<Hyangsta_PostVO> getUserHyPostList(FollowVO vo);
	// 유저 향스타 목록 갯수 조회
	int getUserHyPostCnt(FollowVO vo);
	// 홈 포스트 목록 조회
	List<Hyangsta_PostVO> getHyPostList(HashMap map);
	// 홈 포스트 갯수 조회
	int getHyPostCnt(HashMap map);

	// 댓글 등록
	void saveHyComm(Hyangsta_CommVO vo);
	// 댓글 수정
	void updateHyComm(Hyangsta_CommVO vo);
	// 댓글 삭제
	void deleteHyComm(Hyangsta_CommVO vo);
	// 댓글 갯수 조회
	int getHyCommCnt(Hyangsta_PostVO vo);
	// 댓글 조회
	List<Hyangsta_CommVO> getHyComm(Hyangsta_PostVO vo);
	
	// 팔로워 목록 조회
	List<MemberVO> getHyFollower(FollowVO vo);
	// 팔로잉 목록 조회
	List<MemberVO> getHyFollowing(FollowVO vo);
	// 팔로우 유무 판단 getHyFollow
	FollowVO getHyFollow(FollowVO vo);
	// 팔로우 등록
	void saveHyFollow(FollowVO vo);
	// 팔로우 취소
	void deleteHyFollow(FollowVO vo);
	// 팔로워 수 증가
	void updateFwerCntUp(FollowVO vo);
	// 팔로잉 수 증가
	void updateFingCntUp(FollowVO vo);
	// 팔로워 수 감소
	void updateFwerCntDown(FollowVO vo);
	// 팔로잉 수 감소
	void updateFingCntDown(FollowVO vo);
	
	// 좋아요 확인
	Hyangsta_LikeVO getHyLike(Hyangsta_PostVO vo);
	// 좋아요 등록
	void saveHyLike(Hyangsta_PostVO vo);
	// 좋아요 수 증가
	void updateHyLikeUp(Hyangsta_PostVO vo);
	// 좋아요 취소
	void deleteHyLike(Hyangsta_PostVO vo);
	// 좋아요 수 감소
	void updateHyLikeDown(Hyangsta_PostVO vo);
	
	// deleteFollower , deleteFollowing
	// 탈퇴시 팔로워 수 변화 >> 탈퇴유저가 팔로잉하고 있는 유저의 팔로워 수 변화
	void deleteFollower(MemberVO vo);
	// 탈퇴시 팔로잉 수 변화 >> 탈퇴한 유저를 팔로잉 하고 있는 유저의 팔로잉 수 변화
	void deleteFollowing(MemberVO vo);
	
}
