package com.human.basic.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.human.basic.domain.Perfume_StoryVO;
import com.human.basic.domain.Perfume_Story_CommVO;
import com.human.basic.domain.SearchCriteria;

@Service
public interface Perfume_StoryService {
	
	// 홈 화면 목록 출력
	List<Perfume_StoryVO> mainStoryList();

	// 글 등록
	void saveBoard(Perfume_StoryVO vo);
	
	// 글 수정
	void updateBoard(Perfume_StoryVO vo);
	
	// 글 삭제
	void deleteBoard(Perfume_StoryVO vo);
	
	// 글 상세 조회
	Perfume_StoryVO getBoard_story(Perfume_StoryVO vo);
	
	
	// 게시글 목록 (향수이야기)
	List<Perfume_StoryVO> list(SearchCriteria cri) throws Exception;
	
	// 게시글 갯수
	int listCount(SearchCriteria cri) throws Exception;

	
	// 파일 다운로드
	Perfume_StoryVO fileDown(Perfume_StoryVO vo);
	
	// 댓글 목록 조회
	public List<Perfume_Story_CommVO> commList(int ps_article_id) throws Exception;
	
	// 댓글 등록
	public void insertComm(Perfume_Story_CommVO commVo) throws Exception;
	
	// 댓글 수정
	public void updateComm(Perfume_Story_CommVO commVo) throws Exception;
	
	// 댓글 삭제
	public void deleteComm(Perfume_Story_CommVO commVo) throws Exception;

	// 댓글 개수
	public void commCnt(int ps_article_id) ;
	

}
