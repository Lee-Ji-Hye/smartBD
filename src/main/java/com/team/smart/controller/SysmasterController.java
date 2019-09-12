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
import com.team.smart.vo.BuildingVO;
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
	

	///업체 목록 단건
	@GetMapping({"/cormn/details/{comp_seq}"})
	public @ResponseBody CompVO cormndetails(HttpServletRequest req, @PathVariable String comp_seq) {
		log.info("url -> sysmaster/cormn/details/ get"+comp_seq);
		return sysService.compInfo(comp_seq);
	}

	///업체 삭제 단건
	@GetMapping({"/cormn/del/{comp_seq}"})
	public String cormDel(@PathVariable String comp_seq) {
		log.info("url -> sysmaster/cormn/details/ delete : " + comp_seq);
		sysService.compDel(comp_seq);
		return "redirect:/sysmaster/cormn/list";
	}

	///업체 삭제 단건
	@GetMapping({"/cormn/amd/{amd}/{comp_seq}"})
	public String cormAmd(@PathVariable String amd, @PathVariable String comp_seq) {
		log.info("url -> sysmaster/cormn/details/ delete : " + amd + comp_seq);
		sysService.compAmd(amd, comp_seq);
		return "redirect:/sysmaster/cormn/list";
	}
	
	
	//업체 등록 (관리자)
	@RequestMapping({"/cormn/inst"})
	public String cormnInsert(HttpServletRequest req, Model model) {
		//TODO 관리자 id 검색기능
		log.info("url -> sysmaster/cormn/inst");
		return jspPath+"/comp_signup";
	}
	
	//업체 등록 처리
	@RequestMapping({"/cormn/instpro"})
	public String cormnInsertpro(HttpServletRequest req, Model model) {
		log.info("url -> sysmaster/cormn/inst");
		sysService.compInsert(req, model);
		return "redirect:/sysmaster/cormn/list";
	}
	
	
	
	

	//빌딩 관리를 선택했을때
	@RequestMapping({"/bdmn"})
	public String bdmn(HttpServletRequest req, Model model) {
		log.info("url -> sysmaster/");
		return "redirect:/sysmaster/bdmn/list";
	}
	
	///업체 목록 목록
	@RequestMapping({"/bdmn/list"})
	public String bdmnlist(HttpServletRequest req, Model model) {
		log.info("url -> /sysmaster/bdmn/list");
		sysService.bdList(req, model);
		return jspPath+"/bdList";
	}

	///업체 목록 단건
	@GetMapping({"/bdmn/details/{b_code}"})
	public @ResponseBody BuildingVO bdmndetails(HttpServletRequest req, @PathVariable String b_code) {
		log.info("url -> /sysmaster/bdmn/details/{b_code}");
		return sysService.bdInfo(b_code);
	}

	///업체 삭제 단건
	@GetMapping({"/bdmn/del/{b_code}"})
	public String bdmnDel(@PathVariable String b_code) {
		log.info("url -> /sysmaster/bdmn/del/{b_code}");
		sysService.bdDel(b_code);
		return "redirect:/sysmaster/bdmn/list";
	}

	///업체 삭제 단건
	@GetMapping({"/bdmn/amd/{amd}/{b_code}"})
	public String bdmnAmd(@PathVariable String amd, @PathVariable String b_code) {
		log.info("url -> sysmaster/bdmn/amd/{amd}/{b_code}");
		sysService.bdAmd(amd, b_code);
		return "redirect:/sysmaster/bdmn/list";
	}
	

	//업체 등록 (관리자)
	@RequestMapping({"/bdmn/inst"})
	public String bdmnInsert(HttpServletRequest req, Model model) {
		//TODO 관리자 id 검색기능
		log.info("url -> sysmaster/bdmn/inst");
		return jspPath+"/bd_signup";
	}
	
	//업체 등록 처리
	@RequestMapping({"/bdmn/instpro"})
	public String bdmnInsertpro(HttpServletRequest req, Model model) {
		log.info("url -> sysmaster/bdmn/instpro");
		sysService.bdInsert(req, model);
		return "redirect:/sysmaster/bdmn/list";
	}

	
	
	
	
	
}
