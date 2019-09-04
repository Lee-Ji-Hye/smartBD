package com.team.smart.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.sql.Timestamp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
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
import java.util.UUID;

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
	
	@Autowired
	Functions funs;
	
	
	String images_name = null;  // 음식점 소개 등록, 상품 등록시 이미지 확인 처리

	// 음식점 소개 등록  + 수정
	@Override
	public void insertStoreIntro(MultipartHttpServletRequest req, Model model) {
		//TODO 1. 김민경 인서트스토어어쩌구 날짜추가
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
		
		// 이미지 없을 때 처리
		if(file1 != null) {
			images_name = file1.getOriginalFilename();
		}
		
		// 음식점 소개 등록 VO에 담기
		// 업체정보 가져오기
		String comp_seq = (String)req.getSession().getAttribute("comp_seq");
		String comp_org = (String)req.getSession().getAttribute("comp_org");

		log.debug("업체정보 : " + comp_seq + " " + comp_org);
		
		// 업체 코드를 통해 등록 글 조회
		int compCnt = f_dao.getStore(comp_seq);
		
		Food_companyVO vo = Food_companyVO
							.builder()
							.comp_seq(comp_seq)  
							.f_open_stt(req.getParameter("f_open_stt"))
							.f_open_end(req.getParameter("f_open_end"))
							.long_desc(req.getParameter("long_desc"))
							.short_desc(req.getParameter("short_desc"))
							.f_open_stt(req.getParameter("f_open_stt"))
							.f_open_end(req.getParameter("f_open_end"))
							.f_category(req.getParameter("f_category"))
							.f_mainimg(images_name)
							.build();
		log.debug("food_company:" + vo.toString());
		// 등록 된 글이 있을 경우 수정
		if(compCnt == 1) {
			// 수정 처리 
			int sujungCnt = f_dao.modifySujungUpdate(vo);
			
			log.debug("sujungCnt" + sujungCnt);
			
			// 처리 결과 저장
			model.addAttribute("sujungCnt", sujungCnt);
		// 등록된 글이 없으면 등록
		} else {
			int storeUpCode = f_dao.insertStoreUp(vo);
			
			// request나 session에 처리 결과 저장 
			model.addAttribute("storeUpCode" , storeUpCode);
		}
		
	}
			
	// 음식점 소개 등록시 소개 글 
	@Override
	public void getStore(HttpServletRequest req, Model model) {
		
		// 업체정보 가져오기 (업체코드, 업체명, 등록자 id)
		// 업체정보 가져오기
		String comp_seq = (String)req.getSession().getAttribute("comp_seq");
		String comp_org = (String)req.getSession().getAttribute("comp_org");
		
		Food_companyVO list = f_dao.getStoreOne(comp_seq);
		
		model.addAttribute("store", list);
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
		
		
		// VO에 음식 등록 상품 담기
		Food_menuVO vo = Food_menuVO
							.builder()
							.f_code(req.getParameter("f_code"))
							.f_type(req.getParameter("f_type"))
							.f_name(req.getParameter("f_name"))
							.f_price(Integer.parseInt(req.getParameter("f_price")))
							.f_takeout(req.getParameter("f_takeout").charAt(0))
							.f_img(req.getParameter("f_img"))
							.f_icon(req.getParameter("f_icon"))
							.comp_seq(req.getParameter("comp_seq"))
							.build();
							
		int foodUpCode = f_dao.insertFoodUp(vo);		
		
		// request나 session에 처리 결과 저장 
		model.addAttribute("foodUpCode" , foodUpCode);
	}
		
	// 쿠폰 등록
	@Override
	public void insertCoupon(HttpServletRequest req, Model model) {
		
		// 쿠폰 유효기간 시작일
		String f_coupon_start = null;
		String f_start1 = req.getParameter("f_start1"); // 년
		String f_start2 = req.getParameter("f_start2"); // 월
		String f_start3 = req.getParameter("f_start3"); // 일
		
		if(!f_start1.equals("") && !f_start2.equals("") && !f_start3.equals("")) {
			f_coupon_start = f_start1 + "-" + f_start2 + "-" +f_start3; // 시작일
		}
		log.debug("f_coupon_start" + f_coupon_start);
		
		// 쿠폰 유효기간 만료일
		String f_coupon_end = null;
		String f_end1 = req.getParameter("f_end1"); // 년
		String f_end2 = req.getParameter("f_end2"); // 월
		String f_end3 = req.getParameter("f_end3"); // 일
		
		if(!f_end1.equals("") && !f_end2.equals("") && !f_end3.equals("")) {
			f_coupon_end = f_end1 + "-" + f_end2 + "-" + f_end3; // 만료일
		}
		
		log.debug("f_coupon_end" + f_coupon_end);
		// 업체정보 가져오기 (업체코드, 업체명, 등록자 id)
		// 업체정보 가져오기
		String comp_seq = (String)req.getSession().getAttribute("comp_seq");
		String comp_org = (String)req.getSession().getAttribute("comp_org");
		String staff_id = SecurityContextHolder.getContext().getAuthentication().getName();

		log.debug("수정처리 : " + comp_seq + " " + comp_org);
		
		// VO에 쿠폰 정보 담기
		Food_couponVO vo = Food_couponVO
					        .builder()
					        .comp_seq(comp_seq)
					        .staff_id(staff_id)
					        .f_coupon_name(req.getParameter("f_coupon_name"))
					        .f_coupon_num(funs.mkUniquecode("f_coupon_num", "food_coupon_tbl"))
					        .f_coupon_price(Integer.parseInt(req.getParameter("f_coupon_price")))
					        .f_coupon_regidate(new Timestamp(System.currentTimeMillis()))
					        .f_coupon_start(f_coupon_start)
					        .f_coupon_end(f_coupon_end)
					        .f_coupon_count(Integer.parseInt(req.getParameter("f_coupon_count")))
					        .build();      
		
		int couponUpCode = f_dao.insertCouponeUp(vo);
		
		// 쿠폰 시리얼 생성
		int couponCount = Integer.parseInt(req.getParameter("f_coupon_count"));
		// 쿠폰 발급 수가 0장 이상일 경우
		if(couponCount > 0) {

			Map<String, Object> map = new HashMap<String,Object>();
			map.put("f_serial", insertSerialNum());
			map.put("f_coupon_num", funs.getCurrentcode("f_coupon_num", "food_coupon_tbl"));
			for(int j = 0; j < couponCount; j++) {
				// 시리얼 등록
				map.put("f_serial", insertSerialNum());
				int couponSer = f_dao.insertCouponSer(map);
			}
		}
		
		// request나 session에 처리 결과 저장 
		model.addAttribute("couponUpCode",couponUpCode);
		model.addAttribute("couponCount",couponCount);
					        
	}
		
	// 쿠폰 시리얼 
	@Override
	public String insertSerialNum() {
		    
		UUID serial = UUID.randomUUID();
		return serial.toString();
	}
	
	// 쿠폰리스트
	@Override
	public void getCouponList(HttpServletRequest req, Model model) {
		
		// 업체정보 가져오기
		String comp_seq = (String)req.getSession().getAttribute("comp_seq");
		String comp_org = (String)req.getSession().getAttribute("comp_org");

		log.debug("쿠폰리스트 : " + comp_seq + " " + comp_org);
		
		List<Food_couponVO> list = f_dao.getCoupon(comp_seq);
		
		for (int i=0; i < list.size(); i ++) {
			log.debug("list i" + list.get(i).toString());
		}
		
		// request나 session에 처리결과를 저장
		model.addAttribute("list",list);
	}
	
	// 쿠폰 리스트 삭제
	@Override
	public void delCoupon(HttpServletRequest req, Model model) {
		
		// 쿠폰 번호 가져오기
		String[] f_coupon_num = req.getParameterValues("couponChk");
		
		log.debug("쿠폰리스트 삭제 : " + f_coupon_num);
			
		int couponDel = f_dao.deleteCoupon(f_coupon_num);
		
		// request나 session에 처리결과를 저장
		model.addAttribute("couponDel", couponDel);
		
	}
	
	// 음식점 상품 등록 + 수정
	@Override
	public void insertGoodsIntro(MultipartHttpServletRequest req, Model model) {
		
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
		
		// 이미지 없을 때 처리
		if(file1 != null) {
			images_name = file1.getOriginalFilename();
		}
		
		// 음식점 소개 등록 VO에 담기
		// 업체정보 가져오기
		String comp_seq = (String)req.getSession().getAttribute("comp_seq");
		String comp_org = (String)req.getSession().getAttribute("comp_org");

		log.debug("업체정보 : " + comp_seq + " " + comp_org);
		
		// 이미지 없을 때 처리
		if(file1 != null) {
			images_name = file1.getOriginalFilename();
		}
		
		// 업체 코드를 통해 등록 상품 조회
		int goodsCnt = f_dao.getGoods(comp_seq);
		
		Food_menuVO vo = Food_menuVO
						.builder()
						.comp_seq(comp_seq)
						.f_name(req.getParameter("f_name"))
						.f_type(req.getParameter("f_type"))
						.f_icon(req.getParameter("f_icon"))
						.f_price(Integer.parseInt(req.getParameter("f_price")))
						.f_img(images_name)
						.build();
						
		log.debug("Food_menuVO:" + vo.toString());
		
		if(goodsCnt == 1) {
			// 수정 처리 
			int goodsSujungCnt = f_dao.modifyGoodsSujung(vo);
			
			log.debug("goodsSujungCnt" + goodsSujungCnt);
			
			// 처리 결과 저장
			model.addAttribute("goodsSujungCnt", goodsSujungCnt);
		// 등록된 글이 없으면 등록
		} else {
			int storeUpCode = f_dao.insertGoodsUp(vo);
			
			// request나 session에 처리 결과 저장 
			model.addAttribute("storeUpCode" , storeUpCode);
		}
	}

	// 음식점 상품 리스트
	@Override
	public void getGoodsList(HttpServletRequest req, Model model) {
		
		// 업체정보 가져오기
		String comp_seq = (String)req.getSession().getAttribute("comp_seq");
		String comp_org = (String)req.getSession().getAttribute("comp_org");

		log.debug("음식점 상품 리스트 : " + comp_seq + " " + comp_org);
		
		List<Food_menuVO> food = f_dao.getGoodsList(comp_seq);
		
		for(int i=0; i < food.size(); i ++) {
			log.debug("list i" + food.get(i).toString());
		}
		
		// request나 session에 처리결과를 저장
		model.addAttribute("food", food);
		
	}

	// 음식점 상품 삭제
	@Override
	public void delGoods(HttpServletRequest req, Model model) {

		// 상품 번호 가져오기
		String[] f_code = req.getParameterValues("f_code");
		
		log.debug("음식점 상품 삭제 : " + f_code);
		
		int goodsDel = f_dao.deleteGoods(f_code);
		
		// request나 session에 처리결과를 저장
		model.addAttribute("goodsDel", goodsDel);
		
	}

		@Override
		public void test(HttpServletRequest req) {
			
		}
	
}
