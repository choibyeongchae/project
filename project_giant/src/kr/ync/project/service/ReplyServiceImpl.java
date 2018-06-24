package kr.ync.project.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ync.project.domain.Criteria;
import kr.ync.project.domain.ReplyVO;
import kr.ync.project.persistence.BoardDAO;
import kr.ync.project.persistence.ReplyDAO;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Inject
	private ReplyDAO dao;

	@Inject
	private BoardDAO boardDAO;

	@Transactional
	@Override
	public void addReply(ReplyVO vo) throws Exception {

		dao.create(vo);
		boardDAO.updateReplyCnt(vo.getWritenum(), 1);
	}

	@Override
	public List<ReplyVO> listReply(Integer writenum) throws Exception {

		return dao.list(writenum);
	}

	@Override
	public void modifyReply(ReplyVO vo) throws Exception {

		dao.update(vo);
	}

	@Transactional
	@Override
	public void removeReply(Integer cmt_id) throws Exception {

		int bno = dao.getBno(cmt_id);
		dao.delete(cmt_id);
		boardDAO.updateReplyCnt(bno, -1);
	}

	@Override
	public List<ReplyVO> listReplyPage(Integer writenum, Criteria cri) throws Exception {

		return dao.listPage(writenum, cri);
	}

	@Override
	public int count(Integer writenum) throws Exception {

		return dao.count(writenum);
	}

}
