package kr.ync.project.persistence;

import java.util.List;

import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.ReplyVO;

public interface ReplyDAO {

	public List<ReplyVO> list(Integer writenum) throws Exception;

	public void create(ReplyVO vo) throws Exception;

	public void update(ReplyVO vo) throws Exception;

	public void delete(Integer cmt_id) throws Exception;
	
	public int getBno(Integer cmt_id) throws Exception;

	public List<ReplyVO> listPage(Integer writenum, Criteria cri) throws Exception;

	public int count(Integer writenum) throws Exception;

}
