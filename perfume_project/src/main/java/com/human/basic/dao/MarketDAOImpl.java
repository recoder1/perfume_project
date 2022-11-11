package com.human.basic.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.basic.domain.MarketVO;
import com.human.basic.domain.Market_CommVO;
import com.human.basic.domain.Perfume_Story_CommVO;
import com.human.basic.domain.SearchCriteria;

@Repository("marketDAO")
public class MarketDAOImpl implements MarketDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 홈 화면 목록 출력
	@Override
	public List<MarketVO> mainMarketList() {	
		return mybatis.selectList("MarketDAO.mainMarketList");
	}
	
	// 글 등록
	@Override
	public void saveMarket(MarketVO vo) {
		
		mybatis.insert("MarketDAO.saveMarket", vo);
	}

	// 글 수정
	@Override
	public void updateMarket(MarketVO vo) {

		mybatis.update("MarketDAO.updateMarket", vo);
	}

	// 글 삭제
	@Override
	public void deleteMarket(MarketVO vo) {
		mybatis.delete("MarketDAO.deleteMarket",vo);
	}

	// 글 조회수
	@Override
	public void marketViewCount(MarketVO vo) {
		
	}

	// 글 상세 조회
	@Override
	public MarketVO getBoard_m(MarketVO vo) {
		
		// 조회수 증가 쿼리
		mybatis.update("MarketDAO.marketViewCount", vo);
		
		// 글 조회 쿼리
		return mybatis.selectOne("MarketDAO.getBoard_m", vo);
	}

	// 게시글 목록 (중고거래)
	@Override
	public List<MarketVO> list(SearchCriteria cri) throws Exception {
		
		return mybatis.selectList("MarketDAO.list_m", cri);
	}
	
	// 게시글 갯수
	@Override
	public int listCount(SearchCriteria cri) throws Exception{
	    return mybatis.selectOne("MarketDAO.listCount_m", cri);
	}

	// 파일 다운로드
	@Override
	public MarketVO fileDown(MarketVO vo) {
		return mybatis.selectOne("MarketDAO.fileDown_m", vo);
	}
	


	// 댓글 등록
	@Override
	public void insertComm(Market_CommVO commVo) {
		
		mybatis.insert("MarketDAO.insertComm_m", commVo);
	}

	// 댓글 목록
	@Override
	public List<Market_CommVO> commList(int m_article_id) throws Exception {
		return mybatis.selectList("MarketDAO.commList_m", m_article_id);
	}
	
	// 댓글 수정
	@Override
	public void updateComm(Market_CommVO commVo) throws Exception{
		mybatis.update("MarketDAO.updateComm_m", commVo);
		
	}

	// 댓글 삭제
	@Override
	public void deleteComm(Market_CommVO commVo) throws Exception{
		mybatis.delete("MarketDAO.deleteComm_m", commVo);
		
	}

	// 댓글 갯수
	@Override
	public void commCnt(int m_article_id) {
		mybatis.update("MarketDAO.commCnt", m_article_id);
	}
	
	
	
	
	
}