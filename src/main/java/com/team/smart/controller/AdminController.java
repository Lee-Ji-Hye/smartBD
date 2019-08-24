package com.team.smart.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	//private Logger logger = LoggerFactory.getLogger(this.getClass());
	private String admin_ = "admin/";
	
	//메인
	@RequestMapping({"admin", "admin/index"})
	public String index(HttpServletRequest req, Model model) {
        //logger.debug("ID : {}");
		return admin_ + "index";
	}	
}