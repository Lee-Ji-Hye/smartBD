package com.team.smart.controller;

import javax.servlet.http.HttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MainController {
	//private Logger logger = LoggerFactory.getLogger(this.getClass());

	//메인
	@RequestMapping({"/", "index"})
	public String index(HttpServletRequest req, Model model) {
        //logger.debug("ID : {}");
		return "index";
	}
	
	//@RequestMapping(value="mypage", method=RequestMethod.POST) //통신 사용시 이걸로 사용.
	@RequestMapping("mypage")
	public String mypage(HttpServletRequest req, Model model) {
		
		return "svc/mypage";
	}
	
	@RequestMapping("room")
	public String room(HttpServletRequest req, Model model) {
		
		return "svc/room";
	}
	
	@RequestMapping("inoutcar")
	public String inoutcar(HttpServletRequest req, Model model) {
		
		return "mng/inoutcar";
	}
	//주차권 사용 내역
	@RequestMapping("uselist")
	public String uselist(HttpServletRequest req, Model model) {
		
		return "mng/uselist";
	}
	//주차권 환불 내역
	@RequestMapping("refund")
	public String refund(HttpServletRequest req, Model model) {
		
		return "mng/refund";
	}
	//주차권 발급 내역
	@RequestMapping("parkinglist")
	public String parkinglist(HttpServletRequest req, Model model) {
		
		return "mng/parkinglist";
	}
	//주차권 사용
	@RequestMapping("ticketuse")
	public String parkinguse(HttpServletRequest req, Model model) {
		
		return "mng/ticketuse";
	}
	
	//주차장현황  입차
	@RequestMapping("incar")
	public String incar(HttpServletRequest req, Model model) {
		
		return "mng/incar";
	}
	
	//주차장 현황 출차
	@RequestMapping("outcar")
	public String outcar(HttpServletRequest req, Model model) {
		
		return "mng/outcar";
	}	

	@RequestMapping("total")
	public String total(HttpServletRequest req, Model model) {
		
		return "mng/total";
	}
	
	@RequestMapping("ticketmanager")
	public String ticketmanager(HttpServletRequest req, Model model) {
		
		return "mng/ticketmanager";
	}
	
	
}
