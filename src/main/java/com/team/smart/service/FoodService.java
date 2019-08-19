package com.team.smart.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.team.smart.app.vo.FoodMenuVO;
import com.team.smart.app.vo.FoodStoreVO;

public interface FoodService {
	
	public List<FoodMenuVO> getMenuListTest(HttpServletRequest req);
	public List<FoodStoreVO> getFoodStoreList(HttpServletRequest req);

}
