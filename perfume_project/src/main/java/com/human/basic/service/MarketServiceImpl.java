package com.human.basic.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.basic.dao.MarketDAO;
import com.human.basic.domain.MarketVO;
import com.human.basic.domain.Market_CommVO;
import com.human.basic.domain.SearchCriteria;

@Service("marketService")
public class MarketServiceImpl implements MarketService{

	@Autowired
	private MarketDAO marketDAO;
	
	// 홈 화면 목록 출력
	@Override
	public List<MarketVO> mainMarketList() {
		return marketDAO.mainMarketList();
	}
	
	// 글 등록
	@Override
	public void saveMarket(MarketVO vo) {	
		marketDAO.saveMarket(vo);
	}

	// 글 수정
	@Override
	public void updateMarket(MarketVO vo) {
	
		marketDAO.updateMarket(vo);
	}

	// 글 삭제
	@Override
	public void deleteMarket(MarketVO vo) {
		marketDAO.deleteMarket(vo);
	}

	// 글 상세 조회
	@Override
	public MarketVO getBoard_m(MarketVO vo) {
		return marketDAO.getBoard_m(vo);
	}

	// 게시글 목록 (중고거래)
	@Override
	public List<MarketVO> list(SearchCriteria cri) throws Exception {
		return marketDAO.list(cri);
	}

	// 게시글 갯수 
	@Override
	public int listCount(SearchCriteria cri) throws Exception {
	    return marketDAO.listCount(cri);
	}
	
	// 파일 다운로드
	@Override
	public MarketVO fileDown(MarketVO vo) {
		return marketDAO.fileDown(vo);
	}


	// 댓글 목록
	@Override
	public List<Market_CommVO> commList(int m_article_id) throws Exception {
		
		return marketDAO.commList(m_article_id);
	}

	// 댓글 등록
	@Override
	public void insertComm(Market_CommVO commVo) throws Exception {
		marketDAO.insertComm(commVo);
	}

	// 댓글 수정
	@Override
	public void updateComm(Market_CommVO commVo) throws Exception {
		marketDAO.updateComm(commVo);
	}

	// 댓글 삭제
	@Override
	public void deleteComm(Market_CommVO commVo) throws Exception {
		marketDAO.deleteComm(commVo);
	}
	
	// 댓글 개수
	@Override
	public void commCnt(int m_article_id) {
		marketDAO.commCnt(m_article_id);
	}

	
	
}
