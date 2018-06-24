package kr.ync.project.persistence;

import java.util.List;

import kr.ync.project.domain.BatterPlayerVO;

public interface BatterDAO {

	public List<BatterPlayerVO> score(Integer backnum) throws Exception;

	public void updateScore(BatterPlayerVO bvo) throws Exception;
	
	public List<BatterPlayerVO> positionList(String position) throws Exception;
}
