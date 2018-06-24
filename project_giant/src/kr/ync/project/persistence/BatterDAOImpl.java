package kr.ync.project.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.ync.project.domain.BatterPlayerVO;

@Repository
public class BatterDAOImpl implements BatterDAO{

	@Inject
	private SqlSession session;
	
	private static String namespace = "kr.ync.project.mapper.playerScoreMapper";
	@Override
	public List<BatterPlayerVO> score(Integer backnum) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".selectScore",backnum);
	}
	@Override
	public void updateScore(BatterPlayerVO bvo) throws Exception {
		session.update(namespace+".update_BatterRecord",bvo);
		
	}

	@Override
	public List<BatterPlayerVO> positionList(String position) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".selectPositionScore",position);
	}

	
	

}
