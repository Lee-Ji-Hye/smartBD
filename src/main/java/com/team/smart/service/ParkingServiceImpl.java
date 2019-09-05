package com.team.smart.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.team.smart.parking.vo.ParkingVO;
import com.team.smart.persistence.ParkingDAO;
import com.team.smart.utils.Functions;
import com.team.smart.utils.Paging;
@Service
public class ParkingServiceImpl implements ParkingService{

	@Autowired
	ParkingDAO p_dao;
	
	@Autowired
	Functions fn;
	
	//주차장 현황 호출 
	@Override
	public void getcurrentpark(HttpServletRequest req, Model model) {
		System.out.println("차량 현황");
		List<ParkingVO> curpark = p_dao.getcurrentpark();
		System.out.println(curpark.get(0).getLocation_x());
		model.addAttribute("curpark", curpark);
	}
	//주차권 등록
	@Override
	public void ticketreg(HttpServletRequest req, Model model) {
		//String p_code =  ""+ (1+Integer.parseInt(p_dao.importpcode()));
		String p_code = fn.mkUniquecode("p_code", "parking_ticket_info_tbl");
		
		if(p_code == null) {
			 return;
		}
		
		String b_code = req.getParameter("b_code");
		String p_type = req.getParameter("p_type");
		int hourly =  Integer.parseInt(req.getParameter("hourly"));
		int price = Integer.parseInt(req.getParameter("price"));
		int tikectcode = 0;
		int check = 1;
		String reg_id = req.getParameter("reg_id");
		ParkingVO vo= ParkingVO
				   .builder()
				   .p_code(p_code)
				   .b_code(b_code)
				   .p_type(p_type)
				   .hourly(hourly)
				   .price(price)
				   .reg_id(reg_id)
				   .build();
		
		if(check == p_dao.buildcount(b_code)) {
		
		tikectcode =  p_dao.ticketreg(vo);
		}
		
		 model.addAttribute("tikectcode",tikectcode); 
				   
	}
	
	//주차권 수정
	@Override
	public void update(HttpServletRequest req, Model model) {
		String p_code = req.getParameter("p_code");
		String b_code = req.getParameter("b_code");
		String p_type = req.getParameter("p_type");
		int hourly =  Integer.parseInt(req.getParameter("hourly"));
		int price = Integer.parseInt(req.getParameter("price"));
		int tikectcode = 0;
		int check = 1;
		String reg_id = req.getParameter("reg_id");
		ParkingVO vo= ParkingVO
				   .builder()
				   .p_code(p_code)
				   .b_code(b_code)
				   .p_type(p_type)
				   .hourly(hourly)
				   .price(price)
				   .reg_id(reg_id)
				   .build();
		
		if(check == p_dao.buildcount(b_code)) {
		tikectcode = p_dao.updateticket(vo);
		}
		
		 model.addAttribute("tikectcode",tikectcode); 
	}
	// 주차권 삭제
		@Override
		public void delete(HttpServletRequest req, Model model) {
			String p_code = req.getParameter("p_code");
			int check = 0;
			check = p_dao.delete(p_code);
			model.addAttribute("check",check);	
		}
	
	//주차장 등록
	@Override
	public void insertplace(HttpServletRequest req, Model model) {
		String b_name = req.getParameter("b_name");
		int able_position = Integer.parseInt(req.getParameter("able_position"));
		double able_height  = Double.parseDouble(req.getParameter("able_height"));
		String operate_time_day = req.getParameter("operate_time_day");
		String operate_time_week = req.getParameter("operate_time_week");
		String operate_tel = req.getParameter("operate_tel");
		System.out.println(b_name);
		List<ParkingVO> bulidinfo = p_dao.buliding(b_name);
		int check = 1;
		int parkingcode = 0;
		if( check == p_dao.buildcount1(b_name)) {
			
		
		ParkingVO vo= ParkingVO
						.builder()
						.b_code(bulidinfo.get(0).getB_code())
						.b_name(b_name)
						.p_floor(bulidinfo.get(0).getB_floor())
						.able_position(able_position)
						.able_height(able_height)
						.lat(bulidinfo.get(0).getB_lat())
						.lon(bulidinfo.get(0).getB_lon())
						.operate_time_day(operate_time_day)
						.operate_time_week(operate_time_week)
						.operate_tel(operate_tel)
						.build();
		parkingcode = p_dao.parkingreg(vo);
		
		}
		model.addAttribute("parkingcode",parkingcode);			
						
	}
	
	//주차장 수정
	@Override
	public void updateplace(HttpServletRequest req, Model model) {
		String b_name = req.getParameter("b_name");
		int able_position = Integer.parseInt(req.getParameter("able_position"));
		int able_height = Integer.parseInt(req.getParameter("able_height"));
		String operate_time_day = req.getParameter("operate_time_day");
		String operate_time_week = req.getParameter("operate_time_week");
		String operate_tel = req.getParameter("operate_tel");
		
		List<ParkingVO> bulidinfo = p_dao.buliding(b_name);
		int check = 1;
		int parkingcode = 0;
		if( check == p_dao.buildcount1(b_name)) {
			
		
		ParkingVO vo= ParkingVO
						.builder()
						.b_code(bulidinfo.get(0).getB_code())
						.b_name(b_name)
						.p_floor(bulidinfo.get(0).getP_floor())
						.able_position(able_position)
						.able_height(able_height)
						.lat(bulidinfo.get(0).getLat())
						.lon(bulidinfo.get(0).getLon())
						.operate_time_day(operate_time_day)
						.operate_time_week(operate_time_week)
						.operate_tel(operate_tel)
						.build();
		parkingcode = p_dao.parkingreg(vo);
		
		}
		model.addAttribute("parkingcode",parkingcode);	
		
	}
	
	//주차장 삭제
	@Override
	public void deleteplace(HttpServletRequest req, Model model) {
		String b_code = req.getParameter("b_code");
		int check = 0;
		check = p_dao.deleteplace(b_code);
		model.addAttribute("check",check);	
		
	}
	
	
	
	//주차권 사용
	@Override
	public void useticket(HttpServletRequest req, Model model) {
		
	}
	
	//주차권 등록내역 리스트 
	@Override
	public void ticketlist(HttpServletRequest req, Model model) {
		
	}
	//주차권 사용내역 리스트
	@Override
	public void tickectuselist(HttpServletRequest req, Model model) {
		
	}
	//회원 주차권 발급내역 리스트
//	@Override
//	public void tickethavelist(HttpServletRequest req, Model model) {
//		// 페이징 처리
//				int pageSize = 10;		// 한 페이지당 출력할 글 갯수
//				int pageBlock = 3;		// 한 블럭당 페이지 갯수
//				int bcnt = 0;			// 글 갯수
//				int start = 0;			// 현재페이지 시작 글번호
//				int end = 0;			// 현재페이지 마지막 글번호
//				int number = 0;			// 출력용 글번호
//				String pageNum = "";	// 페이지 번호
//				int currentPage = 0;	// 현재 페이지
//				int pageCount = 0;		// 페이지 갯수
//				int startPage = 0;		// 시작 페이지
//				int endPage = 0;		// 마지막 페이지
//				
//				//글갯수 구하기
//				bcnt = p_dao.getOrderCnt();
//				System.out.println("bcnt = " + bcnt);	// 먼저 테이블에 30건 insert
//				pageNum = req.getParameter("pageNum");
//				if(pageNum == null) {
//					pageNum = "1"; //첫페이지를 1페이지로 지정
//				}
//				currentPage = Integer.parseInt(pageNum); 	//현재페이지 : 1
//				
//				System.out.println("currentPage :" + currentPage);
//				
//				pageCount = (bcnt / pageSize) + (bcnt % pageSize > 0 ? 1 : 0 ); // 페이지갯수 + 나머지 있으면 1
//				start = (currentPage - 1) * pageSize + 1;
//				end = start + pageSize - 1;
//				System.out.println("start : " + start);
//				System.out.println("end :" + end);
//				if(end > bcnt) end = bcnt;
//				
//				number = bcnt - (currentPage - 1) * pageSize;
//				System.out.println("number :" + number);
//				System.out.println("pageSize :" + pageSize);
//				
//				if(bcnt > 0) {
//					//  게시글 목록 조회
//					Map<String, Object> map = new HashMap<String, Object>();
//					map.put("start", start);
//					map.put("end", end);
//					List<ParkingVO> dtos = p_dao.getorderlist();
//					req.setAttribute("dtos", dtos); //큰바구니 : 게시글 목록 cf)작은바구니 : 게시글 한건
//					
//				}
//				
//				startPage = (currentPage / pageBlock) * pageBlock + 1;
//				if(currentPage % pageBlock == 0) startPage -= pageBlock;
//				System.out.println("startPage :" + startPage);
//				
//				endPage = startPage + pageBlock - 1;
//				if(endPage > pageCount)endPage = pageCount;
//				System.out.println("endPage :" + endPage);
//				System.out.println("==========");
//				
//				model.addAttribute("cnt", bcnt);				//글갯수
//				model.addAttribute("number", number);		//출력용 글번호
//				model.addAttribute("pageNum", pageNum);		//페이지번호
//				
//				if(bcnt > 0) {
//					model.addAttribute("startPage", startPage);		//시작
//					model.addAttribute("endPage", endPage);			//마지막
//					model.addAttribute("pageBlock", pageBlock);		//출력할
//					model.addAttribute("pageCount", pageCount);		//페이지갯수
//					model.addAttribute("currentPage", currentPage);	//현재페이지
//				}
//				
//	}
	
	@Override
	public void tickethavelist(HttpServletRequest req, Model model) {
		// 현재페이지
		String page = req.getParameter("page");
		int bcnt = 0;
		
		//글갯수 구하기
		bcnt = p_dao.getOrderCnt(); //총게시글 수
		String uri = req.getRequestURI();
		System.out.println("bcnt : " + bcnt);
		System.out.println("uri : " + uri);

		Paging paging = new Paging( 10, 3, bcnt, uri);
		paging.pagelist(page);
		
		
		if(bcnt > 0) {
			//  게시글 목록 조회
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("start", paging.getStart());
			map.put("end", paging.getEnd());
			System.out.println("리밋 : " + map);
			List<ParkingVO> dtos = p_dao.getorderlist(map);
			req.setAttribute("dtos", dtos); //큰바구니 : 게시글 목록 cf)작은바구니 : 게시글 한건
			
		}
		
		
		model.addAttribute("paging",paging);
		model.addAttribute("cnt", bcnt);				//글갯수
		model.addAttribute("pageNum", page);		//페이지번호
				
		
				
	}
	
	//회원  결제 내역 리스트
	@Override
	public void paylist(HttpServletRequest req, Model model) {
		int pageSize = 10;		// 한 페이지당 출력할 글 갯수
		int pageBlock = 3;		// 한 블럭당 페이지 갯수
		int bcnt = 0;			// 글 갯수
		int start = 0;			// 현재페이지 시작 글번호
		int end = 0;			// 현재페이지 마지막 글번호
		int number = 0;			// 출력용 글번호
		String pageNum = "";	// 페이지 번호
		int currentPage = 0;	// 현재 페이지
		int pageCount = 0;		// 페이지 갯수
		int startPage = 0;		// 시작 페이지
		int endPage = 0;		// 마지막 페이지
		
		//글갯수 구하기
		bcnt = p_dao.getArticleCnt();
		System.out.println("bcnt = " + bcnt);	// 먼저 테이블에 30건 insert
		pageNum = req.getParameter("pageNum");
		if(pageNum == null) {
			pageNum = "1"; //첫페이지를 1페이지로 지정
		}
		currentPage = Integer.parseInt(pageNum); 	//현재페이지 : 1
		
		System.out.println("currentPage :" + currentPage);
		
		pageCount = (bcnt / pageSize) + (bcnt % pageSize > 0 ? 1 : 0 ); // 페이지갯수 + 나머지 있으면 1
		start = (currentPage - 1) * pageSize + 1;
		end = start + pageSize - 1;
		System.out.println("start : " + start);
		System.out.println("end :" + end);
		if(end > bcnt) end = bcnt;
		
		number = bcnt - (currentPage - 1) * pageSize;
		System.out.println("number :" + number);
		System.out.println("pageSize :" + pageSize);
		
		if(bcnt > 0) {
			//  게시글 목록 조회
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("start", start);
			map.put("end", end);
			List<ParkingVO> dtos = p_dao.getpaylist();
			req.setAttribute("dtos", dtos); //큰바구니 : 게시글 목록 cf)작은바구니 : 게시글 한건
			
		}
		
		startPage = (currentPage / pageBlock) * pageBlock + 1;
		if(currentPage % pageBlock == 0) startPage -= pageBlock;
		System.out.println("startPage :" + startPage);
		
		endPage = startPage + pageBlock - 1;
		if(endPage > pageCount)endPage = pageCount;
		System.out.println("endPage :" + endPage);
		System.out.println("==========");
		
		model.addAttribute("cnt", bcnt);				//글갯수
		model.addAttribute("number", number);		//출력용 글번호
		model.addAttribute("pageNum", pageNum);		//페이지번호
		
		if(bcnt > 0) {
			model.addAttribute("startPage", startPage);		//시작
			model.addAttribute("endPage", endPage);			//마지막
			model.addAttribute("pageBlock", pageBlock);		//출력할
			model.addAttribute("pageCount", pageCount);		//페이지갯수
			model.addAttribute("currentPage", currentPage);	//현재페이지
		}
	}
	//회원 결제 상세내역
	@Override
	public void paydetail(HttpServletRequest req, Model model) {
		
	}
	//회원 환불 내역 리스트
	@Override
	public void refundlist(HttpServletRequest req, Model model) {
		
	}
	//회원 환불 상세 내역
	@Override
	public void refunddetail(HttpServletRequest req, Model model) {
		
	}
	//등록된 회원 차량 리스트 
	@Override
	public void regperlist(HttpServletRequest req, Model model) {
		
	}
	//주차장 상세정보
	@Override
	public void parkplacedetail(HttpServletRequest req, Model model) {
		
	}
	//주차권 자동사용
	@Override
	public void ticketautouse(HttpServletRequest req, Model model) {
		
	}
	
	
	
	
	
	
	
	
	
	

		
}
