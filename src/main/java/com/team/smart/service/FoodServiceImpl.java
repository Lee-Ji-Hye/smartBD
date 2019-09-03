package com.team.smart.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.sql.Timestamp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

//import com.team.smart.food.persistence.FoodDAO;
import com.team.smart.food.vo.Food_companyVO;
import com.team.smart.food.vo.Food_couponVO;
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

import lombok.extern.slf4j.Slf4j;

/**
 * 음식점 Service
 * @author jihye, minkyung
 * 
 */
@Slf4j
@Service
public class FoodServiceImpl implements FoodService {
	
	@Autowired
	FoodDAO f_dao;

	// 음식점 소개 등록
		@Override
		public void insertStoreIntro(MultipartHttpServletRequest req, Model model) {
			System.out.println("food");
			MultipartFile file1 = req.getFile("f_mainimg");

			String uploadPath = req.getSession().getServletContext().getRealPath("/resources/images/food/"); 
			System.out.println(uploadPath);
			String realDir = "C:\\Users\\KIM\\git\\smartBD_new\\src\\main\\webapp\\resources\\images\\food\\";  
			
			try {
				
				if(file1 != null) {
					file1.transferTo(new File(uploadPath+file1.getOriginalFilename()));
					
					FileInputStream fis1 = new FileInputStream(uploadPath + file1.getOriginalFilename());
					FileOutputStream fos1 = new FileOutputStream(realDir + file1.getOriginalFilename());
					
					int data = 0;
					while((data = fis1.read()) != -1) { fos1.write(data); }
					fis1.close();
				fos1.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			
			String images_name = null;
			
			if(file1 != null) {
				images_name = file1.getOriginalFilename();
			}
			
			// VO에 담기
			// 업체정보 가져오기
			int comp_seq = Integer.parseInt((String)req.getSession().getAttribute("comp_seq"));
			String comp_org = (String)req.getSession().getAttribute("comp_org");

			log.debug("업체정보 : " + comp_seq + " " + comp_org);
			
			Food_companyVO vo = Food_companyVO
								.builder()
								.comp_seq(comp_seq)  // 
								.long_desc(req.getParameter("long_desc"))
								.short_desc(req.getParameter("short_desc"))
								.f_category(req.getParameter("f_category"))
								.f_mainimg(images_name)
								.build();
			
			log.debug("food_company:" + vo.toString());
			
			
			
			int storeUpCode = f_dao.insertStoreUp(vo);
			
			// request나 session에 처리 결과 저장 
			model.addAttribute("storeUpCode" , storeUpCode);
		}
			
		// 음식점 소개 등록시 소개 글 
		@Override
		public void getStore(HttpServletRequest req, Model model) {
			
			List<Food_companyVO> list = f_dao.getStore();
			
			model.addAttribute("store", list);
		}
		
		// 음식점 소개 등록 수정 상세페이지 ->폼에 있는 정보를 db에 넣음
		@Override
		public void modifyIntro(HttpServletRequest req, Model model) {
			
			String strComp_seq = "10";
					//req.getParameter("comp_seq");
			// String strComp_seq = SecurityContextHolder.getContext().getAuthentication().getName();
			
			// 업체 코드를 통해 등록 글 조회
			Food_companyVO vo = f_dao.getStoreSujung(strComp_seq);
			
			model.addAttribute("vo", vo);
			
			System.out.println("storePage" + vo);
			
			
		}
		
		// 음식점 소개 등록 수정 처리
		@Override
		public void modifyStoreUpdate(MultipartHttpServletRequest req, Model model) {
			
			MultipartFile file1 = req.getFile("f_mainimg");

			String uploadPath = req.getSession().getServletContext().getRealPath("/resources/images/food/"); 
			System.out.println(uploadPath);
			String realDir = "C:\\Users\\KIM\\git\\smartBD_Dev\\smartBD\\src\\main\\webapp\\resources\\images\\food\\";  
			
			try {
				
				if(file1 != null) {
					file1.transferTo(new File(uploadPath+file1.getOriginalFilename()));
					
					FileInputStream fis1 = new FileInputStream(uploadPath + file1.getOriginalFilename());
					FileOutputStream fos1 = new FileOutputStream(realDir + file1.getOriginalFilename());
					
					int data = 0;
					while((data = fis1.read()) != -1) { fos1.write(data); }
					fis1.close();
				fos1.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			// VO에 담기
			Food_companyVO vo = Food_companyVO
								.builder()
								.comp_seq(1)  // 
								.long_desc(req.getParameter("long_desc"))
								.short_desc(req.getParameter("short_desc"))
								.f_category(req.getParameter("f_category"))
								.f_mainimg(req.getParameter("f_mainimg"))
								.build();
			
			int sujungCnt = f_dao.modifySujungUpdate(vo);
			// request나 session에 처리 결과 저장 
			model.addAttribute("sujungCnt" , sujungCnt);
		}

		
		// 음식점 상품 등록 
		@Override
		public void insertFoodGoods(MultipartHttpServletRequest req, Model model) {
			
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
								
			int foodUpCode = f_dao.insertFoodUp(vo);		
			
			// request나 session에 처리 결과 저장 
			model.addAttribute("foodUpCode" , foodUpCode);
		}
		
		// 쿠폰 등록
		@Override
		public void insertCoupon(HttpServletRequest req, Model model) {
			
			
			String f_coupon_start = null;
			String f_start1 = req.getParameter("f_start1");
			String f_start2 = req.getParameter("f_start2");
			String f_start3 = req.getParameter("f_start3");
			
			f_coupon_start = f_start1 + f_start2 + f_start3;
			
			log.debug("f_coupon_start" + f_coupon_start);
			
			String f_coupon_end = null;
			String f_end1 = req.getParameter("f_end1");
			String f_end2 = req.getParameter("f_end2");
			String f_end3 = req.getParameter("f_end3");
			
			f_coupon_end = f_end1 + f_end2 + f_end3;
			
			// 업체정보 가져오기
			String compInfo = (String)req.getSession().getAttribute("compSession");
			log.debug("업체정보 : " + compInfo);
			String[] comppp = compInfo.split("::");
			int comp_seq = Integer.parseInt(comppp[0]);
			String comp_org = comppp[1];

			log.debug("업체정보 : " + comp_seq + " " + comp_org);
			
			Food_couponVO vo = Food_couponVO
						        .builder()
						        .comp_seq(comp_seq)
						        .f_coupon_name(req.getParameter("f_coupon_name"))
						        .f_coupon_price(Integer.parseInt(req.getParameter("f_coupon_price")))
						        .f_coupon_regidate(new Timestamp(System.currentTimeMillis()))
						        .f_coupon_start(f_coupon_start)
						        .f_coupon_end(f_coupon_end)
						        .f_coupon_count(Integer.parseInt(req.getParameter("f_coupon_count")))
						        .build();      
			
			int couponUpCode = f_dao.insertCouponeUp(vo);
			
			// 쿠폰 시리얼 생성
			int couponCount = Integer.parseInt(req.getParameter("f_coupon_count"));
			
			if(couponCount > 0) {

				for(int j = 0; j < couponCount; j++) {
					// 시리얼 등록
					Map<String, Object> map = new HashMap<String,Object>();
					//map.put("couponNum", f_coupon_count);
					int couponSer = f_dao.insertCouponSer(map);
				}
			}
			
			// request나 session에 처리 결과 저장 
			model.addAttribute("couponUpCode",couponUpCode);
			model.addAttribute("couponCount",couponCount);
						        
		}
		
		// 쿠폰리스트
		@Override
		public void getCouponList(HttpServletRequest req, Model model) {
			
			// 업체정보 가져오기
			String compInfo = (String)req.getSession().getAttribute("compSession");
			log.debug("업체정보 : " + compInfo);
			String[] comppp = compInfo.split("::");
			int comp_seq = Integer.parseInt(comppp[0]);
			String comp_org = comppp[1];
			
			List<Food_couponVO> list = f_dao.getCoupon(comp_seq);
			
			for (int i=0; i < list.size(); i ++) {
				log.debug("list i" + list.get(i).toString());
			}
			
			// request나 session에 처리결과를 저장(jsp에 전달하기 위함)
			model.addAttribute("list",list);
		}

		@Override
		public void test(HttpServletRequest req) {
			
		}


	
}
