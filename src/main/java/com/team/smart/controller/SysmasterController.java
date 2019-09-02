package com.team.smart.controller;

import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.team.smart.security.config.UserGrantedAuthority;
import com.team.smart.service.SysmasterService;
import com.team.smart.vo.CompVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/sysmaster")
public class SysmasterController {

	
	@Autowired
	SysmasterService sysService;
	
	String jspPath = "admin/";

	@RequestMapping({"/"})
	public String main(HttpServletRequest req, Model model) {
		log.info("url -> sysmaster/");
		return "redirect:/admin";
	}
	

	//선택했을때
	@RequestMapping({"/cormn"})
	public String cormn(HttpServletRequest req, Model model) {
		log.info("url -> sysmaster/");
		return "redirect:/sysmaster/cormn/list";
	}
	
	
	
	///업체 목록 목록
	@RequestMapping({"/cormn/list"})
	public String cormnlist(HttpServletRequest req, Model model) {
		log.info("url -> sysmaster/cormn/list");
		sysService.compList(req, model);
		return jspPath+"/compList";
	}
	

	///업체 목록 목록
	@GetMapping({"/cormn/details/{comp_seq}"})
	public @ResponseBody CompVO cormndetails(HttpServletRequest req, @PathVariable int comp_seq) {
		log.info("url -> sysmaster/cormn/details/"+comp_seq);
		return sysService.compInfo(comp_seq);
	}
	
}
