package kr.ync.project.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

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
import kr.ync.project.domain.TeamRankVO;
import kr.ync.project.domain.TeamRecordVO;
import kr.ync.project.domain.TeamVO;
import kr.ync.project.persistence.BoardDAO;
import kr.ync.project.service.BoardService;
import kr.ync.project.service.TeamRankService;
import kr.ync.project.service.TeamService;

@Controller
@RequestMapping("ADMIN/team/*")
public class AdminTeamController {

	private static final Logger logger = LoggerFactory.getLogger(AdminTeamController.class);

	
	@Inject
	private TeamService service; // 팀 정보

	@Inject
	private TeamRankService teamService; // 팀 순위,기록
	
	/* 팀 리스트 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void listPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		logger.info(cri.toString());

		//model.addAttribute("list", service.listCriteria(cri));
		model.addAttribute("list", service.list());

		
	}
	
	/* 팀 순위 상세보기 */
	@RequestMapping(value = "/listRankreadPage", method = RequestMethod.GET)
	public void readRank(@RequestParam("seasonyear") String seasonyear, @ModelAttribute("cri") SearchCriteria cri, Model model)
			throws Exception {
		
		model.addAttribute("teamVO",teamService.read(seasonyear));
		
	}
	
	/* 팀 기록 상세보기 */
	@RequestMapping(value = "/listRecordreadPage", method = RequestMethod.GET)
	public void readRecordGET(@RequestParam("seasonyear") String seasonyear, @ModelAttribute("cri") SearchCriteria cri, Model model)
			throws Exception {
		
		model.addAttribute("teamRecordVO",teamService.readRecord(seasonyear));
	}
	
	/* 팀 정보 상세보기 */
	@RequestMapping(value = "/readPage", method = RequestMethod.GET)
	public void read(@RequestParam("teamcode") String teamcode, @ModelAttribute("cri") SearchCriteria cri, Model model)
			throws Exception {
		
		model.addAttribute(service.read(teamcode));
	}
	
	/* 팀 기록 등록 */
	@RequestMapping(value = "/registerRecord", method = RequestMethod.GET)
	public void registerRecordGET() throws Exception {

		logger.info("regist get ...........");
	}
	/* 팀 기록 등록 */
	@RequestMapping(value = "/registerRecord", method = RequestMethod.POST)
	public String registerRecordPOST(TeamRecordVO vo, RedirectAttributes rttr) throws Exception {

		logger.info("regist post ...........");
		logger.info(vo.toString());

		teamService.insertTeamRecord(vo);

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/ADMIN/team/listRecord?year=2017";
	}
	
	/* 팀 순위 등록 */
	@RequestMapping(value = "/registerRank", method = RequestMethod.GET)
	public void registerRankGET() throws Exception {

		logger.info("regist get ...........");
	}
	
	/* 팀 순위 등록 */
	@RequestMapping(value = "/registerRank", method = RequestMethod.POST)
	public String registerRankPOST(TeamRankVO vo, RedirectAttributes rttr) throws Exception {

		
		logger.info("regist post ...........");
		logger.info(vo.toString());
		
		teamService.insertTeamRank(vo);
		
		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/ADMIN/team/listRank?year=2017";
	}
	
	/* 팀 순위 삭제 */
	@RequestMapping(value = "/removeRank", method = RequestMethod.POST)
	public String removeRankPOST(@RequestParam("seasonyear") String seasonyear,RedirectAttributes rttr) throws Exception {

		logger.info("remove get ...........");
		teamService.remove(seasonyear);
	
		return "redirect:/ADMIN/team/listRank?year=2017";
	}
	
	/* 팀 기록 삭제 */
	@RequestMapping(value = "/removeRecord", method = RequestMethod.POST)
	public String removeRecordPOST(@RequestParam("seasonyear") String seasonyear,RedirectAttributes rttr) throws Exception {

		logger.info("remove get ...........");
		teamService.removeRecord(seasonyear);
	
		return "redirect:/ADMIN/team/listRank?year=2017";
	}
	
	/* 팀 등록 */
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void registGET() throws Exception {

		logger.info("regist get ...........");
	}
	/* 팀 등록 */
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registPOST(TeamVO vo, RedirectAttributes rttr) throws Exception {

		logger.info("regist post ...........");
		logger.info(vo.toString());

		service.regist(vo);

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/ADMIN/team/list";
	}
	/* 팀 삭제 */
	@RequestMapping(value = "/removePage", method = RequestMethod.POST)
	public String remove(@RequestParam("teamname") String teamname, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

		service.remove(teamname);

		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/ADMIN/team/list";
	}
	
	/* 팀 순위 수정 */
	@RequestMapping(value = "/listRankmodifyPage", method = RequestMethod.GET)
	public void listRankmodifyPageGET(String seasonyear, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		model.addAttribute("teamVO",teamService.read(seasonyear));
	}
	/* 팀 순위 수정 */
	@RequestMapping(value = "/listRankmodifyPage", method = RequestMethod.POST)
	public String listRankmodifyPagePOST(TeamRankVO vo, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

		//model.addAttribute(service.read(teamcode));
		logger.info(cri.toString());
		teamService.modify(vo);
		return "redirect:/ADMIN/team/listRank?year=2017";
	}
	/* 팀 기록 수정 */
	@RequestMapping(value = "/RcordModifyPage", method = RequestMethod.GET)
	public void RecordModifyPageGET(String seasonyear, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		model.addAttribute("teamRecordVO",teamService.readRecord(seasonyear));
	}
	/* 팀 기록 수정 */
	@RequestMapping(value = "/RcordModifyPage", method = RequestMethod.POST)
	public String RecordModifyPagePOST(TeamRecordVO vo, SearchCriteria cri, RedirectAttributes rttr) throws Exception {
		logger.info(cri.toString());
		teamService.updateRecord(vo);

		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		rttr.addFlashAttribute("msg", "SUCCESS");

		logger.info(rttr.toString());

		return "redirect:/ADMIN/team/listRecord?year=2017";
		
	}
	/* 팀 정보 수정 */
	@RequestMapping(value = "/modifyPage", method = RequestMethod.GET)
	public void modifyPagingGET(String teamcode, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		model.addAttribute(service.read(teamcode));
	}
	/* 팀 정보 수정 */
	@RequestMapping(value = "/modifyPage", method = RequestMethod.POST)
	public String modifyPagingPOST(TeamVO vo, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

		logger.info(cri.toString());
		service.modify(vo);

		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		rttr.addFlashAttribute("msg", "SUCCESS");

		logger.info(rttr.toString());

		return "redirect:/ADMIN/team/list";
	}
	/* 팀 순위 리스트 */
	@RequestMapping(value = "/listRank", method = RequestMethod.GET)
	public void teamRankGET(TeamRankVO tvo,Model model,HttpServletRequest request) throws Exception {
		logger.info("show teamRank...");
		
		String year = request.getParameter("year"); // 연도별 관리를 위해 연도를 파라미터로 받아서 처리
		logger.info(year);
		model.addAttribute("list",teamService.list(year));
		
	}
	/* 팀 기록 리스트 */
	
	@RequestMapping(value ="/listRecord",method=RequestMethod.GET)
	public void teamRecordGET(TeamRecordVO rvo,Model model,HttpServletRequest request) throws Exception{
		logger.info("teamRecord.............");
		String year = request.getParameter("year"); // 연도별 관리를 위해 연도를 파라미터로 받아서 처리
		logger.info(year);
		model.addAttribute("list",teamService.record_list(year));
	}
}
