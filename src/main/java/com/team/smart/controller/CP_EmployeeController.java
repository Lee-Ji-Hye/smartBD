package com.team.smart.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.team.smart.food.vo.Food_orderVO;
import com.team.smart.service.FoodService;

import lombok.extern.slf4j.Slf4j;

/**
 * 
 * @author SH
 * @detail : 식당 일반 직원 권한 매핑
 *
 */
@Slf4j
@Controller
@RequestMapping("/cp_employee")
public class CP_EmployeeController {
	
	@Autowired
	FoodService service;
	
	private String mngFood_ = "mng/food";

	
	@RequestMapping({"/"})
	public String main(HttpServletRequest req, Model model) {
		log.info("url -> cp_employee/");

		return "redirect:/admin";
	}
	
	// =============================== 민경 
	// 주문건 대표 메뉴
	@RequestMapping(value="/odmn")
	public String orderOne(HttpServletRequest req, Model model) {
		log.info("url -> orderOne/");
		
		return "redirect:/cp_employee/odmn/list";
	}
	
	// 주문건 메뉴 리스트
	@RequestMapping("/odmn/list")
	public String order(HttpServletRequest req, Model model) {
		log.info("url -> order/");
		
		service.getOrderFood(req, model);
		
		return mngFood_ + "/orderList";
	}
	
	// 주문건 메뉴 상세보기
	@GetMapping("/odmn/amd/{f_ocode}")
	public @ResponseBody Food_orderVO orderDetail(HttpServletRequest req, @PathVariable String f_ocode) {
		log.info("url -> orderDetail/");
		
		return service.getDetailOrder(f_ocode);
	}
	
	// 주문건 승인 처리
	//@GetMapping("/odmn/amd/{f_ocode}/{f_status}")
	//public @ResponseBody Map<String,String> amdFood(HttpServletRequest req, @PathVariable String f_ocode) {
		//log.info("url -> orderDetail/");
	//}
	
	
	/*
	 * // 주문 건 상세보기
	 * 
	 * @RequestMapping("/odmn/amd") public String orderDetail(HttpServletRequest
	 * req, Model model) { log.info("url -> orderDetail/");
	 * 
	 * return mngFood_ + "/orderDetail"; }
	 */
}
	

