package com.team.smart.service;

import java.util.List;
import org.springframework.ui.Model;
import javax.servlet.http.HttpServletRequest;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import com.team.smart.app.vo.FoodMenuVO;
import com.team.smart.app.vo.FoodStoreVO;

public interface FoodService {

	// 음식점 소개 등록 
	public void storeIntro(MultipartHttpServletRequest req, Model model);
	
	// 음식점 상품 등록
	public void foodGoods(MultipartHttpServletRequest req, Model model);

	//메뉴 리스트
	public List<FoodMenuVO> getMenuList(HttpServletRequest req);
	
	//업체정보 리스트
	public List<FoodStoreVO> getFoodStoreList(HttpServletRequest req);

	public void test(HttpServletRequest req);

}
