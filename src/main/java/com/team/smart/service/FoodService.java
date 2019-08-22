package com.team.smart.service;


import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface FoodService {

	// 음식점 소개 등록 
	public void storeIntro(MultipartHttpServletRequest req, Model model);
	
	// 음식점 상품 등록
	public void foodGoods(MultipartHttpServletRequest req, Model model);
}
