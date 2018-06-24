package kr.ync.project.service;

import java.util.List;


import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.ync.project.domain.TeamRankVO;
import kr.ync.project.domain.TeamRecordVO;
import kr.ync.project.persistence.TeamRankDAO;
import kr.ync.project.persistence.TeamRecordDAO;

@Service
public class TeamRankServiceImpl implements TeamRankService {

	@Inject
	private TeamRankDAO tao;

	@Override
	public List<TeamRankVO> list(String year) throws Exception {
		return tao.list(year);
	}

	@Override
	public List<TeamRecordVO> record_list(String year) throws Exception {
		// TODO Auto-generated method stub
		return tao.record_list(year);
	}

	@Override
	public void insertTeamRank(TeamRankVO vo) throws Exception {
		tao.insertTeamRank(vo);
		
	}

	@Override
	public TeamRankVO read(String seasonyear) throws Exception {
		// TODO Auto-generated method stub
		return tao.read(seasonyear);
	}

	@Override
	public void remove(String seasonyear) throws Exception {
		
		tao.remove(seasonyear);
		
	}

	@Override
	public void modify(TeamRankVO vo) throws Exception {
		// TODO Auto-generated method stub
		tao.modify(vo);
	}

	@Override
	public TeamRecordVO readRecord(String seasonyear) throws Exception {
		// TODO Auto-generated method stub
		return tao.readRecord(seasonyear);
	}

	@Override
	public void insertTeamRecord(TeamRecordVO vo) throws Exception {
		// TODO Auto-generated method stub
		tao.insertTeamRecord(vo);
	}

	@Override
	public void removeRecord(String seasonyear) throws Exception {
		// TODO Auto-generated method stub
		tao.removeRecord(seasonyear);
	}

	@Override
	public void updateRecord(TeamRecordVO vo) throws Exception {
		// TODO Auto-generated method stub
		tao.updateRecord(vo);
	}
	
	

}
