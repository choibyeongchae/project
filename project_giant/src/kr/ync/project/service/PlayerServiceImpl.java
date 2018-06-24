package kr.ync.project.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.ync.project.domain.BatterPlayerVO;
import kr.ync.project.domain.BoardVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.PitcherPlayerVO;
import kr.ync.project.domain.PlayerVO;
import kr.ync.project.domain.SearchCriteria;
import kr.ync.project.persistence.BatterDAO;
import kr.ync.project.persistence.PitcherDAO;
import kr.ync.project.persistence.PlayerDAO;

@Service
public class PlayerServiceImpl implements PlayerService{

	@Inject
	private PlayerDAO dao;

	@Override
	public List<PlayerVO> listPlayer() throws Exception {
		// TODO Auto-generated method stub
		return dao.listPlayer();
	}

	@Override
	public PlayerVO read(int backnum) throws Exception {
		// TODO Auto-generated method stub
		return dao.read(backnum);
	}

	@Override
	public void remove(Integer backnum) throws Exception {
		dao.remove(backnum);
		
	}

	@Override
	public void join_player(PlayerVO vo) throws Exception {
		dao.join_player(vo);
		
	}

	@Override
	public void join_playerRecord(BatterPlayerVO bvo) throws Exception {
		dao.join_playerRecord(bvo);
		
	}

	@Override
	public void join_playerPicherRecord(PitcherPlayerVO pvo) throws Exception {
		dao.join_playerPicherRecord(pvo);
		
	}

	@Override
	public void update(PlayerVO vo) throws Exception {
		dao.update(vo);
		
	}

	@Override
	public List<PlayerVO> secondListPlayer() throws Exception {
		// TODO Auto-generated method stub
		return dao.secondListPlayer();
	}

	@Override
	public List<PlayerVO> listCriteria(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return dao.listCriteria(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return dao.countPaging(cri);
	}

	@Override
	public List<PlayerVO> listSearchCriteria(SearchCriteria cri) throws Exception {
		// TODO Auto-generated method stub
		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		// TODO Auto-generated method stub
		return dao.listSearchCount(cri);
	}

	@Override
	public List<PlayerVO> listCriteria_second(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return dao.listCriteria_second(cri);
	}

	@Override
	public int listCountCriteria_second(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return dao.countPaging_second(cri);
	}

	@Override
	public List<PlayerVO> listSearchCriteria_second(SearchCriteria cri) throws Exception {
		// TODO Auto-generated method stub
		return dao.listSearch_second(cri);
	}

	@Override
	public int listSearchCount_second(SearchCriteria cri) throws Exception {
		// TODO Auto-generated method stub
		return dao.listSearchCount_second(cri);
	}

	
	
	


}
