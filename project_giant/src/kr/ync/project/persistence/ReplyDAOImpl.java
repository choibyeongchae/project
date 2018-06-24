package kr.ync.project.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.ReplyVO;

@Repository
public class ReplyDAOImpl implements ReplyDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "kr.ync.project.mapper.ReplyMapper";

	@Override
	public List<ReplyVO> list(Integer writenum) throws Exception {

		return session.selectList(namespace + ".list", writenum);
	}

	@Override
	public void create(ReplyVO vo) throws Exception {

		session.insert(namespace + ".create", vo);
	}

	@Override
	public void update(ReplyVO vo) throws Exception {

		session.update(namespace + ".update", vo);
	}

	@Override
	public void delete(Integer cmt_id) throws Exception {

		session.delete(namespace + ".delete", cmt_id);
	}

	@Override
	public int getBno(Integer cmt_id) throws Exception {
		return session.selectOne(namespace + ".writenum", cmt_id);
	}

	@Override
	public List<ReplyVO> listPage(Integer writenum, Criteria cri) throws Exception {

		Map<String, Object> paramMap = new HashMap<>();

		paramMap.put("writenum", writenum);
		paramMap.put("cri", cri);

		return session.selectList(namespace + ".listPage", paramMap);
	}

	@Override
	public int count(Integer writenum) throws Exception {

		return session.selectOne(namespace + ".count", writenum);
	}

}
