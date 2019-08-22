package com.team.smart.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.smart.app.vo.FoodMenuVO;
import com.team.smart.app.vo.FoodStoreVO;
import com.team.smart.persistence.FoodDAO;
import com.team.smart.utils.Functions;

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
	public List<FoodMenuVO> getMenuList(HttpServletRequest req) {
		// TODO 메뉴 리스트 가져오기 테스트
		
		String comp_seq = (req.getParameter("comp_seq") == "")? null : req.getParameter("comp_seq");
		List<FoodMenuVO> menuList = f_dao.getMenuList(comp_seq);
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
		String comp_seq = (req.getParameter("comp_seq") == "")? null : req.getParameter("comp_seq");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("f_category", f_category);
		map.put("comp_seq", comp_seq);
		System.out.println(map);
		List<FoodStoreVO> storeList = f_dao.getFoodStoreList(map);
		
		if(storeList.size() <= 0) {
			System.out.println("뎃타 없음");
		} else {
			System.out.println(storeList.get(0).toString());
		}
		
		return storeList;
	}

	//매물 등록함수
	@Override
	public void test(HttpServletRequest req) {
		// TODO Auto-generated method stub
		Functions fn = Functions.getInstance();
		String mimi = fn.mkRcode(f_dao);
		
		//가격, 보증금
		
	}

}
