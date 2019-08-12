package com.team.smart.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FoodController {
	
	private String mngFood_ = "mng/food";
	
	
	// 메인
	@RequestMapping("main")
	public String main(HttpServletRequest req, Model model) {
		
		return mngFood_ + "/main";
	}
	
	// 소개 작성 
	@RequestMapping("intorduction")
	public String intorduction(HttpServletRequest req, Model model) {
		
		return mngFood_ + "/intorduction";
	}
	
	// 상품리스트
	@RequestMapping("goodsList")
	public String goodsList(HttpServletRequest req, Model model) {
		
		return mngFood_ + "/goodsList";
	}
	
	// 메뉴 업로드
	@RequestMapping("menuUpload")
	public String menuUpload(HttpServletRequest req, Model model) {
		
		return mngFood_ + "/menuUpload";
	}
	
	// 주문 리스트
	@RequestMapping("orderList")
	public String orderList(HttpServletRequest req, Model model) {
		
		return mngFood_ + "/orderList";
	}
	
	// 지난 주문 리스트
	@RequestMapping("oldOrderList")
	public String oldOrderList(HttpServletRequest req, Model model) {
		
		return mngFood_ + "/oldOrderList";
	}
	
	// 쿠폰 업로드
	@RequestMapping("couponUpload")
	public String couponUpload(HttpServletRequest req, Model model) {
		
		return mngFood_ + "/couponUpload";
	}
	
	// 쿠폰 리스트
	@RequestMapping("couponList")
	public String couponList(HttpServletRequest req, Model model) {
		
		return mngFood_ + "/couponList";
	}
	
	// 휴무 
	@RequestMapping("closed")
	public String sing(HttpServletRequest req, Model model) {
		
		return mngFood_ + "/closed";
	}
}
