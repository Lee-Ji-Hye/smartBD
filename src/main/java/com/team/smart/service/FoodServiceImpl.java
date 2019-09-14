package com.team.smart.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;

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
import com.team.smart.food.vo.Food_orderVO;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.team.smart.app.vo.FoodMenuVO;
import com.team.smart.app.vo.FoodStoreVO;
import com.team.smart.persistence.FoodDAO;
import com.team.smart.utils.Functions;
import com.team.smart.utils.JsonUtil;
import com.team.smart.utils.KakaoPay;
import com.team.smart.utils.Paging;
import com.team.smart.vo.KakaoCancleRequestVO;
import com.team.smart.vo.KakaoPayCancleResponseVO;

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
	
	@Autowired
	JsonUtil jsonutil;
	
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
		int compCnt = f_dao.getStoreSel(comp_seq);
		
		Food_companyVO vo = Food_companyVO
							.builder()
							.comp_seq(comp_seq)  
							.comp_org(comp_org)
							.f_open_stt(req.getParameter("f_open_stt"))
							.f_open_end(req.getParameter("f_open_end"))
							.long_desc(req.getParameter("long_desc"))
							.short_desc(req.getParameter("short_desc"))
							.f_open_stt(req.getParameter("f_open_stt"))
							.f_open_end(req.getParameter("f_open_end"))
							.f_category(req.getParameter("f_category"))
							.f_mainimg(images_name)
							.f_major(req.getParameter("f_major"))
							.f_minor(req.getParameter("f_minor"))
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
			
			//  처리 결과 저장 
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
	
		
	// 쿠폰 등록
	@Override
	public void insertCoupon(HttpServletRequest req, Model model) {
		
		// 쿠폰 유효기간 시작일
		int f_start1 = Integer.parseInt(req.getParameter("f_start1")); // 년
		int f_start2 = Integer.parseInt(req.getParameter("f_start2")); // 월
		int f_start3 = Integer.parseInt(req.getParameter("f_start3")); // 일
		Date f_coupon_start=null;
		Date f_coupon_end=null;
		try {
		
			f_coupon_start = new SimpleDateFormat("yyyy-MM-dd").parse(f_start1+"-"+f_start2+"-"+f_start3);
			
			//Date f_coupon_start = new Timestamp(f_start1, f_start2, f_start3, 0, 0, 0, 0);
					//(f_start1, f_start2, f_start3);
			
			
			log.debug("f_coupon_start" + f_coupon_start);
			
			// 쿠폰 유효기간 만료일
			int f_end1 = Integer.parseInt(req.getParameter("f_end1")); // 년
			int f_end2 = Integer.parseInt(req.getParameter("f_end2")); // 월
			int f_end3 = Integer.parseInt(req.getParameter("f_end3")); // 일
	
			f_coupon_end = new SimpleDateFormat("yyyy-MM-dd").parse(f_end1+"-"+f_end2+"-"+f_end3);
			
			log.debug("f_coupon_end" + f_coupon_end);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// 업체정보 가져오기 (업체코드, 업체명, 등록자 id)
		String comp_seq = (String)req.getSession().getAttribute("comp_seq");
		String comp_org = (String)req.getSession().getAttribute("comp_org");
		String staff_id = SecurityContextHolder.getContext().getAuthentication().getName();

		log.debug("수정처리 : " + comp_seq + " " + comp_org);
		
		// VO에 쿠폰 정보 담기
		Food_couponVO vo = Food_couponVO
					        .builder()
					        .comp_seq(comp_seq)
					        .staff_id(staff_id)
					        .comp_org(comp_org)
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
			// 쿠폰 시리얼 번호화 쿠폰 번호
			Map<String, Object> map = new HashMap<String,Object>();
			map.put("f_serial", insertSerialNum());
			map.put("f_coupon_num", funs.getCurrentcode("f_coupon_num", "food_coupon_tbl"));
			for(int j = 0; j < couponCount; j++) {
				// 시리얼 등록
				map.put("f_serial", insertSerialNum());
				int couponSer = f_dao.insertCouponSer(map);
			}
		}
		
		// 처리 결과 저장 
		model.addAttribute("couponUpCode",couponUpCode);
		model.addAttribute("couponCount",couponCount);
					        
	}
		
	// 쿠폰 시리얼 생성
	@Override
	public String insertSerialNum() {
		    
		UUID serial = UUID.randomUUID();
		return serial.toString();
	}
	
	// 쿠폰리스트
	@Override
	public void getCouponList(HttpServletRequest req, Model model) {
		
		// 업체정보 가져오기(업체코드, 업체명)
		String comp_seq = (String)req.getSession().getAttribute("comp_seq");
		String comp_org = (String)req.getSession().getAttribute("comp_org");
		String page = req.getParameter("page"); // 현재페이지를 화면에서 가져옴
		
		log.debug("쿠폰리스트 : " + comp_seq + " " + comp_org + " " + page);
		
		// 글 갯수 
		int totCnt = 0;
		totCnt = f_dao.getCouponPage();
		
		String uri = req.getRequestURI(); // 현재 서블릿의 uri
		Paging paging = new Paging(5, 5, totCnt, uri); //Paging(int pageLine, int pageBlock, int cnt);//페이징 생성
		
		paging.pagelist(page); // 현재페이지번호를 넣어줌
		
		if(totCnt > 0) {
			// 게시글 목록 조회
			HashMap<String, Object> map = new HashMap<>();
			map.put("startNum", paging.getStart()); // 시작번호
			map.put("endNum", paging.getEnd()); // 끝번호
			map.put("comp_seq", comp_seq); // 끝번호
			
			List<Food_couponVO> list = f_dao.getCoupon(map);
			// 처리결과를 저장
			model.addAttribute("list",list);
		}
		
		model.addAttribute("paging", paging);
		model.addAttribute("cnt", paging);
		model.addAttribute("pageNum", page);
	}
	
	// 쿠폰 리스트 삭제
	@Override
	public void delCoupon(HttpServletRequest req, Model model) {
		
		// 쿠폰 번호 가져오기
		String[] f_coupon_num = req.getParameterValues("couponChk");
		
		log.debug("쿠폰리스트 삭제 : " + f_coupon_num);
		 
		// 시리얼 테이블에서 쿠폰 번호와 사용날짜로 쿠폰 조회
		// 쿠폰 시리얼이 없으면 삭제 가능
		int couponDel = f_dao.deleteCoupon(f_coupon_num);
		
		// 처리결과를 저장
		model.addAttribute("couponDel", couponDel);
			
			
	}
	
	// 음식점 상품 등록 
	@Override
	public void insertGoodsIntro(MultipartHttpServletRequest req, Model model) {
		
		String userid = SecurityContextHolder.getContext().getAuthentication().getName();
		
		MultipartFile file1 = req.getFile("f_img");

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
		
		// 업체정보 가져오기(업체코드, 업체명)
		String comp_seq = (String)req.getSession().getAttribute("comp_seq");
		String comp_org = (String)req.getSession().getAttribute("comp_org");

		log.debug("업체정보 : " + comp_seq + " " + comp_org);
		
		// 이미지 없을 때 처리
		if(file1 != null) {
			images_name = file1.getOriginalFilename();
		}
		
		// 업체 코드를 통해 등록 상품 조회
		int goodsCnt = f_dao.getGoods(comp_seq);
		
		// 음식점 소개 등록 VO에 담기
		Food_menuVO vo = Food_menuVO
						.builder()
						.comp_seq(comp_seq)
						.f_code(funs.mkUniquecode("f_code", "food_menu_tbl"))
						.f_name(req.getParameter("f_name"))
						.f_type(req.getParameter("f_type"))
						.f_icon(req.getParameter("f_icon"))
						.f_price(Integer.parseInt(req.getParameter("f_price")))
						.userid(userid)
						.f_img(images_name)
						.build();
						
		log.debug("Food_menuVO:" + vo.toString());
		
		int storeUpCode = f_dao.insertGoodsUp(vo);
		// 처리 결과 저장 
		model.addAttribute("storeUpCode" , storeUpCode);
	}
	
	// 음식점 상품 등록시 등록 건
	@Override
	public void getGoods(HttpServletRequest req, Model model) {
		
		// 업체정보 가져오기 (업체코드, 업체명, 등록자 id)
		// 업체정보 가져오기
		String comp_seq = (String)req.getSession().getAttribute("comp_seq");
		String comp_org = (String)req.getSession().getAttribute("comp_org");
		
		Food_menuVO menu = f_dao.getGoodsOneList(comp_seq);
		
		model.addAttribute("menu", menu);
		
	}

	// 음식점 상품 리스트
	@Override
	public void getGoodsList(HttpServletRequest req, Model model) {
		
		// 업체정보 가져오기(업체코드,업체명)
		String comp_seq = (String)req.getSession().getAttribute("comp_seq");
		String comp_org = (String)req.getSession().getAttribute("comp_org");
		String page = req.getParameter("page"); // 현재페이지를 화면에서 가져옴

		log.debug("음식점 상품 리스트 : " + comp_seq + " " + comp_org + " " + page);
		
		// 글 갯수 
		int totCnt = 0;
		totCnt = f_dao.getGoodsPage();
		
		String uri = req.getRequestURI(); // 현재 서블릿의 uri
		Paging paging = new Paging(5, 5, totCnt, uri); //Paging(int pageLine, int pageBlock, int cnt);//페이징 생성
		
		paging.pagelist(page); // 현재페이지번호를 넣어줌
		
		if(totCnt > 0) {
			// 게시글 목록 조회
			HashMap<String, Object> map = new HashMap<>();
			map.put("startNum", paging.getStart()); // 시작번호
			map.put("endNum", paging.getEnd()); // 끝번호
			map.put("comp_seq", comp_seq); // 끝번호
			
			List<Food_menuVO> food = f_dao.getGoodsList(map);
			// 처리결과를 저장
			model.addAttribute("food", food);
		}
		// 처리결과를 저장
		model.addAttribute("paging", paging);
		model.addAttribute("cnt", paging);
		model.addAttribute("pageNum", page);
	}
	
	// 음식점 상품 등록 수정 
	@Override
	public void modGoodsSu(HttpServletRequest req, Model model) {
		
		// 업체정보 가져오기(업체코드,업체명, 상품코드)
		String comp_seq = (String)req.getSession().getAttribute("comp_seq");
		String comp_org = (String)req.getSession().getAttribute("comp_org");
		String f_code = req.getParameter("f_code");
		
		Food_menuVO vo = f_dao.getGoodsOne(f_code);
		
		model.addAttribute("vo",vo);
		
	}

	// 음식점 상품 등록 수정 처리
	@Override
	public void modGoodsSuEnd(MultipartHttpServletRequest req, Model model) {
		
		// 업체정보 가져오기(업체코드,업체명, 상품코드)
		String comp_seq = (String)req.getSession().getAttribute("comp_seq");
		String comp_org = (String)req.getSession().getAttribute("comp_org");
		String f_code = req.getParameter("f_code");
		
		MultipartFile file1 = req.getFile("f_img");

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
		
		// 음식점 상품 수정 정보VO에 담기
		Food_menuVO vo = Food_menuVO
						.builder()
						.comp_seq(comp_seq)
						.f_code(f_code)
						.f_name(req.getParameter("f_name"))
						.f_price(Integer.parseInt(req.getParameter("f_price")))
						.f_icon(req.getParameter("f_icon"))
						.f_type(req.getParameter("f_type"))
						.f_img(images_name)
						.build();
		
		int modCnt = f_dao.modifyGoodsSujung(vo);
		
		// 처리결과 저장
		model.addAttribute("modCnt", modCnt);
						
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
	
	// 음식점 주문 목록
	@Override
	public void getOrderFood(HttpServletRequest req, Model model) {
		
		// 업체정보 가져오기(업체코드,업체명)
		String comp_seq = (String)req.getSession().getAttribute("comp_seq");
		String comp_org = (String)req.getSession().getAttribute("comp_org");
		String page = req.getParameter("page"); // 현재페이지를 화면에서 가져옴

		log.debug("음식점 상품 리스트 : " + comp_seq + " " + comp_org + " " + page);
		
		// 글 갯수 
		int totCnt = 0;
		totCnt = f_dao.getOrderPage();
		
		String uri = req.getRequestURI(); // 현재 서블릿의 uri
		Paging paging = new Paging(5, 5, totCnt, uri); //Paging(int pageLine, int pageBlock, int cnt);//페이징 생성
		
		paging.pagelist(page); // 현재페이지번호를 넣어줌
		
		if(totCnt > 0) {
			// 게시글 목록 조회
			HashMap<String, Object> map = new HashMap<>();
			map.put("startNum", paging.getStart()); // 시작번호
			map.put("endNum", paging.getEnd()); // 끝번호
			map.put("comp_seq", comp_seq); // 끝번호
			
			List<Food_orderVO> order = f_dao.getFoodOrderList(map);
			// 처리결과를 저장
			model.addAttribute("detailO", order);
		}
		// 처리결과를 저장
		model.addAttribute("paging", paging);
		model.addAttribute("cnt", paging);
		model.addAttribute("pageNum", page);
	}
	
	// 음식점 주문 목록 상세보기
	@Override
	public Food_orderVO getDetailOrder(String f_ocode) {
		
		return f_dao.getFoodDetail(f_ocode);
	}
	
	// 음식점 승인 처리
	@Override
	public void amdOrder(HttpServletResponse res, String f_ocode) {
		log.debug("음식점 승인 처리: " );
		
		int i = f_dao.amdFood(f_ocode);
		if(i != 1)res.setStatus(448);
		
	}
	
	// 음식점 주문 거절 처리
	@Override
	public void amdNotOrder(HttpServletResponse res, String f_ocode) {
		log.debug("음식점 주문 거절 처리:" );
		
		Food_orderVO vo = f_dao.getFoodDetail(f_ocode);
		
		// 카카오페이 환불
		KakaoCancleRequestVO cancel_vo = new KakaoCancleRequestVO();
		
		// 환불을 위한 부과세 계산
		double cancel_amount = vo.getF_pay_price(); //3000.0 200
		// 부가세 계산
		double tmp = (double) (cancel_amount/11.0); //55.4888
		// 반올림 처리
		int cancel_vat = (int)Math.round(tmp); 
		// 환불 처리를 위한 정보 담기
		cancel_vo.setTid(vo.getTid());
		cancel_vo.setCancel_amount(vo.getF_pay_price());
		cancel_vo.setCancel_tax_free_amount(0);
		cancel_vo.setCid("");
		cancel_vo.setCid_secret("");
		cancel_vo.setCancel_available_amount(vo.getF_pay_price());
		cancel_vo.setCancel_vat_amount(cancel_vat);
		
		KakaoPay kakao = new KakaoPay();
		KakaoPayCancleResponseVO result = kakao.kakaoPayRefund(cancel_vo);
		
		log.debug("result:" + result);
		
		// CANCEL_PAYMENT가 같으면 환불 처리 진행
		if(result.getStatus().equals("CANCEL_PAYMENT")) {
			int j = f_dao.amdNotFood(f_ocode);
			if(j != 2)res.setStatus(448);
		}
	}
	
	// 음식점 결산
	@Override
	public void getAccounts(HttpServletRequest req, Model model) {
		// 업체정보 가져오기(업체코드,업체명)
		String comp_seq = (String)req.getSession().getAttribute("comp_seq");
		String comp_org = (String)req.getSession().getAttribute("comp_org");
		
		List<Food_orderVO> don = f_dao.getOrderAccounts(comp_seq);
		
		Map<String,String> sum = f_dao.getAccountsEnd();
		String foodSum = String.valueOf(sum.get("SUM(f_pay_price)"));  // 상품 합계
		String foodCancel = String.valueOf(sum.get("f_refund_price"));	// 상품 취소
		
		List<Map<String,Object>> food_don = f_dao.getFoodDon();
		 
		model.addAttribute("don",don);
		model.addAttribute("food_don", jsonutil.getJsonStringFromList(food_don));
		model.addAttribute("foodSum",foodSum);
		model.addAttribute("foodCancel",foodCancel);
	}

	
	// ======================= 테스트
	@Override
	public void test(HttpServletRequest req) {
		
	}



	
}
