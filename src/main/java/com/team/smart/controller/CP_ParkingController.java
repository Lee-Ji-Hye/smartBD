package com.team.smart.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.tomcat.jni.Mmap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
			
			return mngParking_ + "/incar";
		}
		
		//주차권 환불 내역
		@RequestMapping(value="refund")
		public String refund(HttpServletRequest req, Model model) {
			
			return mngParking_+"/refund";
		}
		//주차권 발급 내역
		@RequestMapping(value="parkinglist")
		public String parkinglist(HttpServletRequest req, Model model) {
			parkingService.tickethavelist(req, model);
			return mngParking_+"/parkinglist";
		}
		//주차권 등록 내역
		@RequestMapping(value="ticketlist")
		public String ticketlist(HttpServletRequest req, Model model) {
			parkingService.ticketlist(req, model);;
			return mngParking_+"/ticketlist";
		}
		//주차권 사용
		@RequestMapping(value="ticketuse")
		public String parkinguse(HttpServletRequest req, Model model) {
			return mngParking_+"ticketuse";
		}
		
		//주차권 사용 처리
		@RequestMapping(value="ticketusepro")
		public String parkingusepro(HttpServletRequest req, Model model) {
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
			
			return mngParking_+"/total";
		}
		//주차장 현황
		@RequestMapping(value ="/ticketmanager")
		public String ticketmanager(HttpServletRequest req, Model model) {
			return "redirect:/bd_park/intromn/inst2";
		}
		//주차장 현황 
		@RequestMapping(value ="/intromn/inst2")
		public String ticketmanager1(HttpServletRequest req, Model model) {
			parkingService.getcurrentpark(req, model);
			return  mngParking_+"/ticketmanager";
		}

		
		//주차권 등록
		@RequestMapping(value="/ticketreg")
		public String ticketreg(HttpServletRequest req, Model model) {
		return "redirect:/bd_park/intromn/inst3";

		}
		//주차권 등록
		@RequestMapping(value ="/intromn/inst3")
		public String ticketreg1(HttpServletRequest req, Model model) {
		return "mng/parking/ticketreg";
		}
		//주차권 처리
		@RequestMapping(value= "intromn/ticketregpro")
		public String ticketregpro(HttpServletRequest req, Model model) {
			parkingService.ticketreg(req, model);
			return mngParking_+"/ticketregpro";
		}
		
		//주차권 삭제
		@RequestMapping(value="tickedelete")
		public String tickedelete(HttpServletRequest req, Model model) {
			parkingService.ticketreg(req, model);
			return mngParking_+"/tickedelete";
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
		
		@RequestMapping("room")
		public String room(HttpServletRequest req, Model model) {
			
			return "svc/parking/room";
		}
		
}
