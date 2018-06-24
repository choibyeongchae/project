package kr.ync.project.service;

import java.util.List;

import kr.ync.project.domain.BatterPlayerVO;
import kr.ync.project.domain.TeamRankVO;
import kr.ync.project.domain.TeamRecordVO;
import kr.ync.project.domain.TeamVO;

public interface TeamService {
	
	public List<TeamVO> list() throws Exception;
	
	public TeamVO read(String teamname) throws Exception;
	
	public void regist(TeamVO vo) throws Exception;
	
	public void remove(String teamname) throws Exception;
	
	public void modify(TeamVO vo) throws Exception;
	
	
}
