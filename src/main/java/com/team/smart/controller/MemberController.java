package com.team.smart.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

/**
 * 
 * @author SH
 * @detail : 임차인 권한 매핑
 *
 */
@Slf4j
@Controller
@RequestMapping("/member")
public class MemberController {


	@RequestMapping({"/"})
	public String main(HttpServletRequest req, Model model) {
		log.info("url -> member/");

		return "redirect:/admin";
	}

	//직원 권한 요청
	@RequestMapping({"/auth"})
	public String auth(HttpServletRequest req, Model model) {
		log.info("url -> member/auth");

		return "redirect:/admin";
	}
	
	//내 정보
	@RequestMapping({"/member"})
	public String member(HttpServletRequest req, Model model) {
		log.info("url -> member/member");

		return "redirect:/admin";
	}

	//건물 등록등
	@RequestMapping({"/bdmn"})
	public String bdmn(HttpServletRequest req, Model model) {
		log.info("url -> member/bdmn");

		return "redirect:/admin";
	}

	//업체 등록 등
	@RequestMapping({"/comp"})
	public String comp(HttpServletRequest req, Model model) {
		log.info("url -> member/comp");

		return "redirect:/member/comp/put";
	}
	

	//업체 등록 등
	@RequestMapping({"/comp/put"})
	public String insertComp(HttpServletRequest req, Model model) {
		log.info("url -> member/comp/put");

		return "signup/comp_signup";
	}
	
	//업체 등록 등
	@RequestMapping("/comp/putpro")
	public String insertProComp(HttpServletRequest req, Model model) {
		log.info("url -> member/comp/putpro");

		return "redirect:/member/comp/comp_complet";
	}

	//업체 등록 등
	@RequestMapping("/comp/comp_complet")
	public String comp_complet(HttpServletRequest req, Model model) {
		log.info("url -> member/comp/comp_complet");

		return "signup/comp_complet";
	}
	
	
	
	
	
}
