package kr.ync.project.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.ync.project.domain.TeamRankVO;
import kr.ync.project.domain.TeamRecordVO;
import kr.ync.project.domain.TeamVO;
import kr.ync.project.persistence.TeamDAO;

@Service
public class TeamServiceImpl implements TeamService{

	
	@Inject
	private TeamDAO dao;

	@Override
	public List<TeamVO> list() throws Exception {
		// TODO Auto-generated method stub
		return dao.list();
	}

	@Override
	public TeamVO read(String teamname) throws Exception {
		return dao.read(teamname);
		
	}

	@Override
	public void regist(TeamVO vo) throws Exception {
		dao.regist(vo);
		
	}

	@Override
	public void remove(String teamname) throws Exception {
		dao.remove(teamname);
		
	}

	@Override
	public void modify(TeamVO vo) throws Exception {
		dao.modify(vo);
		
	}

}
