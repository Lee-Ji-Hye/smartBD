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

@Service
public class FoodServiceImpl implements FoodService {
	
	@Autowired
	FoodDAO dao;

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
		int storeUpCode = dao.storeUp(vo);		
		
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
							
		int foodUpCode = dao.foodUp(vo);		
		
		// request나 session에 처리 결과 저장 
		model.addAttribute("foodUpCode" , foodUpCode);
	}
	
}
