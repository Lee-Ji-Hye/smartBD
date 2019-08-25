package com.team.smart.controller;

import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team.smart.security.config.UserGrantedAuthority;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/sysmaster")
public class SysmasterController {

	

	@RequestMapping({"/"})
	public String main(HttpServletRequest req, Model model) {
		log.info("url -> sysmaster/");
		return "test";
	}
	
	
	
}
