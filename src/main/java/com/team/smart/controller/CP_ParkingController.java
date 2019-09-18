package com.team.smart.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.team.smart.service.ParkingService;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@RequestMapping("/bd_park")
@Controller
public class CP_ParkingController {
	
		@Autowired
		ParkingService parkingService;
		
		private String mngParking_ = "mng/parking";


//		@RequestMapping({"/"})
//		public String main(HttpServletRequest req, Model model) {
//			log.info("url -> bd_park/");
//
//			return "redirect:/admin";
//		}
		
		//주차권 사용 내역
		@RequestMapping(value="/uselist")
		public String uselist(HttpServletRequest req, Model model) {
			log.info("url -> uselist");
			return "redirect:/bd_park/intromn/inst";
		}
		//주차권 사용 내역
		@RequestMapping(value="/intromn/inst")
		public String uselist1(HttpServletRequest req, Model model) {
			parkingService.paylist(req, model);
			log.info("url -> uselist1");
			return mngParking_ + "/uselist";
		}
		
		
		@RequestMapping(value="/inoutcar")
		public String inoutcar(HttpServletRequest req, Model model) {
			
			return "redirect:/bd_park/intromn/inst1";
		}
	
		@RequestMapping(value="/intromn/inst1")
		public String inoutcar1(HttpServletRequest req, Model model) {
			return mngParking_ + "/outcar";
		}
		//차량 입출차 결산 
		@RequestMapping(value="/inoutcartotal")
		public String inoutcartotal(HttpServletRequest req, Model model) {
			return mngParking_ + "/inoutcartotal";
		}
		
		//매출 결산
		@RequestMapping(value="/paytotal")
		public String paytotal(HttpServletRequest req, Model model) {
			parkingService.paychart(req, model);
			return mngParking_ + "/paytotal";
		}
		//업로드
		@RequestMapping(value="test1")
		public String test(HttpServletRequest req, Model model) {
			return mngParking_+"/test1";
		}
		//주차권 발급 내역
		@RequestMapping(value="parkinglist")
		public String parkinglist(HttpServletRequest req, Model model) {
			parkingService.tickethavelist(req, model);
			return mngParking_+"/parkinglist";
		}
		//주차권 등록 내역
		@RequestMapping(value="/ticketlist")
		public String ticketlist(HttpServletRequest req, Model model) {
			parkingService.ticketlist(req, model);
			return mngParking_+"/ticketlist";
		}
		//주차권 사용
		@RequestMapping(value="/ticketuse")
		public String parkinguse(HttpServletRequest req, Model model) {
			parkingService.useticketproduct(req, model);
			return mngParking_+"/ticketuse";
		}
		
		
		//주차권 사용 처리
		@RequestMapping(value="/ticketusepro")
		public String parkingusepro(MultipartHttpServletRequest req, Model model) {
			parkingService.useticket(req, model);
			return mngParking_+"/ticketusepro";
		}
		
		//주차장현황  입차
		@RequestMapping(value = "/incar")
		public String incar(HttpServletRequest req, Model model) {
			
			return mngParking_+"/incar";
		}
		
		//주차장 현황 출차
		@RequestMapping(value="outcar")
		public String outcar(HttpServletRequest req, Model model) {
			
			return mngParking_+"/outcar";
		}	
		// 정산
		@RequestMapping(value = "/total")
		public String total(HttpServletRequest req, Model model) {
			return "redirect:/bd_park/intromn/inst5";
		}
		
		@RequestMapping(value="/intromn/inst5")
		public String total1(HttpServletRequest req, Model model) {
			parkingService.paychart(req, model);
			parkingService.pricechart(req, model);
			return mngParking_+"/paytotal";
		}
		//주차장 현황
		@RequestMapping(value ="/ticketmanager")
		public String ticketmanager(HttpServletRequest req, Model model) {
			return "redirect:/bd_park/intromn/inst2";
		}
		//주차 요금 등록
		@RequestMapping(value ="/inserprice")
		public String parkprice(HttpServletRequest req, Model model) {
			parkingService.regid(req, model);
			return mngParking_+"/inserprice";
		}
		//주차 요금 등록 처리
		@RequestMapping(value ="/inserpricepro")
		public String insertpricepro(HttpServletRequest req, Model model) {
			parkingService.insertmoney(req, model);
			return mngParking_+"/inserpricepro";
		}
		
		//주차 요금 리스트
		@RequestMapping(value ="/parkpricelist")
		public String parkpricelist(HttpServletRequest req, Model model) {
			parkingService.parkpricelist(req, model);
			return mngParking_+"/parkpricelist";
		}
		//주차 요금 수정 불러오기
		@RequestMapping(value ="/upprice")
		public String upprice(HttpServletRequest req, Model model) {
			parkingService.updatemoney(req, model);
			return mngParking_+"/upprice";
		}
		//주차 요금 수정 처리
		@RequestMapping(value ="/uppricepro")
		public String uppricepro(HttpServletRequest req, Model model) {
			parkingService.updatemoneypro(req, model);
			return mngParking_+"/uppricepro";
		}
		//주차요금 삭제 
		@RequestMapping(value ="/uppricedelte")
		public String uppricedelte(HttpServletRequest req, Model model) {
			parkingService.deletemoney(req, model);
			return mngParking_+"/uppricedelte";
		}
		//주차장 현황 
		@RequestMapping(value ="/intromn/inst2")
		public String ticketmanager1(HttpServletRequest req, Model model) {
			parkingService.getcurrentpark(req, model);
			return  mngParking_+"/ticketmanager";
		}

		//주차장 현황 리스트
		@RequestMapping(value ="/parklist")
		public String parklist(HttpServletRequest req, Model model) {
			parkingService.parklist(req, model);
			return mngParking_+"/parklist";
		}
		
		//주차 결제 리스트
		@RequestMapping(value ="/parkpaylist")
		public String parkpaylist(HttpServletRequest req, Model model) {
			parkingService.pricepaylist(req, model);
			return mngParking_+"/parkpaylist";
		}
		
		//주차권 등록
		@RequestMapping(value="/ticketreg")
		public String ticketreg(HttpServletRequest req, Model model) {
		return "redirect:/bd_park/intromn/inst3";

		}
		//주차권 등록
		@RequestMapping(value ="/intromn/inst3")
		public String ticketreg1(HttpServletRequest req, Model model) {
		parkingService.id(req, model);
		return "mng/parking/ticketreg";
		}
		//주차권 처리
		@RequestMapping(value= "intromn/ticketregpro")
		public String ticketregpro(HttpServletRequest req, Model model) {
			parkingService.ticketreg(req, model);
			return mngParking_+"/ticketregpro";
		}
		
		//주차권 수정
		@RequestMapping(value="/ticketup")
		public String ticketup(HttpServletRequest req, Model model) {
			parkingService.update(req, model);
			return mngParking_+"/ticketup";
		}
		//주차권 수정 처리
		@RequestMapping(value="/ticketpro")
		public String search(HttpServletRequest req, Model model) {
			parkingService.updatepro(req, model);
			return mngParking_+"/ticketpro";
		}
		
		//주차권 삭제
		@RequestMapping(value="/ticketdelete")
		public String ticketdelete(HttpServletRequest req, Model model) {
			parkingService.delete(req, model);
			return mngParking_+"/ticketdelete";
		}
		
		//주차장 등록
		@RequestMapping(value= "/insertplace")
		public String insertplace(HttpServletRequest req, Model model) {
			return "redirect:/bd_park/intromn/inst4";
		}
		
		//주차장 등록
		@RequestMapping(value ="/intromn/inst4")
		public String insertplace1(HttpServletRequest req, Model model) {
			return mngParking_+"/insertplace";
		}
		
		//주차장 등록 처리
		@RequestMapping(value="intromn/insertplacepro")
		public String insertplacepro(HttpServletRequest req, Model model) {
			parkingService.insertplace(req, model);
			return mngParking_+"/insertplacepro";
		}
		
		
		
		//주차장 수정
		@RequestMapping(value="updateplace")
		public String updateplace(HttpServletRequest req, Model model) {
			return mngParking_+"/updateplace";
		}
		
		
		
		//@RequestMapping(value="mypage", method=RequestMethod.POST) //통신 사용시 이걸로 사용.
		@RequestMapping("mypage")
		public String mypage(HttpServletRequest req, Model model) {
			return "svc/parking/mypage";
		}
		
		
		
}
