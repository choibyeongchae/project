package kr.ync.project.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.ync.project.domain.BatterPlayerVO;
import kr.ync.project.domain.PitcherPlayerVO;

@Repository
public class PitcherDAOImpl implements PitcherDAO{

	@Inject
	private SqlSession session;
	
	private static String namespace = "kr.ync.project.mapper.playerScoreMapper";

	@Override
	public List<PitcherPlayerVO> score(Integer backnum) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".ListPicherScore",backnum);
	}

	@Override
	public void updateScore(PitcherPlayerVO pvo) throws Exception {
		session.update(namespace+".update_PitcherRecord",pvo);
		
	}
	
	

	
	

}
