package com.team.smart.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.team.smart.service.BDAdminService;
import com.team.smart.vo.AuthReqVO;

import lombok.extern.slf4j.Slf4j;

/**
 * 
 * @author SH
 * @detail : 건물주 권한 매핑
 *
 */
@Slf4j
@Controller
@RequestMapping("/bd_admin")
public class BD_AdminController {

	@Autowired
	BDAdminService bdService;
	
	@RequestMapping({"/"})
	public String main(HttpServletRequest req, Model model) {
		log.info("url -> bd_admin/");

		return "redirect:/admin";
	}
	
	//http://localhost/smart/bd_admin/bdmnermn

	// 권한 대표메뉴
	@RequestMapping(value="/bdmnermn") //헤더에 걸려있는 메핑정보
	public String menumn(HttpServletRequest req, Model model) {
		log.info("url -> menumn");
		
		return "redirect:/bd_admin/bdmnermn/list";
	}
	
	// 권한 리스트
	@RequestMapping("/bdmnermn/list") //헤더에 걸려있는 메핑정보
	public String goodsList(HttpServletRequest req, Model model) {
		log.info("url -> menumn");
		
		bdService.bdauthlist(req, model);
		
		return "admin/bdadmin_authList";
	}

	///권한 목록 단건
	@GetMapping({"/bdmnermn/details/{userid}/{req_auth}"})
	public @ResponseBody AuthReqVO bdmnermndetails(HttpServletRequest req, @PathVariable String userid, @PathVariable String req_auth) {
		log.info("url -> /bd_admin/bdmnermn/details/{userid}");
		return bdService.authInfo(req, userid, req_auth);
	}

	///권한 권한 수정 단건
	@GetMapping({"/bdmnermn/amd/{amd}/{userid}/{req_auth}"})
	public String bdmnermnAmd(HttpServletRequest req, @PathVariable String amd, @PathVariable String userid, @PathVariable String req_auth) {
		log.info("url -> bd_admin/bdmnermn/amd/{amd}/{userid}");
		bdService.authAmd(req, amd, userid, req_auth);
		return "redirect:/bd_admin/bdmnermn/list";
	}
	
	///권한 삭제 단건
	@GetMapping({"/bdmnermn/del/{userid}/{req_auth}"})
	public String bdmnermnDel(HttpServletRequest req, @PathVariable String userid, @PathVariable String req_auth) {
		log.info("url -> /bd_admin/bdmnermn/del/{userid}");
		bdService.authDel(req, userid, req_auth);
		return "redirect:/bd_admin/bdmnermn/list";
	}
	
	
}
