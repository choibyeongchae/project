package kr.ync.project.service;

import java.util.Date;
import java.util.List;

import kr.ync.project.domain.BoardVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.SearchCriteria;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;

public interface UserService {

	public UserVO login(LoginDTO dto) throws Exception;
	
	public void joinMember(UserVO vo) throws Exception;
	
	public int joinMember_check(UserVO vo) throws Exception;
	
	public List<UserVO> memberListAll() throws Exception;
	
	public UserVO read(String id) throws Exception;

	public void remove(String id) throws Exception;
	
}
