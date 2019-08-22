package com.team.smart.persistence;

import java.util.List;
import java.util.Map;

import com.team.smart.app.vo.FoodMenuVO;
import com.team.smart.app.vo.FoodStoreVO;
import com.team.smart.food.vo.Food_companyVO;
import com.team.smart.food.vo.Food_menuVO;

public interface FoodDAO {
	//지혜======================================
	//상품 메뉴 가져오기
	public List<FoodMenuVO> getMenuList(String comp_seq);
	
	public List<FoodStoreVO> getFoodStoreList(Map<String, Object> map);
	
	
	
	//민경======================================
	// 음식점 소개 등록 페이지 처리 
	public int storeUp(Food_companyVO vo);
	
	// 음식점 상품 등록
	public int foodUp(Food_menuVO vo);
	
	//테스트
	public int getUniqIndex();
}
