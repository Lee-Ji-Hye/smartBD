package com.team.smart.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.team.smart.service.FoodService;

import lombok.extern.slf4j.Slf4j;

/**
 * 
 * @author SH
 * @detail : 식당 매니저 권한 매핑
 *
 */
@Slf4j
@Controller
@RequestMapping("/cp_manager")
public class CP_ManagerController {
	
	@Autowired
	FoodService service;
	
	private String mngFood_ = "mng/food";


	@RequestMapping({"/"})
	public String main(HttpServletRequest req, Model model) {
		log.info("url -> cp_manager/");

		return "redirect:/admin";
	}
	
	//----민경
	// 소개 대표메뉴
	@RequestMapping(value="/intromn")//헤더에 걸려있는 메핑정보
	public String intromn(HttpServletRequest req, Model model) {
		log.info("mng/food/intorduction -> intromn");
		
		log.info("req.getSession().getServletContext().getRealPath(\"/resources/images/food/" + req.getSession().getServletContext().getRealPath("/resources/images/food/"));
		return "redirect:/cp_manager/intromn/inst";
	}
	
	// 소개 작성 
	@RequestMapping(value="/intromn/inst")
	public String intorduction(HttpServletRequest req, Model model) {
		log.info("mng/food/intorduction -> inst");
		
		log.info("req.getSession().getServletContext().getRealPath(\"/resources/images/food/" + req.getSession().getServletContext().getRealPath("/resources/images/food/"));
		return mngFood_ + "/intorduction";
	}

	// 소개 처리 
	@RequestMapping(value="/intromn/instPro")
	public String intorductionpro(MultipartHttpServletRequest req, Model model) {
		log.info("mng/food/intorduction -> instPro");
		
		service.insertStoreIntro(req, model);
		
		return mngFood_ + "/intorduction";
	}
	
	
	// 메뉴 관리
	@RequestMapping(value="/menumn")//헤더에 걸려있는 메핑정보
	public String menumn(HttpServletRequest req, Model model) {
		log.info("mng/food/intorduction -> menumn");
		
		return "redirect:/cp_manager/intromn/inst";
	}

	// 쿠폰 대표메뉴
	@RequestMapping("/cpmn")
	public String coupon(HttpServletRequest req, Model model) {
		log.info("url -> coupon");
		
		return "redirect:/cp_manager/cpmn/list";
	}
	
	// 쿠폰 리스트
	@RequestMapping("/cpmn/list")
	public String couponList(HttpServletRequest req, Model model) {
		log.info("url -> /cpmn/list");
		
		return mngFood_ + "/couponList";
		
	}
	
	// 쿠폰 업로드
	@RequestMapping("/cpmn/inst")
	public String couponUpload(HttpServletRequest req, Model model) {
		log.info("url -> couponUpload");
		
		
		return mngFood_ + "/couponUpload";
	}
	
	// 쿠폰 업로드 처리
	@RequestMapping("cpmn/instPro")
	public String couponUploadPro(HttpServletRequest req, Model model) {
		log.info("url -> cpmn/instPro");
		
		service.insertCoupon(req, model);//
		
		return "redirect:/cp_manager/cpmn/list";
		
	}
	
	
	
	
	
	
	
}
