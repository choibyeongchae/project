package kr.ync.project.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ync.project.domain.BatterPlayerVO;
import kr.ync.project.domain.BoardVO;
import kr.ync.project.domain.PageMaker;
import kr.ync.project.domain.PitcherPlayerVO;
import kr.ync.project.domain.PlayerVO;
import kr.ync.project.domain.SearchCriteria;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;
import kr.ync.project.service.BatterService;
import kr.ync.project.service.BoardService;
import kr.ync.project.service.PitcherService;
import kr.ync.project.service.PlayerService;
import kr.ync.project.service.UserService;

@Controller
@RequestMapping("ADMIN/player/*")
public class AdminPlayerController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminPlayerController.class);
	
	@Inject
	private PlayerService service; // 선수 정보를 끌어오는 것.
	
	@Inject
	private BatterService batterService; // 타자 정보를 끌어오는 것.
	
	@Inject
	private PitcherService pitcherservice; // 투수 정보를 끌어오는 것.
	
	/* 1군선수 리스트 */
	@RequestMapping(value="/mainPlayer",method=RequestMethod.GET)
	public void memberListGET(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info(cri.toString());


		logger.info(cri.toString());

		//model.addAttribute("list", service.listCriteria(cri));
		model.addAttribute("list", service.listSearchCriteria(cri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);

		//pageMaker.setTotalCount(service.listCountCriteria(cri));
		pageMaker.setTotalCount(service.listSearchCount(cri));

		model.addAttribute("pageMaker", pageMaker);
		
	}
	
	/* 2군선수 리스트 */
	@RequestMapping(value="/secondPlayer",method=RequestMethod.GET)
	public void secondPlayerGET(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info(cri.toString());


		logger.info(cri.toString());

		//model.addAttribute("list", service.listCriteria(cri));
		model.addAttribute("list", service.listSearchCriteria_second(cri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);

		//pageMaker.setTotalCount(service.listCountCriteria(cri));
		pageMaker.setTotalCount(service.listSearchCount_second(cri));

		model.addAttribute("pageMaker", pageMaker);
		
	}
	/* 상세 보기 */
	@RequestMapping(value = "/readPage", method = RequestMethod.GET)
	public void read(@RequestParam("backnum") int backnum, @ModelAttribute("cri") SearchCriteria cri, Model model)
			throws Exception {
		
		
		model.addAttribute(service.read(backnum));
		
	}
	/* 타자 기록 */
	@RequestMapping(value = "/BatterRecord", method = RequestMethod.GET)
	public void readBatterRecordGET(@RequestParam("backnum") int backnum,@ModelAttribute("cri") SearchCriteria cri, Model model)
			throws Exception {
		logger.info("BatterRecord");
		
//		model.addAttribute("list",service.);
		model.addAttribute("list",batterService.score(backnum));
		
	}
	/* 투수 기록 */
	@RequestMapping(value = "/PitcherRecord", method = RequestMethod.GET)
	public void readPicherRecordGET(@RequestParam("backnum") int backnum,@ModelAttribute("cri") SearchCriteria cri, Model model)
			throws Exception {
		logger.info("PitcherRecord");
		
//		model.addAttribute("list",service.);
		model.addAttribute("list",pitcherservice.score(backnum));
		
	}
	/* 선수 정보 수정 */
	@RequestMapping(value = "/modifyPage", method = RequestMethod.GET)
	public void modifyGET(int backnum, @ModelAttribute("cri") SearchCriteria cri, Model model)
			throws Exception {
		model.addAttribute(service.read(backnum));
		
	}
	/* 투수 기록 수정 */
	@RequestMapping(value = "/pitcherModifyPage", method = RequestMethod.GET)
	public void pitcherModifyGET(int backnum ,@ModelAttribute("cri") SearchCriteria cri, Model model)
			throws Exception {
		model.addAttribute("list",pitcherservice.score(backnum));
	}
	/* 투수 기록 수정 */
	@RequestMapping(value = "/pitcherModifyPage", method = RequestMethod.POST)
	public String pitcherModifyPOST(PitcherPlayerVO pvo, SearchCriteria cri, RedirectAttributes rttr)
			throws Exception {
		logger.info(cri.toString());
		pitcherservice.updateScore(pvo);
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		rttr.addFlashAttribute("msg", "SUCCESS");

		logger.info(rttr.toString());

		return "redirect:../player/mainPlayer";
	}
	/* 타자 기록 수정 */
	@RequestMapping(value = "/batterModifyPage", method = RequestMethod.GET)
	public void batterModifyGET(int backnum ,@ModelAttribute("cri") SearchCriteria cri, Model model)
			throws Exception {
		model.addAttribute("list",batterService.score(backnum));
	}
	/* 타자 기록 수정 */
	@RequestMapping(value = "/batterModifyPage", method = RequestMethod.POST)
	public String batterModifyPOST(BatterPlayerVO bvo, SearchCriteria cri, RedirectAttributes rttr)
			throws Exception {
		logger.info(cri.toString());
		batterService.updateScore(bvo);
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		rttr.addFlashAttribute("msg", "SUCCESS");

		logger.info(rttr.toString());

		return "redirect:../player/mainPlayer";
	}
	
	
	/* 선수 정보 수정 */
	@RequestMapping(value = "/modifyPage", method = RequestMethod.POST)
	public String modifyPagingPOST(PlayerVO vo, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

		logger.info(cri.toString());
		service.update(vo);

		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		rttr.addFlashAttribute("msg", "SUCCESS");

		logger.info(rttr.toString());

		return "redirect:../player/mainPlayer";
	}
	/* 선수 삭제 */
	@RequestMapping(value="/remove",method=RequestMethod.POST)
	public String playerRemoveGET(@RequestParam("backnum") int backnum,RedirectAttributes rttr) throws Exception {
		service.remove(backnum);
		rttr.addFlashAttribute("msg","SUCCESS");
		return "redirect:../player/mainPlayer";
	}
	/* 선수 등록 */
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void registGET() throws Exception {

		logger.info("regist get ...........");
	}
	/* 선수 등록 */
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registPOST(PlayerVO vo,BatterPlayerVO bvo, RedirectAttributes rttr) throws Exception {

		logger.info("regist post ...........");
		logger.info(vo.toString());
		String result = "";
		service.join_player(vo);
		//service.regist(board);
		
		rttr.addFlashAttribute("msg", "SUCCESS");
		return  "redirect:/ADMIN/player/mainPlayer";
	}
	
	/* 투수 기록 등록 */
	@RequestMapping(value = "/registerPitcherScore", method = RequestMethod.GET)
	public void registerPitcherScoreGET() throws Exception {

		logger.info("regist get ...........");
	}
	/* 투수 기록 등록 */
	@RequestMapping(value = "/registerPitcherScore", method = RequestMethod.POST)
	public String registerPitcherScorePOST(PlayerVO vo,PitcherPlayerVO pvo, RedirectAttributes rttr) throws Exception {

		logger.info("regist post ...........");
		logger.info(vo.toString());
		String result = "";
		service.join_playerPicherRecord(pvo);
		//service.regist(board);
		
		rttr.addFlashAttribute("msg", "SUCCESS");
		
			return "redirect:/ADMIN/player/mainPlayer";
	}
	
	/* 타자 기록 등록 */
	@RequestMapping(value = "/registerBatterScore", method = RequestMethod.GET)
	public void registerBatterScoreGET() throws Exception {

		logger.info("regist get ...........");
	}
	/* 타자 기록 등록 */
	@RequestMapping(value = "/registerBatterScore", method = RequestMethod.POST)
	public String registerBatterScorePOST(PlayerVO vo,BatterPlayerVO bvo, RedirectAttributes rttr) throws Exception {

		logger.info("regist post ...........");
		logger.info(vo.toString());
		String result = "";
		service.join_playerRecord(bvo);
		//service.regist(board);
		
		rttr.addFlashAttribute("msg", "SUCCESS");
			return  "redirect:/ADMIN/player/mainPlayer";
	}
}
