package com.team.smart.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team.smart.service.RoomService;

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

	@RequestMapping({"/"})
	public String main(HttpServletRequest req, Model model) {
		log.info("url -> cp_tenant/");

		return "redirect:/admin";
	}
	
	//임차인 계약정보가져오기 
	@RequestMapping("memcontract")
	public String memcontract(HttpServletRequest req, Model model) {
				
				
				
				
		return mngBuilding_ + "/memcontract";
	}
			
	//임차인 납부정보가져오기
	@RequestMapping("mempaylist")
	public String mempaylist(HttpServletRequest req, Model model) {
				
				
		r_service.getmemberpaylist(req, model);
		
		return mngBuilding_ + "/mempaylist";
	}
	
}
