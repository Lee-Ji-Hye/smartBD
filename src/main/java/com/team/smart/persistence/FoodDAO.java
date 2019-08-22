package com.team.smart.persistence;

import java.util.List;
import java.util.Map;

import com.team.smart.app.vo.FoodMenuVO;
import com.team.smart.app.vo.FoodStoreVO;

public interface FoodDAO {

	//상품 메뉴 가져오기
	public List<FoodMenuVO> getMenuList(String comp_seq);
	
	public List<FoodStoreVO> getFoodStoreList(Map<String, Object> map);
	
	
	//테스트
	public int getUniqIndex();
}
