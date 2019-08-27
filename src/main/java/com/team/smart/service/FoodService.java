package com.team.smart.service;

import java.util.List;
import org.springframework.ui.Model;
import javax.servlet.http.HttpServletRequest;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import com.team.smart.app.vo.FoodMenuVO;
import com.team.smart.app.vo.FoodStoreVO;

public interface FoodService {

	// 음식점 소개 등록 
	public void insertStoreIntro(MultipartHttpServletRequest req, Model model);
	
	// 음식점 소개 등록시 등록 글  
	public void getStore(HttpServletRequest req, Model model);
	
	// 음식점 소개 등록 수정 상세페이지
	public void modifyIntro(HttpServletRequest req, Model model);
	
	// 음식점 소개 등록 수정 처리 페이지
	public void modifyStoreUpdate(MultipartHttpServletRequest req, Model model);
	
	// 음식점 상품 등록
	public void insertFoodGoods(MultipartHttpServletRequest req, Model model);
	
	// 쿠폰 등록
	public void insertCoupon(HttpServletRequest req, Model model);
	
	// ------------- 지혜

	//메뉴 리스트
	public List<FoodMenuVO> getMenuList(HttpServletRequest req);
	
	//업체정보 리스트
	public List<FoodStoreVO> getFoodStoreList(HttpServletRequest req);

	public void test(HttpServletRequest req);

}
