package com.team.smart.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MainController {
	//private Logger logger = LoggerFactory.getLogger(this.getClass());

	//메인
	@RequestMapping({"/", "index"})
	public String index(HttpServletRequest req, Model model) {
        //logger.debug("ID : {}");
		return "index";
	}
	
	/**
	 * 
	 * @param req 로그아웃을위함 시큐리티 get방식으로 로그아웃 불가능 따라서 redirect사용
	 * @param model
	 * @return
	 */
	@RequestMapping("logout")
	public String logout(HttpServletRequest req, HttpServletResponse res) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		//로그아웃 핸들러로 로그아웃 처리
		if (auth != null){
			new SecurityContextLogoutHandler().logout(req, res, auth);
		}
		//로그아웃 후 메인으로 이동
		return "redirect:/";
	}
	
	//@RequestMapping(value="mypage", method=RequestMethod.POST) //통신 사용시 이걸로 사용.
	@RequestMapping("mypage")
	public String mypage(HttpServletRequest req, Model model) {
		
		return "svc/mypage";
	}
	
	@RequestMapping("room")
	public String room(HttpServletRequest req, Model model) {
		
		return "svc/room";
	}
}
