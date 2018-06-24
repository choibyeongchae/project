package kr.ync.project.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.ync.project.domain.BatterPlayerVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.PitcherPlayerVO;
import kr.ync.project.domain.PlayerVO;
import kr.ync.project.domain.SearchCriteria;

@Repository
public class PlayerDAOImpl implements PlayerDAO{

	@Inject
	private SqlSession session;
	
	private static String namespace = "kr.ync.project.mapper.playerScoreMapper";

	@Override
	public List<PlayerVO> listPlayer() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".listPlayer");
	}

	@Override
	public PlayerVO read(int backnum) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".readPlayer",backnum);
	}

	@Override
	public void remove(Integer backnum) throws Exception {
		session.delete(namespace+".removePlayerBatterRecord",backnum);
		session.delete(namespace+".removePlayerPitcherRecord",backnum);
		session.delete(namespace+".removePlayer",backnum);
		
	}

	@Override
	public void join_player(PlayerVO vo) throws Exception {
		session.insert(namespace+".player_join",vo);
	}

	@Override
	public void join_playerRecord(BatterPlayerVO bvo) throws Exception {
		session.insert(namespace+".player_RecordJoin",bvo);
		
	}

	@Override
	public void join_playerPicherRecord(PitcherPlayerVO pvo) throws Exception {
		session.insert(namespace+".player_PicherRecord",pvo);
		
	}

	@Override
	public void update(PlayerVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace+".update_intro",vo);
		
	}

	@Override
	public List<PlayerVO> secondListPlayer() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".secondListPlayer");
	}

	@Override
	public List<PlayerVO> listPage(int page) throws Exception {
		// TODO Auto-generated method stub
		if (page <= 0) {
			page = 1;
		}

		page = (page - 1) * 10;

		return session.selectList(namespace + ".listPage", page);
	}

	@Override
	public List<PlayerVO> listCriteria(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".listCriteria", cri);
	}

	@Override
	public int countPaging(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".countPaging", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".listSearchCount", cri);
	}

	@Override
	public List<PlayerVO> listSearch(SearchCriteria cri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".listSearch", cri);
	}

	@Override
	public List<PlayerVO> listPage_scond(int page) throws Exception {
		// TODO Auto-generated method stub
		if (page <= 0) {
			page = 1;
		}

		page = (page - 1) * 10;

		return session.selectList(namespace + ".listPage_second", page);
	}

	@Override
	public List<PlayerVO> listCriteria_second(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".listCriteria_second", cri);
	}

	@Override
	public int countPaging_second(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".countPaging_second", cri);
	}

	@Override
	public int listSearchCount_second(SearchCriteria cri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".listSearchCount_second", cri);
	}

	@Override
	public List<PlayerVO> listSearch_second(SearchCriteria cri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".listSearch_second", cri);
	}


	
	

}
