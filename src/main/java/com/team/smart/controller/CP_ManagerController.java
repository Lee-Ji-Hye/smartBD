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
	@RequestMapping(value="/intromn") //헤더에 걸려있는 메핑정보
	public String intromn(HttpServletRequest req, Model model) {
		log.info("url -> intromn");
		log.info("req.getSession().getServletContext().getRealPath(\"/resources/images/food/" + req.getSession().getServletContext().getRealPath("/resources/images/food/"));
		
		return "redirect:/cp_manager/intromn/inst";
	}
	
	// 소개 작성 
	@RequestMapping(value="/intromn/inst")
	public String intorduction(HttpServletRequest req, Model model) {
		log.info("url -> inst");
		log.info("req.getSession().getServletContext().getRealPath(\"/resources/images/food/" + req.getSession().getServletContext().getRealPath("/resources/images/food/"));
		
		service.getStore(req, model);
		
		return mngFood_ + "/intorduction";
	}

	// 소개 처리 
	@RequestMapping(value="/intromn/instPro")
	public String intorductionpro(MultipartHttpServletRequest req, Model model) {
		log.info("url -> instPro");
		
		service.insertStoreIntro(req, model);
		return "redirect:/cp_manager/intromn/inst";
	}
	
	// 메뉴 관리 대표메뉴
	@RequestMapping(value="/menumn") //헤더에 걸려있는 메핑정보
	public String menumn(HttpServletRequest req, Model model) {
		log.info("url -> menumn");
		
		return "redirect:/cp_manager/menumn/list";
	}
	
	// 메뉴 리스트
	@RequestMapping("/menumn/list") //헤더에 걸려있는 메핑정보
	public String goodsList(HttpServletRequest req, Model model) {
		log.info("url -> menumn");
		
		service.getGoodsList(req, model);
		
		return mngFood_ + "/goodsList";
	}
	
	// 메뉴 업로드
	@RequestMapping("/menumn/inst")
	public String menu(HttpServletRequest req, Model model) {
		log.info("url -> menu");
		
		service.getGoods(req, model);
		
		return mngFood_ + "/menuUpload";
	}
	
	// 메뉴 업로드 처리
	@RequestMapping("/menumn/instPro")
	public String menuUploadPro(MultipartHttpServletRequest req, Model model) {
		log.info("url -> menuUploadPro");
		
		service.insertGoodsIntro(req, model);
		
		return "redirect:/cp_manager/menumn/list";
	}
	
	// 메뉴 수정 
	@RequestMapping("/menumn/mod")
	public String menuMod(HttpServletRequest req, Model model) {
		log.info("url -> menuMod");
		
		service.modGoodsSu(req, model);
		
		return mngFood_ + "/menuUpload";
	}
	
	// 메뉴 수정 처리
	@RequestMapping("/menumn/modPro")
	public String menuModPro(MultipartHttpServletRequest req, Model model) {
		log.info("url -> menuModPro");
		
		service.modGoodsSuEnd(req, model);
		
		return "redirect:/cp_manager/menumn/list";
	}
	
	// 메뉴 삭제
	@RequestMapping("/menumn/del")
	public String menuDel(HttpServletRequest req, Model model) {
		log.info("url -> menuDel");
		
		service.delGoods(req, model);
		
		return "redirect:/cp_manager/menumn/list";
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
		
		service.getCouponList(req, model);
		
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
		
		service.insertCoupon(req, model);
		
		return "redirect:/cp_manager/cpmn/list";
		
	}
	
	// 쿠폰 삭제
	@RequestMapping("/cpmn/del")
	public String couponDel(HttpServletRequest req, Model model) {
		log.debug("url -> cpmn/del");
		
		service.delCoupon(req, model);
		
		return "redirect:/cp_manager/cpmn/list";
	}
	
	
}
