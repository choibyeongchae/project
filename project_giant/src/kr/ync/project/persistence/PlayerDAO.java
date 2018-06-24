package kr.ync.project.persistence;

import java.util.List;

import kr.ync.project.domain.BatterPlayerVO;
import kr.ync.project.domain.BoardVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.PitcherPlayerVO;
import kr.ync.project.domain.PlayerVO;
import kr.ync.project.domain.SearchCriteria;

public interface PlayerDAO {
	
	public List<PlayerVO> listPlayer() throws Exception;
	
	public List<PlayerVO> secondListPlayer() throws Exception;
	
	public PlayerVO read(int backnum) throws Exception;
	
	public void remove(Integer backnum) throws Exception;
	
	public void join_player(PlayerVO vo) throws Exception;
	
	public void join_playerRecord(BatterPlayerVO bvo) throws Exception;
	
	public void join_playerPicherRecord(PitcherPlayerVO pvo) throws Exception;
	
	public void update(PlayerVO vo) throws Exception;
	
	public List<PlayerVO> listPage(int page) throws Exception;

	public List<PlayerVO> listCriteria(Criteria cri) throws Exception;

	public int countPaging(Criteria cri) throws Exception;
	
	public int listSearchCount(SearchCriteria cri) throws Exception;
	
	public List<PlayerVO> listSearch(SearchCriteria cri) throws Exception;
	
	public List<PlayerVO> listPage_scond(int page) throws Exception;

	public List<PlayerVO> listCriteria_second(Criteria cri) throws Exception;

	public int countPaging_second(Criteria cri) throws Exception;
	
	public int listSearchCount_second(SearchCriteria cri) throws Exception;
	
	public List<PlayerVO> listSearch_second(SearchCriteria cri) throws Exception;
	
}
