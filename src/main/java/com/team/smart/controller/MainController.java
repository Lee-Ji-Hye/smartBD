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
}
