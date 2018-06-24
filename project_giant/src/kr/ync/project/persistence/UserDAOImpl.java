package kr.ync.project.persistence;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.ync.project.domain.BoardVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.SearchCriteria;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;

@Repository
public class UserDAOImpl implements UserDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "kr.ync.project.mapper.UserMapper";

	@Override
	public UserVO login(LoginDTO dto) throws Exception {
		
		return session.selectOne(namespace + ".login", dto);
	}

	@Override
	public void keepLogin(String id, String sessionId, Date next) {

		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("id", id);
		paramMap.put("sessionId", sessionId);
		paramMap.put("next", next);

		session.update(namespace + ".keepLogin", paramMap);

	}

	@Override
	public UserVO checkUserWithSessionKey(String value) {

		return session.selectOne(namespace + ".checkUserWithSessionKey", value);
	}

	@Override
	public void joinMember(UserVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace+".user_join",vo);
	}

	@Override
	public int joinMember_check(UserVO vo) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".join_check",vo);
	}

	@Override
	public List<UserVO> memberListAll() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".memListAll");
	}

	@Override
	public UserVO read(String id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".read",id);
	}

	@Override
	public void delete(String id) throws Exception {
		// TODO Auto-generated method stub
		session.delete(namespace + ".deleteMember", id);
	}



	
}
