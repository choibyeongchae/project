package kr.ync.project.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ync.project.domain.TeamRankVO;
import kr.ync.project.domain.TeamRecordVO;
import kr.ync.project.service.TeamRankService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/team/*")
public class TeamController {
	
	@Inject 
	private TeamRankService service; //팀순위,기록
	
	private static final Logger logger = LoggerFactory.getLogger(TeamController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	/* 팀 순위 */
	@RequestMapping(value = "/teamRank", method = RequestMethod.GET)
	public void teamRankGET(TeamRankVO tvo,Model model,HttpServletRequest request) throws Exception {
		logger.info("show teamRank...");
		
		String year = request.getParameter("year"); //연도별로 뿌려주기 위한 year을 파라미터로 받음
		logger.info(year);
		model.addAttribute("list",service.list(year));
		
	}
	/* 팀 기록 */
	@RequestMapping(value ="/teamRecord",method=RequestMethod.GET)
	public void teamRecordGET(TeamRecordVO rvo,Model model,HttpServletRequest request) throws Exception{
		logger.info("teamRecord.............");
		String year = request.getParameter("year"); //연도별로 뿌려주기 위한 year을 파라미터로 받음
		logger.info(year);
		model.addAttribute("list",service.record_list(year));
	}
	
}
