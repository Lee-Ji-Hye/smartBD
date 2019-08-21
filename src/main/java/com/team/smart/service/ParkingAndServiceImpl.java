package com.team.smart.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.team.smart.app.vo.ParkingBDVO;
import com.team.smart.persistence.ParkingAndDAO;

//주차관리 안드로이드 서비스
@Service
public class ParkingAndServiceImpl implements ParkingAndService{

	@Autowired
	ParkingAndDAO p_dao;
	
	//지정한 주차장 건물 정보 가져오기 
	@Override
	public ParkingBDVO getBuildingInfo(HttpServletRequest req, Model model) {
		
		//String b_code = req.getParameter("b_code");
		String b_code = "bd001";
		ParkingBDVO vo = p_dao.getBDInfo(b_code);
		
		return  vo;
	}

}
