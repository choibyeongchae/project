package kr.ync.project.service;

import java.util.List;

import kr.ync.project.domain.TeamRankVO;
import kr.ync.project.domain.TeamRecordVO;
import kr.ync.project.persistence.TeamRecordDAO;

public interface TeamRankService {
	
	public List<TeamRankVO> list(String year) throws Exception;
	
	public List<TeamRecordVO> record_list(String year) throws Exception;
	
	public void insertTeamRank(TeamRankVO vo) throws Exception;
	
	public TeamRankVO read(String seasonyear) throws Exception;
	
	public void remove(String seasonyear) throws Exception;
	
	public void modify(TeamRankVO vo) throws Exception;
	
	public TeamRecordVO readRecord(String seasonyear) throws Exception;
	
	public void insertTeamRecord(TeamRecordVO vo) throws Exception;
	
	public void removeRecord(String seasonyear) throws Exception;
	
	public void updateRecord(TeamRecordVO vo) throws Exception;
}
