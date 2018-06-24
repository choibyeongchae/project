package kr.ync.project.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.ync.project.domain.UserVO;
import kr.ync.project.dto.LoginDTO;
import kr.ync.project.persistence.UserDAOImpl;

public class LoginInterceptor extends HandlerInterceptorAdapter {

	private static final String LOGIN = "login";
	private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);
	LoginDTO dto;
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

		HttpSession session = request.getSession();
		ModelMap modelMap = modelAndView.getModelMap();
		Object userVO = modelMap.get("userVO");

		if (userVO != null) {
			dto = new LoginDTO();
			logger.info("new login success");
			session.setAttribute(LOGIN, userVO);
			logger.info(userVO.toString());
			Object dest = session.getAttribute("dest");
			UserVO voObject = (UserVO) userVO;
			logger.info("test="+voObject.getMemberlevel());
			
			/* 회원 레벨이 1 이면*/
			if(voObject.getMemberlevel() == 1)
				response.sendRedirect(dest != null ? (String) dest : "../"); // 홈으로 이동
			else if(voObject.getMemberlevel() == 100) // 회원레벨이 100이면
				response.sendRedirect(dest != null ? (String) dest : "/ADMIN"); // 관리자 페이지로 이동
		}
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		HttpSession session = request.getSession();

		if (session.getAttribute(LOGIN) != null) {
			logger.info("clear login data before");
			session.removeAttribute(LOGIN);
		}

		return true;
	}
}
