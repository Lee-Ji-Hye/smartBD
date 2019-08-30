package com.team.smart.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team.smart.service.UserService;

import lombok.extern.slf4j.Slf4j;

//import org.springframework.security.access.prepost.PreAuthorize;
//@RequestMapping(value="mypage", method=RequestMethod.POST) //통신 사용시 이걸로 사용.


@Slf4j
@Controller
public class MainController {
	
	@Autowired
	UserService userService;
	
	
	
	//사업자 멤버 메인
	@RequestMapping({"/", "index"})
	public String index(HttpServletRequest req, Model model) {
        //logger.debug("ID : {}");
		return "index";
	}

	@RequestMapping({"/admin"})
	public String main(HttpServletRequest req, Model model) {
		log.info("url -> admin_index");
		return "admin/index";
	}
	
	
	
	
	/**
	 * 
	 * @param req 로그아웃을위함 시큐리티 get방식으로 로그아웃 불가능 따라서 redirect사용
	 * @param model
	 * @return
	 */

	@RequestMapping("login")
	public String login(HttpServletRequest req, Model model) {
		//로그아웃 후 메인으로 이동
		return "signup/login";
	}
	
	
	@RequestMapping("logout")
	public String logout(HttpServletRequest req, HttpServletResponse res) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		//로그아웃 핸들러로 로그아웃 처리
		req.getSession().removeAttribute("sessionAuth");
		if (auth != null){
			new SecurityContextLogoutHandler().logout(req, res, auth);
		}
		//로그아웃 후 메인으로 이동
		return "redirect:/";
	}
	

	//회원가입
	@RequestMapping("signUp")
	public String signUp() {
		log.info("url => signUp");
		return "signup/signup";
	}

	
	//회원가입처리
	@RequestMapping("signUpPro")
	public String signUpPro(HttpServletRequest req, Model model) {
		log.info("url => signUpPro");
		userService.signUpUser(req, model);
		return "redirect:/user_complet";
	}
	
	
	//user_complet 유저 회원가입완료
	@RequestMapping("user_complet")
	public String user_complet(HttpServletRequest req, HttpServletResponse res) {
		return "signup/user_complet";
	}
	
	
	
	
	
	@RequestMapping("mypage")
	public String mypage(HttpServletRequest req, Model model) {
		
		return "svc/parking/mypage";
	}
	
	@RequestMapping("room")
	public String room(HttpServletRequest req, Model model) {
		
		return "svc/parking/room";
	}
	
	@RequestMapping("inoutcar")
	public String inoutcar(HttpServletRequest req, Model model) {
		
		return "mng/parking/inoutcar";
	}
	//주차권 사용 내역
	@RequestMapping("uselist")
	public String uselist(HttpServletRequest req, Model model) {
		
		return "mng/parking/uselist";
	}
	//주차권 환불 내역
	@RequestMapping("refund")
	public String refund(HttpServletRequest req, Model model) {
		
		return "mng/parking/refund";
	}
	//주차권 발급 내역
	@RequestMapping("parkinglist")
	public String parkinglist(HttpServletRequest req, Model model) {
		
		return "mng/parking/parkinglist";
	}
	//주차권 사용
	@RequestMapping("ticketuse")
	public String parkinguse(HttpServletRequest req, Model model) {
		
		return "mng/parking/ticketuse";
	}
	
	//주차장현황  입차
	@RequestMapping("incar")
	public String incar(HttpServletRequest req, Model model) {
		
		return "mng/parking/incar";
	}
	
	//주차장 현황 출차
	@RequestMapping("outcar")
	public String outcar(HttpServletRequest req, Model model) {
		
		return "mng/parking/outcar";
	}	

	@RequestMapping("total")
	public String total(HttpServletRequest req, Model model) {
		
		return "mng/parking/total";
	}
	
	@RequestMapping("ticketmanager")
	public String ticketmanager(HttpServletRequest req, Model model) {
		
		return "mng/parking/ticketmanager";
	}
	
	
}
