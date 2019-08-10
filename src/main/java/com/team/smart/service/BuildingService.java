package com.team.smart.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface BuildingService {
	
	//페이징 테스트
	public void pageTest(HttpServletRequest req, Model model);

}
