package com.team.smart.food.persistence;

import com.team.smart.food.vo.Food_companyVO;
import com.team.smart.food.vo.Food_menuVO;

public interface FoodDAO {
	
	// 음식점 소개 등록 페이지 처리 
	public int storeUp(Food_companyVO vo);
	
	// 음식점 상품 등록
	public int foodUp(Food_menuVO vo);

}
