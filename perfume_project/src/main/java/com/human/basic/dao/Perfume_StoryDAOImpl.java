package com.human.basic.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.basic.domain.Perfume_StoryVO;
import com.human.basic.domain.Perfume_Story_CommVO;
import com.human.basic.domain.SearchCriteria;

@Repository("perfume_StoryDAO")
public class Perfume_StoryDAOImpl implements Perfume_StoryDAO{
 
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 홈 화면 목록 출력
	@Override
	public List<Perfume_StoryVO> mainStoryList(){
		
		return mybatis.selectList("Perfume_StoryDAO.mainStoryList");
	}
 
	// 글 등록
	@Override
	public void saveBoard(Perfume_StoryVO vo){
		
		mybatis.insert("Perfume_StoryDAO.saveBoard", vo);
	}
  
	// 글 수정
	@Override
	public void updateBoard(Perfume_StoryVO vo){
		mybatis.update("Perfume_StoryDAO.updateBoard", vo);
	}

	// 글 삭제
	@Override
	public void deleteBoard(Perfume_StoryVO vo){
		mybatis.delete("Perfume_StoryDAO.deleteBoard",vo);
	}

	// 글 조회수
	@Override
	public void storyViewCount(Perfume_StoryVO vo){
	
	}

	// 글 상세 조회
	@Override
	public Perfume_StoryVO getBoard_story(Perfume_StoryVO vo) {
		
		// 조회수 증가 쿼리
		mybatis.update("Perfume_StoryDAO.storyViewCount", vo);
		
		// 글 조회 쿼리
		return mybatis.selectOne("Perfume_StoryDAO.getBoard_story", vo);
	}

	
	// 게시글 목록 (향수이야기) 
	@Override
	public List<Perfume_StoryVO> list(SearchCriteria cri) throws Exception {
		return mybatis.selectList("Perfume_StoryDAO.list", cri);
	}

	// 게시글 갯수
	@Override
	public int listCount(SearchCriteria cri) throws Exception{
	    return mybatis.selectOne("Perfume_StoryDAO.listCount", cri);
	}


	// 파일 다운로드
	@Override
	public Perfume_StoryVO fileDown(Perfume_StoryVO vo){
		return mybatis.selectOne("Perfume_StoryDAO.fileDown", vo);
	}


	// 댓글 등록
	@Override
	public void insertComm(Perfume_Story_CommVO commVo) {
		
		System.out.println("뭐야");
		mybatis.insert("Perfume_StoryDAO.insertComm", commVo);
	}

	// 댓글 목록
	@Override
	public List<Perfume_Story_CommVO> commList(int ps_article_id) throws Exception {
		return mybatis.selectList("Perfume_StoryDAO.commList", ps_article_id);
	}
	
	// 댓글 수정
	@Override
	public void updateComm(Perfume_Story_CommVO commVo) throws Exception{
		mybatis.update("Perfume_StoryDAO.updateComm", commVo);
		
	}

	// 댓글 삭제
	@Override
	public void deleteComm(Perfume_Story_CommVO commVo) throws Exception{
		mybatis.delete("Perfume_StoryDAO.deleteComm", commVo);
		
	}

	// 댓글 갯수
	@Override
	public void commCnt(int ps_article_id) {
		mybatis.update("Perfume_StoryDAO.commCnt", ps_article_id);
	}
	
}
