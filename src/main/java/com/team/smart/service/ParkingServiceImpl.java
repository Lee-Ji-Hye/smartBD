package com.team.smart.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.team.smart.parking.vo.ParkingVO;
import com.team.smart.persistence.ParkingDAO;
import com.team.smart.utils.Functions;
import com.team.smart.utils.JsonUtil;
import com.team.smart.utils.Paging;
@Service
public class ParkingServiceImpl implements ParkingService{

	@Autowired
	JsonUtil jsonutil;
	
	@Autowired
	ParkingDAO p_dao;
	
	@Autowired
	Functions fn;
	
	//주차장 현황 호출 
	@Override
	public void getcurrentpark(HttpServletRequest req, Model model) {
		System.out.println("차량 현황");
		String b_code = (String)req.getSession().getAttribute("b_code");
		List<ParkingVO> curpark = p_dao.getcurrentpark(b_code);
		System.out.println(curpark.get(0).getP_lat());
		System.out.println(curpark.get(0).getP_lot());
		model.addAttribute("curpark", curpark);
	}
	//주차장 현황 리스트
	@Override
	public void parklist(HttpServletRequest req, Model model) {
		String page = req.getParameter("page");
		int bcnt = 0;
		String b_code = (String)req.getSession().getAttribute("b_code");
		//글갯수 구하기
		bcnt = p_dao.getparkCnt(b_code); //총게시글 수
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
			map.put("b_code", b_code);
			System.out.println("리밋 : " + map);
			List<ParkingVO> dtos = p_dao.getparklist(map);
			req.setAttribute("dtos", dtos); //큰바구니 : 게시글 목록 cf)작은바구니 : 게시글 한건
			
		}
		
		model.addAttribute("page",page);
		model.addAttribute("paging",paging);
		model.addAttribute("cnt", bcnt);				//글갯수
		model.addAttribute("pageNum", page);		//페이지번호
		
	}
	
	
	//주차권 등록
	@Override
	public void ticketreg(HttpServletRequest req, Model model) {
		//String p_code =  ""+ (1+Integer.parseInt(p_dao.importpcode()));
		String p_code = fn.mkUniquecode("p_code", "parking_ticket_info_tbl");
		System.out.println("p_code");
		if(p_code == null) {
			 return;
		}
		System.out.println();
		String b_code = req.getParameter("b_code");
		String p_type = req.getParameter("p_type");
		int hourly =  Integer.parseInt(req.getParameter("hourly"));
		int price = Integer.parseInt(req.getParameter("price"));
		int tikectcode = 0;
		int check = 1;
		String reg_id = req.getParameter("reg_id");
		System.out.println(p_code);
		System.out.println(b_code);
		System.out.println(p_type);
		System.out.println(hourly);
		System.out.println(price);
		ParkingVO vo= ParkingVO
				   .builder()
				   .p_code(p_code)
				   .b_code(b_code)
				   .p_type(p_type)
				   .hourly(hourly)
				   .price(price)
				   .reg_id(reg_id)
				   .build();
		System.out.println(b_code+"~~~~~~~~~~~~");
		if(check == p_dao.buildcount(b_code)) {
		
			tikectcode =  p_dao.ticketreg(vo);
		}
		
		 model.addAttribute("tikectcode",tikectcode); 
				   
	}
	
	//주차권 수정
	@Override
	public void update(HttpServletRequest req, Model model) {
		String p_code = req.getParameter("p_code");
		List<ParkingVO> park = p_dao.ticketinfo(p_code);
		model.addAttribute("p_code",p_code);
		model.addAttribute("p_type",park.get(0).getP_type());
		model.addAttribute("p_hourly",park.get(0).getHourly());
		model.addAttribute("p_price",park.get(0).getPrice());
	}
	// 주차권 삭제
	@Override
	public void delete(HttpServletRequest req, Model model) {
		String p_code[] = req.getParameterValues("p_code");
		System.out.println(p_code[0]);
		int check =0;
		for(int i = 0; i<p_code.length; i++) {
			System.out.println(p_code[i]);
			p_dao.delete(p_code[i]);
			check += i;
		}
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
	public void useticket(MultipartHttpServletRequest req, Model model) {
		 MultipartFile file = req.getFile("img");
	        
	        String saveDir = req.getRealPath("/resources/images/parking/"); //저장 경로(C:\Dev\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\SPRING_BMS_Project\resources\images\)
	        
	        String realDir="C:\\Users\\ksm05\\git\\smartBD\\src\\main\\webapp\\resources\\images\\parking\\"; // 저장 경로
	        
	        try {
	            file.transferTo(new File(saveDir+file.getOriginalFilename()));
	            
	            FileInputStream fis = new FileInputStream(saveDir + file.getOriginalFilename());
	            FileOutputStream fos = new FileOutputStream(realDir + file.getOriginalFilename());
	            
	            int data = 0;
	           
	            while((data = fis.read()) != -1) {
	                fos.write(data);
	            }
	            fis.close();
	            fos.close();
	            String p_ocode = fn.mkUniquecode("p_ocode", "parking_ticket_order_tbl");
	    		System.out.println("p_ocode");
	    		if(p_ocode == null) {
	    			 return;
	    		}
	    		String inoutcoude = fn.mkUniquecode("inoutcoude", "parking_history_tbl");
	    		System.out.println("inoutcoude");
	    		if(inoutcoude == null) {
	    			 return;
	    		}
	    		String p_code = req.getParameter("p_code");
	            String b_code = req.getParameter("b_code");
	            String userid = req.getParameter("userid");
	            String p_type = req.getParameter("p_type");
	            String kind_of_car = req.getParameter("kind_of_car");
	            String car_number = req.getParameter("car_number");
	            String ask = req.getParameter("ask");
	            String fileName = file.getOriginalFilename();
	            String subject = req.getParameter("subject");
	            String parking_code =req.getParameter("parking_code");
	            List<ParkingVO> p_seq = p_dao.p_seq();
	            int p_seq1 = p_seq.get(0).getP_seq();
	            String parking_location = Double.toString(p_seq.get(0).getP_lat())+ " , " +Double.toString(p_seq.get(0).getP_lot());
	            List<ParkingVO> p_oprice =p_dao.ticketinfo(p_code);
	            System.out.println(p_code);
	            System.out.println(p_ocode);
	            System.out.println(userid);
	            System.out.println(p_oprice.get(0).getPrice());
	            int idcheck = p_dao.findid(userid);
	            if(idcheck == 0) {
	            	
	            }
	            ParkingVO vo= ParkingVO
						.builder()
						.p_ocode(p_ocode)
						.p_code(p_code)
						.userid(userid)
						.car_number(car_number)
						.car_number_img(fileName)
						.kind_of_car(kind_of_car)
						.b_code(b_code)
						.parking_state("0")
						.parking_location(parking_location)
						.ask(ask)
						.parking_code(parking_code)
						.p_oprice(p_oprice.get(0).getPrice())
						.build();
	            
	            int ticketcode = p_dao.ticketorder(vo);
	            int iCnt = p_dao.insertid(vo);
	            int ticket_historycode = p_dao.inserthistory(vo);
	            int insertcar = p_dao.insertinout(vo);
	            model.addAttribute("cnt", iCnt);
	            
	        } catch(IOException e) {
	            e.printStackTrace();
	        }
	}
	
	//주차권 등록내역 리스트 
	@Override
	public void ticketlist(HttpServletRequest req, Model model) {
				// 현재페이지
				
				String page = req.getParameter("page");
				int bcnt = 0;
				String sertext = (req.getParameter("sertext") == null)? "" : req.getParameter("sertext");
				
				//글갯수 구하기
				bcnt = p_dao.getinsertCnt(); //총게시글 수
				String uri = req.getRequestURI();
				System.out.println("bcnt : " + bcnt);
				System.out.println("uri : " + uri);

				//http://localhost:8035/smart/bd_park/ticketlist?sertext=김&page=2
				if(!sertext.equals("")) {
					uri = uri+"?sertext=" + sertext;
				}
				Paging paging = new Paging( 10, 3, bcnt, uri);
				paging.pagelist(page);
				
				System.out.println(paging.getStart());
				if(bcnt > 0) {
					
					//  게시글 목록 조회
					Map<String, Object> map = new HashMap<String, Object>();
					map.put("start", paging.getStart());
					map.put("end", paging.getEnd());
					map.put("sertext",sertext);
					System.out.println("리밋 : " + map);
					List<ParkingVO> dtos = p_dao.getinsertlist(map);
					req.setAttribute("dtos", dtos); //큰바구니 : 게시글 목록 cf)작은바구니 : 게시글 한건
					
				}
				model.addAttribute("page",page);
				model.addAttribute("paging",paging);
				model.addAttribute("cnt", bcnt);				//글갯수
				model.addAttribute("pageNum", page);		//페이지번호
				model.addAttribute("sertext", sertext);		//${sertext}
			
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
		// 현재페이지
				String page = req.getParameter("page");
				int bcnt = 0;
				
				//글갯수 구하기
				bcnt = p_dao.getArticleCnt();
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
					List<ParkingVO> dtos = p_dao.getpaylist(map);
					req.setAttribute("dtos", dtos); //큰바구니 : 게시글 목록 cf)작은바구니 : 게시글 한건
				}
				
				
				model.addAttribute("paging",paging);
				model.addAttribute("cnt", bcnt);				//글갯수
				model.addAttribute("pageNum", page);		//페이지번호
	
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
	//주차권 수정 처리
	@Override
	public void updatepro(HttpServletRequest req, Model model) {
		String p_code = req.getParameter("p_code");
		String p_type = req.getParameter("p_type");
		int hourly =  Integer.parseInt(req.getParameter("hourly"));
		int price = Integer.parseInt(req.getParameter("price"));
		String reg_id = req.getParameter("reg_id");
		int tikectcode = 0;
		ParkingVO vo= ParkingVO
				   .builder()
				   .p_code(p_code)
				   .p_type(p_type)
				   .hourly(hourly)
				   .price(price)
				   .reg_id(reg_id)
				   .build();
		tikectcode = p_dao.ticketpro(vo);	
		model.addAttribute(tikectcode);
	}
	//조회
	@Override
	public void search(HttpServletRequest req, Model model) {
		String page = req.getParameter("page");
		int bcnt = 0;
		//글갯수 구하기
		bcnt = p_dao.getinsertCnt(); //총게시글 수
		String uri = req.getRequestURI();
		System.out.println("bcnt : " + bcnt);
		System.out.println("uri : " + uri);

		Paging paging = new Paging( 10, 3, bcnt, uri);
		paging.pagelist(page);
		
		String ser = "";
		if(bcnt > 0) {
		if(req.getParameter("test1") ==  null) {
			return;
		}else if(req.getParameter("test1") != null) {
			ser = req.getParameter("test1");
			if((ser + "") == "") {
				List<ParkingVO> dtos = p_dao.getsearch(ser);
				model.addAttribute("dtos",dtos);
			}else if(Integer.parseInt(ser) >=0) {
				List<ParkingVO> dtos = p_dao.getsearch(ser);
				model.addAttribute("dtos",dtos);
			}
			
		}
		
		
		
			
			//  게시글 목록 조회
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("start", paging.getStart());
			map.put("end", paging.getEnd());
			map.put("ser",ser);
			System.out.println("리밋 : " + map);
			List<ParkingVO> dtos = p_dao.getinsertlist(map);
			req.setAttribute("dtos", dtos); //큰바구니 : 게시글 목록 cf)작은바구니 : 게시글 한건
			
		}
		model.addAttribute("page",page);
		model.addAttribute("paging",paging);
		model.addAttribute("cnt", bcnt);				//글갯수
		
		
	}
	//입출차 결산
	@Override
	public void inoutcartotal(HttpServletRequest req, Model model) {
		
	}
	//주차권 아이디
	@Override
	public void id(HttpServletRequest req, Model model) {
		String staff_id = SecurityContextHolder.getContext().getAuthentication().getName();
		model.addAttribute("staff_id",staff_id);    // 관리자 아이디
	}
	//주차권 사용 주차권 상품코드 불러오기
	@Override
	public void useticketproduct(HttpServletRequest req, Model model) {
		String b_code = req.getParameter("b_code");
		System.out.println(b_code);
		List<ParkingVO> dtos = p_dao.ticketPG_CODE(b_code);
	    String inoutcode = fn.mkUniquecode("inoutcode", "parking_history_tbl");
 		System.out.println(inoutcode);
 		if(inoutcode == null) {
 			 return;
 		}
 		
 		String parking_code = fn.mkUniquecode("parking_code","parking_ticket_history_tbl");
 		System.out.println("parking_code");
 		if(parking_code == null) {
 			 return;
 		}
 		System.out.println(dtos.get(0).getP_code() + "p_code");
 		System.out.println(dtos.get(1).getP_code() + "p_code");
 		System.out.println(dtos.get(2).getP_code() + "p_code");
 		model.addAttribute("inoutcode",inoutcode);
 		model.addAttribute("parking_code",parking_code);
		model.addAttribute("dtos",dtos);
	}
	@Override
	public void paychart(HttpServletRequest req, Model model) {
		List<Map<String,Object>> paydto = p_dao.paytotal();
		req.setAttribute("dto", jsonutil.getJsonStringFromList(paydto));
	}
	@Override
	public void regid(HttpServletRequest req, Model model) {
		String staff_id = SecurityContextHolder.getContext().getAuthentication().getName();
		System.out.println(staff_id);
		model.addAttribute("reg_id",staff_id);
	}
	//주차요금 등록
	@Override
	public void insertmoney(HttpServletRequest req, Model model) {
		String b_code = req.getParameter("b_code");
		String bp_type = req.getParameter("bp_type");
		String pb_time = req.getParameter("pb_time");
		String pb_price = req.getParameter("pb_price");
		String pb_free = req.getParameter("pb_free");
		String pb_free_price = req.getParameter("pb_free_price");
		String reg_id =req.getParameter("reg_id");
		ParkingVO vo= ParkingVO
				   .builder()
				   .b_code(b_code)
				   .bp_type(bp_type)
				   .reg_id(reg_id)
				   .pb_price(Integer.parseInt(pb_price))
				   .pb_time(Integer.parseInt(pb_time))
				   .pb_free(Integer.parseInt(pb_free))
				   .pb_free_price(Integer.parseInt(pb_free_price))
				   .build();
		int parkingcode = p_dao.insertprice(vo);
		model.addAttribute("parkingcode",parkingcode);
	}
	@Override
	public void updatemoney(HttpServletRequest req, Model model) {
		int bp_seq = Integer.parseInt(req.getParameter("bp_seq"));
		List<ParkingVO> park = p_dao.getupprice(bp_seq);
		model.addAttribute("b_code",park.get(0).getB_code());
		model.addAttribute("bp_type",park.get(0).getBp_type());
		model.addAttribute("pb_time",park.get(0).getPb_time());
		model.addAttribute("pb_price",park.get(0).getPb_price());
		model.addAttribute("pb_free",park.get(0).getPb_free());
		model.addAttribute("pb_free_price",park.get(0).getPb_free_price());
		model.addAttribute("reg_id",park.get(0).getReg_id());
		model.addAttribute("bp_seq",bp_seq);
		
	}
	@Override
	public void parkpricelist(HttpServletRequest req, Model model) {

		String page = req.getParameter("page");
		int bcnt = 0;
		String sertext = (req.getParameter("sertext") == null)? "" : req.getParameter("sertext");
		
		//글갯수 구하기
		bcnt = p_dao.getpriceCnt(); //총게시글 수
		String uri = req.getRequestURI();
		System.out.println("bcnt : " + bcnt);
		System.out.println("uri : " + uri);

		//http://localhost:8035/smart/bd_park/ticketlist?sertext=김&page=2
		if(!sertext.equals("")) {
			uri = uri+"?sertext=" + sertext;
		}
		Paging paging = new Paging( 5, 3, bcnt, uri);
		paging.pagelist(page);
		
		
		if(bcnt > 0) {
			
			//  게시글 목록 조회
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("start", paging.getStart());
			map.put("end", paging.getEnd());
			map.put("sertext",sertext);
			System.out.println("리밋 : " + map);
			List<ParkingVO> dtos = p_dao.getpricelist(map);
			req.setAttribute("dtos", dtos); //큰바구니 : 게시글 목록 cf)작은바구니 : 게시글 한건
			
		}
		
		model.addAttribute("page",page);
		model.addAttribute("paging",paging);
		model.addAttribute("cnt", bcnt);				//글갯수
		model.addAttribute("pageNum", page);		//페이지번호
		model.addAttribute("sertext", sertext);		//${sertext}
	
	}
	@Override
	public void updatemoneypro(HttpServletRequest req, Model model) {
		String b_code = req.getParameter("b_code");
		String bp_type = req.getParameter("bp_type");
		String pb_time = req.getParameter("pb_time");
		String pb_price = req.getParameter("pb_price");
		String pb_free = req.getParameter("pb_free");
		String pb_free_price = req.getParameter("pb_free_price");
		String reg_id =req.getParameter("reg_id");
		String bp_seq = req.getParameter("bp_seq");
		ParkingVO vo= ParkingVO
				   .builder()
				   .b_code(b_code)
				   .bp_type(bp_type)
				   .reg_id(reg_id)
				   .pb_price(Integer.parseInt(pb_price))
				   .pb_time(Integer.parseInt(pb_time))
				   .pb_free(Integer.parseInt(pb_free))
				   .pb_free_price(Integer.parseInt(pb_free_price))
				   .bp_seq(Integer.parseInt(bp_seq))
				   .build();
		int parkingcode = p_dao.getuppricepro(vo);
		model.addAttribute("parkingcode",parkingcode);
	}
	//주차요금 삭제 처리
	@Override
	public void deletemoney(HttpServletRequest req, Model model) {
		String bp_seq[] = req.getParameterValues("bp_seq");
		System.out.println(bp_seq[0] + bp_seq);
		int check =0;
		for(int i = 0; i<bp_seq.length; i++) {
			System.out.println(bp_seq[i]);
			p_dao.moneydelete(Integer.parseInt(bp_seq[i]));
			check += i;
		}
		model.addAttribute("check",check);	
		
	}
	//주차요금리스트
	@Override
	public void pricepaylist(HttpServletRequest req, Model model) {
		String page = req.getParameter("page");
		int bcnt = 0;
		String sertext = (req.getParameter("sertext") == null)? "" : req.getParameter("sertext");
		
		//글갯수 구하기
		bcnt = p_dao.getpricepaycnt(); //총게시글 수
		String uri = req.getRequestURI();
		System.out.println("bcnt : " + bcnt);
		System.out.println("uri : " + uri);

		//http://localhost:8035/smart/bd_park/ticketlist?sertext=김&page=2
		if(!sertext.equals("")) {
			uri = uri+"?sertext=" + sertext;
		}
		Paging paging = new Paging( 10, 3, bcnt, uri);
		paging.pagelist(page);
		
		
		if(bcnt > 0) {
			
			//  게시글 목록 조회
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("start", paging.getStart());
			map.put("end", paging.getEnd());
			map.put("sertext",sertext);
			System.out.println("리밋 : " + map);
			List<ParkingVO> dtos = p_dao.pricepaylist(map);
			req.setAttribute("dtos", dtos); //큰바구니 : 게시글 목록 cf)작은바구니 : 게시글 한건
			
		}
		
		model.addAttribute("page",page);
		model.addAttribute("paging",paging);
		model.addAttribute("cnt", bcnt);				//글갯수
		model.addAttribute("pageNum", page);		//페이지번호
		model.addAttribute("sertext", sertext);		//${sertext}
				
	}
	@Override
	public void pricechart(HttpServletRequest req, Model model) {
		List<Map<String,Object>> paydto = p_dao.pricetotal();
		req.setAttribute("dto1", jsonutil.getJsonStringFromList(paydto));
		
	}
	


	
	
	
	
	
	
	
	
	
	

		
}
