package kr.ync.project.controller;

import javax.inject.Inject;

import org.apache.log4j.spi.LoggerFactory;
import org.slf4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/Front/*")
public class FrontController {
	private static final Logger logger = org.slf4j.LoggerFactory.getLogger(FrontController.class);

	/* Front의 뿌려주는 화면은 여기서 처리 */
	
	@RequestMapping(value ="/introduce",method=RequestMethod.GET)
	public void IntroGET(Model model) {
		
		logger.info("introduce..............");
		
	}
	@RequestMapping(value ="/supervisor",method=RequestMethod.GET)
	public void superGET(Model model) {
		
		logger.info("introduce..............");
	}
	@RequestMapping(value ="/PitcherInformation",method=RequestMethod.GET)
	public void pitcherInforGET(Model model) {
		
		logger.info("introduce..............");
	}
	@RequestMapping(value ="/coach",method=RequestMethod.GET)
	public void coachGET(Model model) {
		
		logger.info("coach..................");
	}
	@RequestMapping(value ="/infielder",method=RequestMethod.GET)
	public void infielderGET(Model model) {
		logger.info("infielder..............");
	}
	@RequestMapping(value ="/outfielder",method=RequestMethod.GET)
	public void outfielderGET(Model model) {
		logger.info("outfielder.............");
	}
	@RequestMapping(value ="/catcher",method=RequestMethod.GET)
	public void catcherGET(Model model) {
		logger.info("catcher................");
	}
	@RequestMapping(value ="/pitcher",method=RequestMethod.GET)
	public void pitcherGET(Model model) {
		logger.info("pitcher................");
	}
	@RequestMapping(value ="/member",method=RequestMethod.GET)
	public void memberGET(Model model) {
		logger.info("member.................");
	}
}
