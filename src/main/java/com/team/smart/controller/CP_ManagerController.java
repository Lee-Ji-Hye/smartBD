package com.team.smart.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

/**
 * 
 * @author SH
 * @detail : 식당 매니저 권한 매핑
 *
 */
@Slf4j
@Controller
@RequestMapping("/cp_manager")
public class CP_ManagerController {


	@RequestMapping({"/"})
	public String main(HttpServletRequest req, Model model) {
		log.info("url -> cp_manager/");
		
		return "index";
	}
	
}
