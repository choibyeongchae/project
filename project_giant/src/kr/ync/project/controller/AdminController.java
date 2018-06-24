package kr.ync.project.controller;

import javax.inject.Inject;

import org.apache.log4j.spi.LoggerFactory;
import org.slf4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/ADMIN/*")
public class AdminController {
	private static final Logger logger = org.slf4j.LoggerFactory.getLogger(AdminController.class);

	@RequestMapping(value ="/",method=RequestMethod.GET)
	public String IntroGET(Model model) {
		
		logger.info("introduce..............");
		
		return "AdminHome";
	}
	
	
}
