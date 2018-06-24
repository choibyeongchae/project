package kr.ync.project.persistence;

import java.util.List;

import org.springframework.stereotype.Repository;

import kr.ync.project.domain.TeamRankVO;
import kr.ync.project.domain.TeamRecordVO;


public interface TeamRankDAO {
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
