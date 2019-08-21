package com.team.smart.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.smart.app.vo.FoodMenuVO;
import com.team.smart.app.vo.FoodStoreVO;
import com.team.smart.persistance.FoodDAO;

/**
 * 음식점 Service
 * @author jihye, minkyung
 * 
 */
@Service
public class FoodServiceImpl implements FoodService {
	
	@Autowired
	FoodDAO f_dao;

	@Override
	public List<FoodMenuVO> getMenuListTest(HttpServletRequest req) {
		// TODO 메뉴 리스트 가져오기 테스트
		List<FoodMenuVO> menuList = f_dao.getMenuList();
		if(menuList.size() <= 0) {
			System.out.println("뎃타 없음");
		} else {
			System.out.println(menuList.get(0).toString());
		}
		return menuList;
	}

	@Override
	public List<FoodStoreVO> getFoodStoreList(HttpServletRequest req) {
		// TODO 업체정보 가져오기
		
		String f_category = (req.getParameter("f_category") == "")? null : req.getParameter("f_category");
		List<FoodStoreVO> storeList = f_dao.getFoodStoreList(f_category);
		
		if(storeList.size() <= 0) {
			System.out.println("뎃타 없음");
		} else {
			System.out.println(storeList.get(0).toString());
		}
		
		return storeList;
	}
	
	

}
