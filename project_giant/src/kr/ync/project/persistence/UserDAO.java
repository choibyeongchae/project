package kr.ync.project.persistence;

import java.util.Date;
import java.util.List;

import kr.ync.project.domain.BoardVO;
import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.SearchCriteria;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;

public interface UserDAO {

	public UserVO login(LoginDTO dto) throws Exception;

	public void delete(String id) throws Exception;
	
	public void keepLogin(String id, String sessionId, Date next);

	public UserVO checkUserWithSessionKey(String value);
	
	public void joinMember(UserVO vo) throws Exception;
	
	public int joinMember_check(UserVO vo) throws Exception;
	
	public List<UserVO> memberListAll() throws Exception;
	
	public UserVO read(String id) throws Exception;
}
