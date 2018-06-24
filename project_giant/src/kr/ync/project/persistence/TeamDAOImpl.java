package kr.ync.project.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.ync.project.domain.TeamVO;

@Repository
public class TeamDAOImpl implements TeamDAO{
	
	@Inject
	private SqlSession session;
	
	private static String namespace = "kr.ync.project.mapper.teamRankMapper";
	
	@Override
	public List<TeamVO> list() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".team_List");
	}

	@Override
	public TeamVO read(String teamname) throws Exception {
		return session.selectOne(namespace+".read_team",teamname);
		
	}

	@Override
	public void regist(TeamVO vo) throws Exception {
		session.insert(namespace+".regist_team",vo);
		
	}

	@Override
	public void remove(String teamname) throws Exception {
		session.delete(namespace+".remove_team",teamname);
		
	}

	@Override
	public void modify(TeamVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace+".modi_team",vo);
	}

}
