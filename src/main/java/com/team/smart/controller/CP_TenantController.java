package com.team.smart.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team.smart.service.RoomService;
import com.team.smart.service.UserService;

import lombok.extern.slf4j.Slf4j;

/**
 * 
 * @author SH
 * @detail : 임차인 권한 매핑
 *
 */
@Slf4j
@Controller
@RequestMapping("/cp_tenant")
public class CP_TenantController {
	
	@Autowired
	RoomService r_service;

	private String mngBuilding_ = "mng/building";
	UserService userService;

	@RequestMapping({"/"})
	public String main(HttpServletRequest req, Model model) {
		log.info("url -> cp_tenant/");

		return "redirect:/admin";
	}
	
	//임차인 계약정보가져오기 
	@RequestMapping("memcontract")
	public String memcontract(HttpServletRequest req, Model model) {
				
				
		r_service.getContractmember(req, model);
				
				
		return mngBuilding_ + "/memcontract";
	}
			
	//임차인 납부정보가져오기
	@RequestMapping("mempaylist")
	public String mempaylist(HttpServletRequest req, Model model) {
				
				
		r_service.getmemberpaylist(req, model);
		
		return mngBuilding_ + "/mempaylist";
	}
	
	//업체 등록 등
	@RequestMapping({"/comp"})
	public String comp(HttpServletRequest req, Model model) {
		log.info("url -> cp_tenant/comp");

		return "redirect:/cp_tenant/comp/put";
	}
	

	//업체 등록 등
	@RequestMapping({"/comp/put"})
	public String insertComp(HttpServletRequest req, Model model) {
		log.info("url -> cp_tenant/comp/put");

		return "signup/comp_signup";
	}
	
	//업체 등록 등
	@RequestMapping("/comp/putpro")
	public String insertProComp(HttpServletRequest req, Model model) {
		log.info("url -> cp_tenant/comp/putpro");
		userService.insertComp(req, model);
		
		return "redirect:/cp_tenant/comp/comp_complet";
	}

	//업체 등록 등
	@RequestMapping("/comp/comp_complet")
	public String comp_complet(HttpServletRequest req, Model model) {
		log.info("url -> cp_tenant/comp/comp_complet");

		return "signup/comp_complet";
	}
	
}
