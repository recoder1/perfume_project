package com.human.basic.service;

import java.util.List;

import com.human.basic.domain.MarketVO;
import com.human.basic.domain.Market_CommVO;
import com.human.basic.domain.Perfume_StoryVO;
import com.human.basic.domain.SearchCriteria;

public interface MarketService {
	
	// 홈 화면 목록 출력
	List<MarketVO> mainMarketList();

	// 글 등록
	void saveMarket(MarketVO vo);
	
	// 글 수정
	void updateMarket(MarketVO vo);
	
	// 글 삭제
	void deleteMarket(MarketVO vo);
	
	// 글 상세 조회
	MarketVO getBoard_m(MarketVO vo);
	
	// 게시글 목록 (중고거래)
	List<MarketVO> list(SearchCriteria cri) throws Exception;
	
	// 게시글 갯수
	int listCount(SearchCriteria cri) throws Exception;
	
	// 파일 다운로드
	MarketVO fileDown(MarketVO vo);
	
	// 댓글 목록 조회
	public List<Market_CommVO> commList(int m_article_id) throws Exception;
	
	// 댓글 등록
	public void insertComm(Market_CommVO commVo) throws Exception;
	
	// 댓글 수정
	public void updateComm(Market_CommVO commVo) throws Exception;
	
	// 댓글 삭제
	public void deleteComm(Market_CommVO commVo) throws Exception;

	// 댓글 개수
	public void commCnt(int m_article_id) ;
	
	
}


