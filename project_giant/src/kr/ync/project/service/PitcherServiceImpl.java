package kr.ync.project.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.ync.project.domain.BatterPlayerVO;
import kr.ync.project.domain.PitcherPlayerVO;
import kr.ync.project.persistence.BatterDAO;
import kr.ync.project.persistence.PitcherDAO;

@Service
public class PitcherServiceImpl implements PitcherService{

	@Inject
	private PitcherDAO dao;

	@Override
	public List<PitcherPlayerVO> score(Integer backnum) throws Exception {
		// TODO Auto-generated method stub
		return dao.score(backnum);
	}

	@Override
	public void updateScore(PitcherPlayerVO pvo) throws Exception {
		// TODO Auto-generated method stub
		dao.updateScore(pvo);
		
	}
	
	


}
