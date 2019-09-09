package com.team.smart.service;

import java.util.List;
import org.springframework.ui.Model;
import javax.servlet.http.HttpServletRequest;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import com.team.smart.app.vo.FoodMenuVO;
import com.team.smart.app.vo.FoodStoreVO;
import com.team.smart.food.vo.Food_orderVO;

public interface FoodService {

	// 음식점 소개 등록 + 수정
	public void insertStoreIntro(MultipartHttpServletRequest req, Model model);
	
	// 음식점 소개 등록시 등록 글  
	public void getStore(HttpServletRequest req, Model model);
	
	// 쿠폰 등록
	public void insertCoupon(HttpServletRequest req, Model model);
	
	// 쿠폰 리스트
	public void getCouponList(HttpServletRequest req, Model model);
	
	// 쿠폰 시리얼 등록
	public String insertSerialNum();
	
	// 쿠폰 리스트 삭제
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
	public Food_orderVO getDetailOrder(String f_ocode);
	
	// ------------- 지혜

	public void test(HttpServletRequest req);

}
