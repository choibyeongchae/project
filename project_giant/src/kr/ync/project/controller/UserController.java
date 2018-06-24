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

import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;
import kr.ync.project.service.UserService;

@Controller
@RequestMapping("/user/*")
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Inject
	private UserService service;

	/* 로그인 페이지 */
	@RequestMapping(value="/member",method=RequestMethod.GET)
	public void member_loginGET(@ModelAttribute("dto") LoginDTO dto) {
		
	}
	/* 로그인 처리 */
	@RequestMapping(value="/loginPost",method=RequestMethod.POST )
	public void loginPOST(LoginDTO dto, HttpSession session,Model model) throws Exception{
		
		UserVO vo = service.login(dto);
		
		if(vo == null)
			return;
		
		model.addAttribute("userVO",vo);
	}
	
	/* 회원 가입 */
	@RequestMapping (value="/member_insert",method=RequestMethod.GET)
	public void memberJoinGET(@ModelAttribute("vo") UserVO vo,Model model) throws Exception  {
		logger.info("JoinMember");
		
		
	}
	/* 중복 체크 */
	@RequestMapping (value="/memberCheckJoinPost",method=RequestMethod.POST)
	public String memberJoinCheckPOST(@ModelAttribute("vo") UserVO vo,Model model) throws Exception {
		logger.info("JoinMember");
		logger.info("post");
		
		return "redirect:/";
	}
	/* 중복 체크 */
	@RequestMapping (value="/member_insert_check",method=RequestMethod.GET)
	public void memberJoinCheckGET(@ModelAttribute("vo") UserVO vo,Model model) throws Exception {
		logger.info("get");
		
		int mem_count = service.joinMember_check(vo);
		model.addAttribute("result",mem_count);

	}
	/* 회원가입 처리 */
	@RequestMapping (value="/memberJoinPost",method=RequestMethod.POST)
	public String memberJoinPOST(@ModelAttribute("vo") UserVO vo,Model model,RedirectAttributes rttr) throws Exception {
		logger.info("post");
		
		int mem_count = service.joinMember_check(vo);
		model.addAttribute("result",mem_count);
		if(mem_count == 0) {
			service.joinMember(vo);
			rttr.addFlashAttribute("msg", "SUCCESS");
		}
		else if(mem_count == 1) {
			rttr.addFlashAttribute("msg", "false");
			return "redirect:/user/member_insert";
		}
		return "redirect:/user/member";
	}

	/* 로그아웃 */
	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public String logoutPOST(HttpServletRequest request,
			HttpServletResponse response, HttpSession session) throws Exception{
		Object obj = session.getAttribute("login");
		
		if(obj != null) {
			UserVO vo = (UserVO) obj;
			
			session.removeAttribute("login");
			session.invalidate();
		}
		return "user/logout";
	}
}
