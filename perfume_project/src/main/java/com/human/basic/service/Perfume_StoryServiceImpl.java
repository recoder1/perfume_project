package com.human.basic.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.basic.dao.Perfume_StoryDAO;
import com.human.basic.domain.Perfume_StoryVO;
import com.human.basic.domain.Perfume_Story_CommVO;
import com.human.basic.domain.SearchCriteria;

@Service("perfume_StoryService")
public class Perfume_StoryServiceImpl implements Perfume_StoryService {

	@Autowired
	private Perfume_StoryDAO perfume_StoryDAO ;

	// 홈 화면 목록 출력
	@Override
	public List<Perfume_StoryVO> mainStoryList() {
		return perfume_StoryDAO.mainStoryList();
	}


	// 글 등록
	@Override
	public void saveBoard(Perfume_StoryVO vo) {
		perfume_StoryDAO.saveBoard(vo);
	}

	// 글 수정
	@Override
	public void updateBoard(Perfume_StoryVO vo) {
		perfume_StoryDAO.updateBoard(vo);
	}

	// 글 삭제
	@Override
	public void deleteBoard(Perfume_StoryVO vo) {
		perfume_StoryDAO.deleteBoard(vo);
	}

	// 글 상세 조회
	@Override
	public Perfume_StoryVO getBoard_story(Perfume_StoryVO vo) {
		return perfume_StoryDAO.getBoard_story(vo);
	}

	
	// 게시글 목록 (향수이야기)
	@Override
	public List<Perfume_StoryVO> list(SearchCriteria cri) throws Exception {
		return perfume_StoryDAO.list(cri);
	}

	// 게시글 갯수 
	@Override
	public int listCount(SearchCriteria cri) throws Exception {
	    return perfume_StoryDAO.listCount(cri);
	}
	
	
	
	// 파일 다운로드
	@Override
	public Perfume_StoryVO fileDown(Perfume_StoryVO vo) {
		return perfume_StoryDAO.fileDown(vo);
	}
	
	
	
	// 댓글 목록
	@Override
	public List<Perfume_Story_CommVO> commList(int ps_article_id) throws Exception{
		return perfume_StoryDAO.commList(ps_article_id);
	}
	
	// 댓글 등록
	@Override
	public void insertComm(Perfume_Story_CommVO commVo) throws Exception{
		perfume_StoryDAO.insertComm(commVo);
	}

	// 댓글 수정
	@Override
	public void updateComm(Perfume_Story_CommVO commVo) throws Exception{
		perfume_StoryDAO.updateComm(commVo);
	}

	// 댓글 삭제
	@Override
	public void deleteComm(Perfume_Story_CommVO commVo) throws Exception {
		perfume_StoryDAO.deleteComm(commVo);
		
	}

	// 댓글 개수
	@Override
	public void commCnt(int ps_article_id) {
		perfume_StoryDAO.commCnt(ps_article_id);
	}




	
	
}
