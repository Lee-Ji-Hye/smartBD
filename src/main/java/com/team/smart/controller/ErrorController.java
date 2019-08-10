package com.team.smart.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ErrorController {
	private String error_ = "common/error"; //jsp 파일 경로
	
	@RequestMapping(value="/error", method=RequestMethod.GET)
	public String error(HttpServletRequest req) {
		return error_ + "/errPage";
	}
}
