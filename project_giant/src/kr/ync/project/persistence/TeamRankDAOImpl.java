package kr.ync.project.persistence;

import java.util.List;
import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import kr.ync.project.domain.TeamRankVO;
import kr.ync.project.domain.TeamRecordVO;


@Repository
public class TeamRankDAOImpl implements TeamRankDAO{

	@Inject
	private SqlSession session;

	private static String namespace = "kr.ync.project.mapper.teamRankMapper";

	@Override
	public List<TeamRankVO> list(String year) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+ ".selectRank",year);
	}

	@Override
	public List<TeamRecordVO> record_list(String year) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".selectRecord",year);
	}

	@Override
	public void insertTeamRank(TeamRankVO vo) throws Exception {
		session.insert(namespace+".insert_rank",vo);
		
	}

	@Override
	public TeamRankVO read(String seasonyear) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".read_rank",seasonyear);
	}

	@Override
	public void remove(String seasonyear) throws Exception {
		// TODO Auto-generated method stub
		session.delete(namespace+".delete_rank",seasonyear);
	}

	@Override
	public void modify(TeamRankVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace+".update_rank",vo);
		
	}

	@Override
	public TeamRecordVO readRecord(String seasonyear) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".read_record",seasonyear);
	}

	@Override
	public void insertTeamRecord(TeamRecordVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace+".insert_record",vo);
	}

	@Override
	public void removeRecord(String seasonyear) throws Exception {
		// TODO Auto-generated method stub
		session.delete(namespace+".delete_record",seasonyear);
	}

	@Override
	public void updateRecord(TeamRecordVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace+".update_record",vo);
	}
	
	
	

}
