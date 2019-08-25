package com.team.smart.controller.old;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.team.smart.service.FoodService;
import com.team.smart.service.FoodServiceImpl;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;


@Controller
public class FoodController {
	
	private static final Logger logger = LoggerFactory.getLogger(FoodController.class);

	
	private String mngFood_ = "mng/food";
	
	@Autowired
	FoodService service;
	
	
	// 메인
	@RequestMapping("mng/food/main")
	public String main(HttpServletRequest req, Model model) {
		logger.info("mng/food/main -> main");
		
		return mngFood_ + "/main";
	}

	// 소개 작성 
	@RequestMapping(value="mng/food/intorduction")
	public String intorduction(HttpServletRequest req, Model model) {
		logger.info("mng/food/intorduction -> intorduction");
		
		logger.info("req.getSession().getServletContext().getRealPath(\"/resources/images/food/" + req.getSession().getServletContext().getRealPath("/resources/images/food/"));
		return mngFood_ + "/intorduction";
	}

	// 소개 처리 
	@RequestMapping(value="mng/food/intorductionpro")
	public String intorductionpro(MultipartHttpServletRequest req, Model model) {
		logger.info("mng/food/intorduction -> intorduction");
		
		service.storeIntro(req, model);
		
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
	public String closed(HttpServletRequest req, Model model) {
		
		return mngFood_ + "/closed";
	}
	
	// 당일 결산
	@RequestMapping("mng/food/todayChart")
	public String money(HttpServletRequest req, Model model) {
		
		return mngFood_ + "/todayChart";
	}
	
	// 주간 결산
	@RequestMapping("mng/food/weekChart")
	public String weekChart(HttpServletRequest req, Model model) {
		
		return mngFood_ + "/weekChart";
	}
	
	// 월간 결산
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
