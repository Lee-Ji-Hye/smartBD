package com.team.smart.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
		
		return "index";
	}
	
}
