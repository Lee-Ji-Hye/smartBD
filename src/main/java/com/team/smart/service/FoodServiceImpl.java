package com.team.smart.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.team.smart.food.persistence.FoodDAO;
import com.team.smart.food.vo.Food_companyVO;
import com.team.smart.food.vo.Food_menuVO;

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

	// 음식점 소개 등록
	@Override
	public void storeIntro(MultipartHttpServletRequest req, Model model) {
		System.out.println("food");
		MultipartFile file1 = req.getFile("file-attachment");

		String uploadPath = req.getSession().getServletContext().getRealPath("/resources/images/food/"); //
		System.out.println(uploadPath);
		String realDir = "C:\\Dew50\\workspace_t\\SmartDB\\src\\main\\webapp\\resources\\food\\";  //
		
		try {
			file1.transferTo(new File(uploadPath+file1.getOriginalFilename()));
			
			FileInputStream fis1 = new FileInputStream(uploadPath + file1.getOriginalFilename());
			FileOutputStream fos1 = new FileOutputStream(realDir + file1.getOriginalFilename());
			
			int data = 0;
			while((data = fis1.read()) != -1) { fos1.write(data); }
			fis1.close();
			fos1.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// VO에 담기
		Food_companyVO vo = Food_companyVO
							.builder()
							.f_seq(Integer.parseInt(req.getParameter("f_seq")))
							.comp_seq(1)  // 
							.long_dese(req.getParameter("long_dese"))
							.short_desc(req.getParameter("short_desc"))
							.f_category(req.getParameter("f_category"))
							.f_mainimg(file1.getOriginalFilename())
							.is_choise(req.getParameter("is_choise").charAt(0))
							.build();
		System.out.println("food_company" + vo.getF_category());
		int storeUpCode = f_dao.storeUp(vo);		
		
		// request나 session에 처리 결과 저장 
		model.addAttribute("storeUpCode" , storeUpCode);
	}

	// 음식점 상품 등록 
	@Override
	public void foodGoods(MultipartHttpServletRequest req, Model model) {
		
		MultipartFile file1 = req.getFile("file-attachment");
		
		String uploadPath = req.getSession().getServletContext().getRealPath("/resources/images/food/"); //
		System.out.println(uploadPath);
		String realDir = "C:\\Dew50\\workspace_t\\SmartDB\\src\\main\\webapp\\resources\\food\\";  //
		
		try {
			file1.transferTo(new File(uploadPath+file1.getOriginalFilename()));
			
			FileInputStream fis1 = new FileInputStream(uploadPath + file1.getOriginalFilename());
			FileOutputStream fos1 = new FileOutputStream(realDir + file1.getOriginalFilename());
			
			int data = 0;
			while((data = fis1.read()) != -1) { fos1.write(data); }
			fis1.close();
			fos1.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// VO에 담기
		Food_menuVO vo = Food_menuVO
							.builder()
							.f_code(req.getParameter("f_code"))
							.f_type(req.getParameter("f_type"))
							.f_name(req.getParameter("f_name"))
							.f_price(Integer.parseInt(req.getParameter("f_price")))
							.f_takeout(req.getParameter("f_takeout").charAt(0))
							.f_img(req.getParameter("f_img"))
							.f_icon(req.getParameter("f_icon"))
							.comp_seq(Integer.parseInt(req.getParameter("comp_seq")))
							.build();
							
		int foodUpCode = f_dao.foodUp(vo);		
		
		// request나 session에 처리 결과 저장 
		model.addAttribute("foodUpCode" , foodUpCode);
	}
	



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
