package kr.ync.project.service;

import java.util.List;

import kr.ync.project.domain.PitcherPlayerVO;

public interface PitcherService {

	public List<PitcherPlayerVO> score(Integer backnum) throws Exception;
	
	public void updateScore(PitcherPlayerVO pvo) throws Exception;
}
