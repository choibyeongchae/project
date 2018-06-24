package kr.ync.project.service;

import java.util.List;

import kr.ync.project.domain.BatterPlayerVO;

public interface BatterService {
	
	public List<BatterPlayerVO> score(Integer backnum) throws Exception;
	
	public void updateScore(BatterPlayerVO bvo) throws Exception;
	

}
