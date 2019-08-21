package com.team.smart.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.team.smart.app.vo.ParkingBDVO;
import com.team.smart.app.vo.ParkingTicketVO;

//주차관리 안드로이드 서비스
public interface ParkingAndService {

	//주차장 전체 건물 리스트 정보 
	public List<ParkingBDVO> getBuildingList(HttpServletRequest req, Model model);
	
	//주차장 건물 정보
	public ParkingBDVO getBuildingInfo(HttpServletRequest req, Model model);
	
	//주차장 주차권 정보
	public List<ParkingTicketVO> getTicketInfo(HttpServletRequest req, Model model);
	
	//주차장 관리자 정보 가져오기
	public List<ParkingBDVO> getManagerHpInfo(HttpServletRequest req, Model model);
}
