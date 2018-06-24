package kr.ync.project.persistence;

import java.util.List;

import kr.ync.project.domain.TeamVO;

public interface TeamDAO {
	
	public List<TeamVO> list() throws Exception;
	
	public TeamVO read(String teamname) throws Exception;
	
	public void regist(TeamVO vo) throws Exception;
	
	public void remove(String teamname) throws Exception;
	
	public void modify(TeamVO vo) throws Exception;
}
