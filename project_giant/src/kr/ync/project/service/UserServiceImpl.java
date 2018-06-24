package kr.ync.project.service;

import java.util.Date;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.SearchCriteria;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;
import kr.ync.project.persistence.UserDAO;

@Service
public class UserServiceImpl implements UserService {

	@Inject
	private UserDAO dao;

	@Override
	public UserVO login(LoginDTO dto) throws Exception {

		return dao.login(dto);
	}

	@Override
	public void joinMember(UserVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.joinMember(vo);
	}

	@Override
	public int joinMember_check(UserVO vo) throws Exception {
		return dao.joinMember_check(vo);
	}

	@Override
	public List<UserVO> memberListAll() throws Exception {
		// TODO Auto-generated method stub
		return dao.memberListAll();
	}

	@Override
	public UserVO read(String id) throws Exception {
		// TODO Auto-generated method stub
		return dao.read(id);
	}

	@Override
	public void remove(String id) throws Exception {
		// TODO Auto-generated method stub
		dao.delete(id);
		
	}


}
