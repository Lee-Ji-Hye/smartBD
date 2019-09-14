package com.team.smart.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team.smart.service.FoodService;

import lombok.extern.slf4j.Slf4j;

/**
 * 
 * @author SH
 * @detail : 식당 주인 권한 매핑
 *
 */
@Slf4j
@Controller
@RequestMapping("/cp_admin")
public class CP_AdminController {
	
	@Autowired
	FoodService service;
	
	private String mngFood_ = "mng/food";


	@RequestMapping({"/"})
	public String main(HttpServletRequest req, Model model) {
		log.info("url -> cp_admin/");

		return "redirect:/admin";
	}
	
	// 결산
	 @RequestMapping("/settlement") 
	 public String chart(HttpServletRequest req,Model model) { 
		 log.debug("url -> settlement");
		 
		 service.getAccounts(req, model);
	 
	 return mngFood_ + "/foodChart"; 
	 }
	 
}
