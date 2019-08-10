package com.team.smart.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team.smart.service.BuildingService;

@Controller
@RequestMapping("mng")
public class ManageController {
	//private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	private String mng_ = "mng/";
	private String mngBuilding_ = "mng/building";
	
	@Autowired
	BuildingService b_service;
	
	//메인
	@RequestMapping({"", "index"})
	public String index(HttpServletRequest req, Model model) {
        //logger.debug("ID : {}");
		return mng_ + "index";
	}
	
	//매물 리스트
	@RequestMapping("roomlist")
	public String roomlist(HttpServletRequest req, Model model) {
		b_service.pageTest(req, model);
		return mngBuilding_ + "/roomlist";
	}
	
}
