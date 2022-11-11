package com.human.basic.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.basic.domain.FollowVO;
import com.human.basic.domain.Hyangsta_CommVO;
import com.human.basic.domain.Hyangsta_LikeVO;
import com.human.basic.domain.Hyangsta_PostVO;
import com.human.basic.domain.MemberVO;

@Repository("hyangstaDAO")
public class HyangstaDAOImpl implements HyangstaDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override // 유저 정보
	public MemberVO getUser(String user_id) {
		return mybatis.selectOne("HyangstaDAO.getuser", user_id);
	}
	
	@Override // 메인화면 포스트 조회
	public List<Hyangsta_PostVO> getMainHyPost() {
		return mybatis.selectList("HyangstaDAO.getMainHyPost");
	}

	@Override // 포스트 등록
	public void insertHyPost(Hyangsta_PostVO vo) {
		mybatis.insert("HyangstaDAO.insertHyPost", vo);
	}
	
	@Override // 포스트 보기
	public Hyangsta_PostVO getHyPost(Hyangsta_PostVO vo) {
		return mybatis.selectOne("HyangstaDAO.getHyPost", vo);
	}

	@Override // 포스트 수정
	public void updateHyPost(Hyangsta_PostVO vo) {
		mybatis.update("HyangstaDAO.updateHyPost", vo);
	}

	@Override // 포스트 삭제
	public void deleteHyPost(Hyangsta_PostVO vo) {
		mybatis.delete("HyangstaDAO.deleteHyPost", vo);
	}

	@Override // 팔로우한 포스트 목록 조회
	public List<Hyangsta_PostVO> getMyFowPostList(HashMap map) {
		return mybatis.selectList("HyangstaDAO.getMyFowPostList", map);
	}
	
	@Override // 팔로우한 포스트 갯수 조회
	public int getHyFPostCnt(HashMap map) {
		return mybatis.selectOne("HyangstaDAO.getHyFPostCnt", map);
	}
	
	@Override // 유저 포스트 목록 조회
	public List<Hyangsta_PostVO> getUserHyPostList(FollowVO vo) {
		return mybatis.selectList("HyangstaDAO.getUserHyPostList", vo);
	}
	
	@Override // 유저 향스타 목록 갯수 조회
	public int getUserHyPostCnt(FollowVO vo) {
		return mybatis.selectOne("HyangstaDAO.getUserHyPostCnt", vo);
	}

	@Override // 전체 포스트 목록 조회
	public List<Hyangsta_PostVO> getHyPostList(HashMap map) {
		return mybatis.selectList("HyangstaDAO.getHyPostList", map);
	}
	
	@Override // 전체 포스트 갯수 조회
	public int getHyPostCnt(HashMap map) {
		return mybatis.selectOne("HyangstaDAO.getHyPostCnt", map);
	}

	@Override // 댓글 등록
	public void saveHyComm(Hyangsta_CommVO vo) {
		mybatis.insert("HyangstaDAO.saveHyComm", vo);
	}
	
	@Override // 댓글 수정
	public void updateHyComm(Hyangsta_CommVO vo) {
		mybatis.insert("HyangstaDAO.updateHyComm", vo);
	}

	@Override // 댓글 삭제
	public void deleteHyComm(Hyangsta_CommVO vo) {
		mybatis.delete("HyangstaDAO.deleteHyComm", vo);
	}
	
	@Override // 댓글 갯수 조회
	public int getHyCommCnt(Hyangsta_PostVO vo) {
		return mybatis.selectOne("HyangstaDAO.getHyCommCnt", vo);
	}

	@Override // 댓글 조회
	public List<Hyangsta_CommVO> getHyComm(Hyangsta_PostVO vo) {
		return mybatis.selectList("HyangstaDAO.getHyComm", vo);
	}

	@Override // 팔로워 목록 조회
	public List<MemberVO> getHyFollower(FollowVO vo) {
		return mybatis.selectList("HyangstaDAO.getHyFollower", vo);
	}

	@Override // 팔로잉 목록 조회
	public List<MemberVO> getHyFollowing(FollowVO vo) {
		return mybatis.selectList("HyangstaDAO.getHyFollowing", vo);
	}

	@Override // 팔로우 유무 판단
	public FollowVO getHyFollow(FollowVO vo) {
		return mybatis.selectOne("HyangstaDAO.getHyFollow", vo);
	}

	@Override // 팔로우 등록 
	public void saveHyFollow(FollowVO vo) {
		mybatis.insert("HyangstaDAO.saveHyFollow", vo);
	}

	@Override // 팔로우 취소
	public void deleteHyFollow(FollowVO vo) {
		mybatis.delete("HyangstaDAO.deleteHyFollow", vo);
	}

	@Override // 팔로워 수 증가
	public void updateFwerCntUp(FollowVO vo) {
		mybatis.update("HyangstaDAO.updateFwerCntUp", vo); // following_id 의 팔로워 숫자 증가
		
	}

	@Override // 팔로워 수 감소
	public void updateFingCntUp(FollowVO vo) {
		mybatis.update("HyangstaDAO.updateFingCntUp", vo); // user_id 의 팔로잉 숫자 증가
	}

	@Override // 팔로워 수 감소
	public void updateFwerCntDown(FollowVO vo) {
		mybatis.update("HyangstaDAO.updateFwerCntDown", vo);// following_id 의 팔로워 숫자 증가
	}

	@Override // 팔로잉 수 감소
	public void updateFingCntDown(FollowVO vo) {
		mybatis.update("HyangstaDAO.updateFingCntDown", vo);// user_id 의 팔로잉 숫자 감소
	}

	@Override // 좋아요 조회
	public Hyangsta_LikeVO getHyLike(Hyangsta_PostVO vo) {
		return mybatis.selectOne("HyangstaDAO.getHyLike", vo);
	}

	@Override // 좋아요 등록
	public void saveHyLike(Hyangsta_PostVO vo) {
		mybatis.insert("HyangstaDAO.saveHyLike", vo);
	}

	@Override // 좋아요 수 증가
	public void updateHyLikeUp(Hyangsta_PostVO vo) {
		mybatis.update("HyangstaDAO.updateHyLikeUp", vo);
	}

	@Override // 좋아요 취소
	public void deleteHyLike(Hyangsta_PostVO vo) {
		mybatis.delete("HyangstaDAO.deleteHyLike", vo);
	}

	@Override // 좋아요 수 감소
	public void updateHyLikeDown(Hyangsta_PostVO vo) {
		mybatis.update("HyangstaDAO.updateHyLikeDown", vo);
	}

	@Override // 탈퇴시 팔로워 수 변화 >> 탈퇴유저가 팔로잉하고 있는 유저의 팔로워 수 변화
	public void deleteFollower(MemberVO vo) {
		mybatis.update("HyangstaDAO.deleteFollower", vo);
	}

	@Override // 탈퇴시 팔로잉 수 변화 >> 탈퇴한 유저를 팔로잉 하고 있는 유저의 팔로잉 수 변화
	public void deleteFollowing(MemberVO vo) {
		mybatis.update("HyangstaDAO.deleteFollowing", vo);
	}
	
}


