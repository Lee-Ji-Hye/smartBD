package com.team.smart.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.team.smart.service.SysmasterService;
import com.team.smart.service.UserService;
import com.team.smart.vo.CompVO;

import lombok.extern.slf4j.Slf4j;

/**
 * 
 * @author SH
 * @detail : 건물 파트별 관리 (음식점) 권한 매핑
 *
 */
@Slf4j
@Controller
@RequestMapping("/bd_food")
public class BD_FoodController {

	
	@Autowired
	SysmasterService sysService;
	
	String jspPath = "admin/";

	
	@RequestMapping({"/"})
	public String main(HttpServletRequest req, Model model) {
		log.info("url -> bd_food/");

		return "redirect:/admin";
	}
	
	
	//선택했을때
	@RequestMapping({"/cormn"})
	public String cormn(HttpServletRequest req, Model model) {
		log.info("url -> bd_food/");
		return "redirect:/bd_food/cormn/list";
	}
	
	
	
	///업체 목록 목록
	@RequestMapping({"/cormn/list"})
	public String cormnlist(HttpServletRequest req, Model model) {
		log.info("url -> bd_food/cormn/list");
		sysService.compList(req, model);
		return jspPath+"/compList";
	}
	

	///업체 목록 단건
	@GetMapping({"/cormn/details/{comp_seq}"})
	public @ResponseBody CompVO cormndetails(HttpServletRequest req, @PathVariable String comp_seq) {
		log.info("url -> bd_food/cormn/details/ get"+comp_seq);
		return sysService.compInfo(comp_seq);
	}

	///업체 삭제 단건
	@GetMapping({"/cormn/del/{comp_seq}"})
	public String cormDel(@PathVariable String comp_seq) {
		log.info("url -> bd_food/cormn/details/ delete : " + comp_seq);
		sysService.compDel(comp_seq);
		return "redirect:/bd_food/cormn/list";
	}

	///업체 삭제 단건
	@GetMapping({"/cormn/amd/{amd}/{comp_seq}"})
	public String cormAmd(@PathVariable String amd, @PathVariable String comp_seq) {
		log.info("url -> bd_food/cormn/details/ delete : " + amd + comp_seq);
		sysService.compAmd(amd, comp_seq);
		return "redirect:/bd_food/cormn/list";
	}
	
	
	//업체 등록 (관리자)
	@RequestMapping({"/cormn/inst"})
	public String cormnInsert(HttpServletRequest req, Model model) {
		//TODO 관리자 id 검색기능
		log.info("url -> bd_food/cormn/inst");
		return jspPath+"/comp_signup";
	}
	
	//업체 등록 처리
	@RequestMapping({"/cormn/instpro"})
	public String cormnInsertpro(HttpServletRequest req, Model model) {
		log.info("url -> bd_food/cormn/inst");
		sysService.compInsert(req, model);
		return "redirect:/bd_food/cormn/list";
	}
	
	

	
}
