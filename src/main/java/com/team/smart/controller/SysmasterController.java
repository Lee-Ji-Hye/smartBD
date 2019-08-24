package com.team.smart.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/sysmaster")
public class SysmasterController {

	@RequestMapping({"/bdmn"})
	public String index(HttpServletRequest req, Model model) {
		log.debug("url -> sysmaster/bdmn");
		return "index";
	}
	
	
}
