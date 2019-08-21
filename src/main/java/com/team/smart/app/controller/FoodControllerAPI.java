package com.team.smart.app.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.team.smart.app.vo.FoodMenuVO;
import com.team.smart.app.vo.FoodStoreVO;
import com.team.smart.service.FoodService;

@Controller
public class FoodControllerAPI {
	
	@Autowired
	FoodService f_service;
	
	/*****************************************************************
	 * 
	 * API 영역 
	 *
	 *****************************************************************/
	//  
	@RequestMapping(value="api/food/getList") //통신 사용시 이걸로 사용.
	public @ResponseBody HashMap<String, Object> foodGetList(HttpServletRequest req) {
		
		List<FoodMenuVO> result = f_service.getMenuListTest(req);
		//f_service.getMenuListTest(req);
		HashMap<String, Object> map = new HashMap<String, Object>();
		System.out.println("~1");
		if(result.size() > 0) {
			System.out.println("~2");
			map.put("foods", result);
			map.put("responseCode", 100);
			map.put("responseMsg", "성공");
		} else {
			System.out.println("~3");
			map.put("foods", null);
			map.put("responseCode", 999);
			map.put("responseMsg", "데이터 없음");
		}
		
		return map;
	}
	
	@RequestMapping(value="api/food/getStoreList") //통신 사용시 이걸로 사용.
	public @ResponseBody HashMap<String, Object> getStoreList(HttpServletRequest req) {
		
		List<FoodStoreVO> result = f_service.getFoodStoreList(req);
		//f_service.getMenuListTest(req);
		HashMap<String, Object> map = new HashMap<String, Object>();
		System.out.println("~1");
		if(result.size() > 0) {
			System.out.println("~2");
			map.put("foods", result);
			map.put("responseCode", 100);
			map.put("responseMsg", "성공");
		} else {
			System.out.println("~3");
			map.put("foods", null);
			map.put("responseCode", 999);
			map.put("responseMsg", "데이터 없음");
		}
		
		return map;
	}
	
}
