package com.team.smart.persistance;

import java.util.List;

import com.team.smart.app.vo.FoodMenuVO;
import com.team.smart.app.vo.FoodStoreVO;

public interface FoodDAO {

	//상품 메뉴 가져오기
	public List<FoodMenuVO> getMenuList();
	
	public List<FoodStoreVO> getFoodStoreList(String f_category);
}
