package com.team.smart.service;

import org.springframework.ui.Model;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartHttpServletRequest;
import com.team.smart.food.vo.Food_orderVO;

public interface FoodService {

	// 음식점 소개 등록 + 수정
	public void insertStoreIntro(MultipartHttpServletRequest req, Model model);
	
	// 음식점 소개 등록시 등록 글  
	public void getStore(HttpServletRequest req, Model model);
	
	// 음식점 쿠폰 등록
	public void insertCoupon(HttpServletRequest req, Model model);
	
	// 음식점 쿠폰 리스트
	public void getCouponList(HttpServletRequest req, Model model);
	
	// 음식점 쿠폰 리스트 상세보기
	public Map<String,Object>getDetailCoupon(String f_coupon_num);
	
	// 음식점 쿠폰 시리얼 등록
	public String insertSerialNum();
	
	// 음식점 쿠폰 리스트 삭제
	public void delCoupon(HttpServletRequest req, Model model);
	
	// 음식점 상품 등록 
	public void insertGoodsIntro(MultipartHttpServletRequest req, Model model);
	
	// 음식점 상품 등록시 등록 건
	public void getGoods(HttpServletRequest req, Model model);
	
	// 음식점 상품 등록 수정 
	public void modGoodsSu(HttpServletRequest req, Model model);
	
	// 음식점 상품 등록 수정 처리
	public void modGoodsSuEnd(MultipartHttpServletRequest req, Model model);
	
	// 음식점 상품 리스트
	public void getGoodsList(HttpServletRequest req, Model model);
	
	// 음식점 상품 삭제
	public void delGoods(HttpServletRequest req, Model model);
	
	// 음식점 주문 목록 
	public void getOrderFood(HttpServletRequest req, Model model);
	
	// 음식점 주문 목록 상세보기
	public Map<String,Object> getDetailOrder(String f_ocode);
	
	// 음식점 주문 승인 처리
	public void amdOrder(HttpServletResponse res, String f_ocode);
	
	// 음식점 주문 거절 처리
	public void amdNotOrder(HttpServletResponse res, String f_ocode);
	
	// 음식점 결산 페이지
	public void getAccounts(HttpServletRequest req, Model model);
	
	// ------------- 지혜

	public void test(HttpServletRequest req);

}
