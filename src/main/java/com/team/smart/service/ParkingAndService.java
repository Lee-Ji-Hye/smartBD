package com.team.smart.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.team.smart.app.vo.ParkingBDVO;

//주차관리 안드로이드 서비스
public interface ParkingAndService {

	//주차장 건물 정보
	public ParkingBDVO getBuildingInfo(HttpServletRequest req, Model model);
	
}
