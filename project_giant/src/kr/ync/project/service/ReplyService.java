package kr.ync.project.service;

import java.util.List;

import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.ReplyVO;

public interface ReplyService {

	public void addReply(ReplyVO vo) throws Exception;

	public List<ReplyVO> listReply(Integer writenum) throws Exception;

	public void modifyReply(ReplyVO vo) throws Exception;

	public void removeReply(Integer cmt_id) throws Exception;

	public List<ReplyVO> listReplyPage(Integer writenum, Criteria cri) throws Exception;

	public int count(Integer writenum) throws Exception;

}
