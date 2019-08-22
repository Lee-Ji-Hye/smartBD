package com.team.smart.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.team.smart.app.vo.FoodMenuVO;
import com.team.smart.app.vo.FoodStoreVO;

public interface FoodService {
	//메뉴 리스트
	public List<FoodMenuVO> getMenuList(HttpServletRequest req);
	
	//업체정보 리스트
	public List<FoodStoreVO> getFoodStoreList(HttpServletRequest req);

	
	public void test(HttpServletRequest req);
}
