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
import kr.ync.project.service.BatterService;
import kr.ync.project.service.PitcherService;
import kr.ync.project.service.TeamRankService;
import kr.ync.project.service.UserService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/player/*")
public class PlayerController {
	
//	@Inject 
//	private BatterPlayerService service;
	
	private static final Logger logger = LoggerFactory.getLogger(PlayerController.class);
	
	@Inject
	private BatterService service; // 타자 정보
	
	@Inject PitcherService pitService; // 투수 정보 
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	/* 타자 기록을 보는 페이지 */
	@RequestMapping(value = "/playerInformation", method = RequestMethod.GET)
	public void infielderScoreGET(Model model,Model thisModel,@RequestParam("backnum") int backnum) throws Exception {
		logger.info("show teamRank...");
		
		model.addAttribute("list",service.score(backnum));
		
	}
	/* 투수 기록을 보는 페이지 */
	
	@RequestMapping(value = "/PitcherInformation", method = RequestMethod.GET)
	public void pitcherScoreGET(Model model,Model thisModel,@RequestParam("backnum") int backnum) throws Exception {
		logger.info("show teamRank...");
		
	
		
		model.addAttribute("list",pitService.score(backnum));
		
	}
	
	
	
}
