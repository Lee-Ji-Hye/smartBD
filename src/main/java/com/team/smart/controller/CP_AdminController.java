package com.team.smart.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.team.smart.service.CPAdminService;
import com.team.smart.service.FoodService;
import com.team.smart.vo.AuthReqVO;

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

	@Autowired
	CPAdminService cpService;
	
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

	
	
	/**
	 * 
	 * @param req
	 * @param model
	 * @return
	 */
	// 권한 대표메뉴
	@RequestMapping(value="/fdepmn") //헤더에 걸려있는 메핑정보
	public String menumn(HttpServletRequest req, Model model) {
		log.info("url -> menumn");
		
		return "redirect:/cp_admin/fdepmn/list";
	}
	
	// 권한 리스트
	@RequestMapping("/fdepmn/list") //헤더에 걸려있는 메핑정보
	public String goodsList(HttpServletRequest req, Model model) {
		log.info("url -> menumn");
		
		cpService.bdauthlist(req, model);
		
		return "admin/cpadmin_authList";
	}

	///권한 목록 단건
	@GetMapping({"/fdepmn/details/{userid}/{req_auth}"})
	public @ResponseBody AuthReqVO fdepmndetails(HttpServletRequest req, @PathVariable String userid, @PathVariable String req_auth) {
		log.info("url -> /cp_admin/fdepmn/details/{userid}");
		return cpService.authInfo(req, userid, req_auth);
	}

	///권한 권한 수정 단건
	@GetMapping({"/fdepmn/amd/{amd}/{userid}/{req_auth}"})
	public String fdepmnAmd(HttpServletRequest req, @PathVariable String amd, @PathVariable String userid, @PathVariable String req_auth) {
		log.info("url -> cp_admin/fdepmn/amd/{amd}/{userid}");
		cpService.authAmd(req, amd, userid, req_auth);
		return "redirect:/cp_admin/fdepmn/list";
	}
	
	///권한 삭제 단건
	@GetMapping({"/fdepmn/del/{userid}/{req_auth}"})
	public String fdepmnDel(HttpServletRequest req, @PathVariable String userid, @PathVariable String req_auth) {
		log.info("url -> /cp_admin/fdepmn/del/{userid}");
		cpService.authDel(req, userid, req_auth);
		return "redirect:/cp_admin/fdepmn/list";
	}
		
}
