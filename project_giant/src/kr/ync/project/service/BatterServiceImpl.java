package kr.ync.project.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.ync.project.domain.BatterPlayerVO;
import kr.ync.project.persistence.BatterDAO;

@Service
public class BatterServiceImpl implements BatterService{

	@Inject
	private BatterDAO dao;
	
	@Override
	public List<BatterPlayerVO> score(Integer backnum) throws Exception {
		// TODO Auto-generated method stub
		return dao.score(backnum);
	}

	@Override
	public void updateScore(BatterPlayerVO bvo) throws Exception {
		dao.updateScore(bvo);
		
	}


}
