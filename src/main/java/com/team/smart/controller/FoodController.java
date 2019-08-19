package com.team.smart.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FoodController {
	
	private String mngFood_ = "mng/food";
	
	
	// 메인
	@RequestMapping("mng/food/main")
	public String main(HttpServletRequest req, Model model) {
		
		return mngFood_ + "/main";
	}
	
	// 소개 작성 
	@RequestMapping("mng/food/intorduction")
	public String intorduction(HttpServletRequest req, Model model) {
		
		return mngFood_ + "/intorduction";
	}
	
	// 상품리스트
	@RequestMapping("mng/food/goodsList")
	public String goodsList(HttpServletRequest req, Model model) {
		
		return mngFood_ + "/goodsList";
	}
	
	// 메뉴 업로드
	@RequestMapping("mng/food/menuUpload")
	public String menuUpload(HttpServletRequest req, Model model) {
		
		return mngFood_ + "/menuUpload";
	}
	
	// 주문 리스트
	@RequestMapping("mng/food/orderList")
	public String orderList(HttpServletRequest req, Model model) {
		
		return mngFood_ + "/orderList";
	}
	
	// 지난 주문 리스트
	@RequestMapping("mng/food/oldOrderList")
	public String oldOrderList(HttpServletRequest req, Model model) {
		
		return mngFood_ + "/oldOrderList";
	}
	
	// 쿠폰 업로드
	@RequestMapping("mng/food/couponUpload")
	public String couponUpload(HttpServletRequest req, Model model) {
		
		return mngFood_ + "/couponUpload";
	}
	
	// 쿠폰 리스트
	@RequestMapping("mng/food/couponList")
	public String couponList(HttpServletRequest req, Model model) {
		
		return mngFood_ + "/couponList";
	}
	
	// 휴무 
	@RequestMapping("mng/food/closed")
	public String sing(HttpServletRequest req, Model model) {
		
		return mngFood_ + "/closed";
	}
	
	// 결산
	@RequestMapping("mng/food/todayChart")
	public String money(HttpServletRequest req, Model model) {
		
		return mngFood_ + "/todayChart";
	}
	
	// 결산
		@RequestMapping("mng/food/weekChart")
		public String weekChart(HttpServletRequest req, Model model) {
			
			return mngFood_ + "/weekChart";
		}
		
		// 결산
		@RequestMapping("mng/food/monthChart")
		public String monthChart(HttpServletRequest req, Model model) {
			
			return mngFood_ + "/monthChart";
		}
	
	//
	@RequestMapping("mng/food/don")
	public String don(HttpServletRequest req, Model model) {
		
		return mngFood_ + "/don";
	}
}
