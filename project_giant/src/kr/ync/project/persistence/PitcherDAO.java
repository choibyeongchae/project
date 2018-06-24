package kr.ync.project.persistence;

import java.util.List;

import kr.ync.project.domain.PitcherPlayerVO;

public interface PitcherDAO {
	
	public List<PitcherPlayerVO> score(Integer backnum) throws Exception;
	
	public void updateScore(PitcherPlayerVO pvo) throws Exception;
}
