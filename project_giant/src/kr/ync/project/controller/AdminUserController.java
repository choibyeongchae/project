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

import kr.ync.project.domain.PageMaker;
import kr.ync.project.domain.SearchCriteria;
import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;
import kr.ync.project.service.BoardService;
import kr.ync.project.service.UserService;

@Controller
@RequestMapping("ADMIN/user/*")
public class AdminUserController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminUserController.class);
	
	@Inject
	private UserService service; // 회원정보
	
	/* 회원정보 리스트 */
	@RequestMapping(value="/memberList",method=RequestMethod.GET)
	public void memberListGET(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info(cri.toString());

		model.addAttribute("list",service.memberListAll());
		
	}
	/* 회원정보 상세보기 */
	@RequestMapping(value="/readPage",method=RequestMethod.GET)
	public void memberListReadGET(@RequestParam("id") String uids,Model model) throws Exception {
		model.addAttribute(service.read(uids));
		
	}
	/* 회원 삭제 */
	@RequestMapping(value="/remove",method=RequestMethod.POST)
	public String memberRemoveGET(@RequestParam("id") String uids,RedirectAttributes rttr) throws Exception {
		service.remove(uids);
		rttr.addFlashAttribute("msg","SUCCESS");
		return "redirect:../user/memberList";
	}

	
	
}
