package kr.ync.project.service;

import java.util.List;

import kr.ync.project.domain.BatterPlayerVO;
import kr.ync.project.domain.BoardVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.PitcherPlayerVO;
import kr.ync.project.domain.PlayerVO;
import kr.ync.project.domain.SearchCriteria;

public interface PlayerService {
	public List<PlayerVO> listPlayer() throws Exception;
	
	public PlayerVO read(int backnum) throws Exception;
	
	public void remove(Integer backnum) throws Exception;
	
	public void join_player(PlayerVO vo) throws Exception;
	
	public void join_playerRecord(BatterPlayerVO bvo) throws Exception;
	
	public void join_playerPicherRecord(PitcherPlayerVO pvo) throws Exception;

	public void update(PlayerVO vo) throws Exception;
	
	public List<PlayerVO> secondListPlayer() throws Exception;
	
	public List<PlayerVO> listCriteria(Criteria cri) throws Exception;

	public int listCountCriteria(Criteria cri) throws Exception;

	public List<PlayerVO> listSearchCriteria(SearchCriteria cri) throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;
	
	public List<PlayerVO> listCriteria_second(Criteria cri) throws Exception;

	public int listCountCriteria_second(Criteria cri) throws Exception;

	public List<PlayerVO> listSearchCriteria_second(SearchCriteria cri) throws Exception;

	public int listSearchCount_second(SearchCriteria cri) throws Exception;
	
	
}
