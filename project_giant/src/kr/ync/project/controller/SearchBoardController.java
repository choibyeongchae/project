package kr.ync.project.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import kr.ync.project.domain.BoardVO;
import kr.ync.project.domain.PageMaker;
import kr.ync.project.domain.SearchCriteria;
import kr.ync.project.persistence.BoardDAO;
import kr.ync.project.service.BoardService;
import kr.ync.project.service.DealService;
import kr.ync.project.service.NoticeService;

@Controller
@RequestMapping("/sboard/*")
public class SearchBoardController {

	private static final Logger logger = LoggerFactory.getLogger(SearchBoardController.class);

	
	@Inject
	private BoardService service; // 자유게시판

	@Inject
	private NoticeService noticeservice; // 공지사항
	
	@Inject
	private DealService dealservice; // 거래 게시판
	
	/* 자유게시판 리스트 */
	@RequestMapping(value = "/freeboard", method = RequestMethod.GET)
	public void listPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		logger.info(cri.toString());

		//model.addAttribute("list", service.listCriteria(cri));
		
		model.addAttribute("list", service.listSearchCriteria(cri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);

		//pageMaker.setTotalCount(service.listCountCriteria(cri));
		pageMaker.setTotalCount(service.listSearchCount(cri));

		model.addAttribute("pageMaker", pageMaker);
	}
	
	
	/* 공지사항 리스트 */
	@RequestMapping(value = "/notice", method = RequestMethod.GET)
	public void noticeListPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		logger.info(cri.toString());

		//model.addAttribute("list", service.listCriteria(cri));
		model.addAttribute("list", noticeservice.listSearchCriteria(cri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);

		//pageMaker.setTotalCount(service.listCountCriteria(cri));
		pageMaker.setTotalCount(noticeservice.listSearchCount(cri));

		model.addAttribute("pageMaker", pageMaker);
	}
	
	/* 거래게시판 리스트 */
	@RequestMapping(value = "/deal", method = RequestMethod.GET)
	public void dealListPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		logger.info(cri.toString());

		//model.addAttribute("list", service.listCriteria(cri));
		model.addAttribute("list", dealservice.listSearchCriteria(cri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);

		//pageMaker.setTotalCount(service.listCountCriteria(cri));
		pageMaker.setTotalCount(dealservice.listSearchCount(cri));

		model.addAttribute("pageMaker", pageMaker);
	}
	/* 거래게시판 수정 */
	@RequestMapping(value = "/DealModifyPage", method = RequestMethod.GET)
	public void DealModifyPageGET(int writenum, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		model.addAttribute(dealservice.read(writenum));
	}
	/* 거래게시판 수정 */
	@RequestMapping(value = "/DealModifyPage", method = RequestMethod.POST)
	public String DealModifyPagePOST(BoardVO board, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

		logger.info(cri.toString());
		dealservice.modify(board);

		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		return "redirect:/sboard/deal";
	}
	/* 거래게시판 삭제 */
	@RequestMapping(value = "/dealRemovePage", method = RequestMethod.POST)
	public String dealRemove(@RequestParam("writenum") int writenum, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

		dealservice.remove(writenum);

		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/sboard/deal";
	}
	/* 거래게시판 상세보기*/
	@RequestMapping(value = "/deal_detail", method = RequestMethod.GET)
	public void dealRead(@RequestParam("writenum") int writenum, @ModelAttribute("cri") SearchCriteria cri, Model model)
			throws Exception {
		
		
		model.addAttribute(dealservice.read(writenum));
		
	}
	/* 공지사항 등록 */
	/* 관리자의 경우에만 가능 */
	@RequestMapping(value = "/noticeRegister", method = RequestMethod.GET)
	public void noticeRegisterGET() throws Exception {

		logger.info("regist get ...........");
	}
	
	/* 공지사항 등록 */
	/* 관리자의 경우에만 가능 */
	@RequestMapping(value = "/noticeRegister", method = RequestMethod.POST)
	public String noticeRegisterPOST(BoardVO board, RedirectAttributes rttr) throws Exception {

		logger.info("regist post ...........");
		logger.info(board.toString());

		noticeservice.regist(board);

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/ADMIN/sboard/noticeList";
	}
	/* 공지사항 상세보기 */
	@RequestMapping(value = "/noticeboard_detail", method = RequestMethod.GET)
	public void noticeRead(@RequestParam("writenum") int writenum, @ModelAttribute("cri") SearchCriteria cri, Model model)
			throws Exception {
		
		
		model.addAttribute(noticeservice.read(writenum));
		
	}
	/* 공지사항 수정 (관리자의 경우만) */
	@RequestMapping(value = "/noticeModifyPage", method = RequestMethod.GET)
	public void noticeModifyPageGET(int writenum, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		model.addAttribute(noticeservice.read(writenum));
	}
	/* 공지사항 수정 (관리자의 경우만)*/
	@RequestMapping(value = "/noticeModifyPage", method = RequestMethod.POST)
	public String noticeModifyPagePOST(BoardVO board, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

		logger.info(cri.toString());
		noticeservice.modify(board);

		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		return "redirect:/ADMIN/sboard/noticeList";
	}
	/* 공지사항 삭제 (관리자의 경우만)*/
	@RequestMapping(value = "/noticeRemovePage", method = RequestMethod.POST)
	public String noticeRemove(@RequestParam("writenum") int writenum, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

		noticeservice.remove(writenum);

		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/ADMIN/sboard/noticeList";
	}
	/* 자유게시판 상세보기 */
	@RequestMapping(value = "/board_detail", method = RequestMethod.GET)
	public void read(@RequestParam("writenum") int writenum, @ModelAttribute("cri") SearchCriteria cri, Model model)
			throws Exception {
		
		
		model.addAttribute(service.read(writenum));
		
	}
	/* 자유게시판 글 삭제 */
	@RequestMapping(value = "/removePage", method = RequestMethod.POST)
	public String remove(@RequestParam("writenum") int writenum, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

		service.remove(writenum);

		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/sboard/freeboard";
	}
	/* 자유게시판 글 수정 */
	@RequestMapping(value = "/board_modify", method = RequestMethod.GET)
	public void modifyPagingGET(int writenum, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		model.addAttribute(service.read(writenum));
	}
	/* 자유게시판 글 수정 */
	@RequestMapping(value = "/board_modify", method = RequestMethod.POST)
	public String modifyPagingPOST(BoardVO board, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

		logger.info(cri.toString());
		service.modify(board);

		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		rttr.addFlashAttribute("msg", "SUCCESS");

		logger.info(rttr.toString());

		return "redirect:/sboard/freeboard";
	}
	/* 자유게시판 글 등록 */
	@RequestMapping(value = "/board_write", method = RequestMethod.GET)
	public void registGET() throws Exception {

		logger.info("regist get ...........");
	}
	/* 자유게시판 글 등록 */
	@RequestMapping(value = "/board_write", method = RequestMethod.POST)
	public String registPOST(BoardVO board, RedirectAttributes rttr) throws Exception {

		logger.info("regist post ...........");
		logger.info(board.toString());

		service.regist(board);

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/sboard/freeboard";
	}
	
	
}
