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
import com.team.smart.utils.Functions;

/**
 * 
 * @author jihye
 *
 */
@Controller
public class FoodControllerAPI {
	
	@Autowired
	FoodService f_service;
	
	/*****************************************************************
	 * 
	 * API 영역 
	 *
	 *****************************************************************/
	// 앱 > 음식 상세보기 (메뉴, 업체정보 return)
	@RequestMapping(value="api/food/getFoodMenuList") //통신 사용시 이걸로 사용.
	public @ResponseBody HashMap<String, Object> getFoodDetailInfo(HttpServletRequest req) {
		
		List<FoodMenuVO> menuRes = f_service.getMenuList(req);//메뉴정보
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		if(menuRes != null) {
			map.put("menus", menuRes);
			map.put("responseCode", 100);
			map.put("responseMsg", "성공");
		} else {
			map.put("menus", null);
			map.put("responseCode", 999);
			map.put("responseMsg", "데이터 없음");
		}
		
		return map;
	}
	
	@RequestMapping(value="api/food/getStoreList") //통신 사용시 이걸로 사용.
	public @ResponseBody HashMap<String, Object> getStoreList(HttpServletRequest req) {
		
		List<FoodStoreVO> result = f_service.getFoodStoreList(req);

		HashMap<String, Object> map = new HashMap<String, Object>();
		if(result.size() > 0) {
			map.put("stores", result);
			map.put("responseCode", 100);
			map.put("responseMsg", "성공");
		} else {
			map.put("stores", null);
			map.put("responseCode", 999);
			map.put("responseMsg", "데이터 없음");
		}
		return map;
	}
	
	
	@RequestMapping(value="imageForm") //통신 사용시 이걸로 사용.
	public String imageForm(HttpServletRequest req) {
		return "imageForm";
	}
	
	@RequestMapping(value="fileUpload") //이미지
	public String fileUpload(HttpServletRequest req) {
		System.out.println(req.getSession().getServletContext().getRealPath("\\resources\\images\\food"));
		return "imageForm";
	}
	
	@RequestMapping(value="mimi") //통신 사용시 이걸로 사용.
	public @ResponseBody String  mimi(HttpServletRequest req) {
		f_service.test(req);
		return "";
	}
	
}

