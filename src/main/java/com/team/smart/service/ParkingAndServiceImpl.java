package com.team.smart.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.team.smart.persistence.ParkingAndDAO;
import com.team.smart.vo.ParkingBDVO;
import com.team.smart.vo.ParkingTicketVO;

//주차관리 안드로이드 서비스
@Service
public class ParkingAndServiceImpl implements ParkingAndService{

	@Autowired
	ParkingAndDAO p_dao;
	
	//안드로이드 메인페이지 지도 마커 정보 가져오기 ...
	@Override
	public List<ParkingBDVO> getBuildingList(HttpServletRequest req, Model model) {

		List<ParkingBDVO> list = p_dao.getBDList();
		
		return list;
	}
	
	//지정한 주차장 건물 정보 가져오기 
	@Override
	public ParkingBDVO getBuildingInfo(HttpServletRequest req, Model model) {
		
		String b_code = req.getParameter("b_code");
		
		ParkingBDVO vo = p_dao.getBDInfo(b_code);
		
		return  vo;
	}
	
	//주차권 정보 가져오기
	@Override
	public List<ParkingTicketVO> getTicketInfo(HttpServletRequest req, Model model) {
		
		String b_code = req.getParameter("b_code");
		List<ParkingTicketVO> list = p_dao.getTicketList(b_code);
		
		return list;
	}

	@Override
	public List<ParkingBDVO> getManagerHpInfo(HttpServletRequest req, Model model) {
		
		String b_code = req.getParameter("b_code");
		List<ParkingTicketVO> list = p_dao.getTicketList(b_code);
		return null;
	}

}
