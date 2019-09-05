package com.team.smart.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

/**
 * 
 * @author SH
 * @detail : 건물 파트별 관리 (임대) 권한 매핑
 *
 */
@Slf4j
@Controller
@RequestMapping("/bd_office")
public class BD_OfficeController {


	@RequestMapping({"/"})
	public String main(HttpServletRequest req, Model model) {
		log.info("url -> bd_office/");

		return "redirect:/admin";
	}
	
	
}
