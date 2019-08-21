package com.team.smart.app.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.team.smart.service.ParkingAndService;
import com.team.smart.app.vo.ParkingBDVO;

@Controller
public class ParkingControllerAPI {

	private static final Logger log = LoggerFactory.getLogger(ParkingControllerAPI.class);

	@Autowired
	ParkingAndService p_service;
	
	//안드로이드 주차관리 메인레이아웃 지도 마커 정보 
	@ResponseBody// spring에서 안드로이드로 데이터(json)을 보내기 위한 어노테이션
	@RequestMapping(value="api/parking/ParkingInfo")
	public Map<String, Object> ParkingInfo(HttpServletRequest req,Model model) {
		log.info("ParkingInfo()");
		
		
		List<ParkingBDVO> lst = p_service.getBuildingList(req, model);
		Map<String, Object> map = new HashMap<String, Object>();
		
		if(lst != null) {
			map.put("parkingDBs", lst);
			map.put("result", "성공");
		}else {
			
			map.put("result", "실패");
		}
		
		return map;
	}
	
	//주차장건물 정보 가져옴
	@ResponseBody// spring에서 안드로이드로 데이터(json)을 보내기 위한 어노테이션
	@RequestMapping(value="api/parking/ParkingbuidingInfo")
	public Map<String, Object> ParkingbuidingInfo(HttpServletRequest req,Model model) {
		log.info("ParkingbuidingInfo()");
		
		ParkingBDVO vo = p_service.getBuildingInfo(req, model);
		
		List<ParkingBDVO> lst = new ArrayList<ParkingBDVO>();
		lst.add(vo);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		if(vo != null) {
			map.put("parkingDBs", lst);
			map.put("result", "성공");
		}else {
			
			map.put("result", "실패");
		}
		
		return map;
	}
	
	//안드로이드 주차관리 주차권 정보 가져오기
	@ResponseBody// spring에서 안드로이드로 데이터(json)을 보내기 위한 어노테이션
	@RequestMapping(value="api/parking/ParkingTicketInfo")
	public Map<String, Object> ParkingTicketInfo(HttpServletRequest req,Model model) {
		log.info("ParkingTicketInfo()");

		List<ParkingBDVO> lst = p_service.getBuildingList(req, model);
		Map<String, Object> map = new HashMap<String, Object>();
		
		if(lst != null) {
			map.put("pTickets", lst);
			map.put("result", "성공");
		}else {
			
			map.put("result", "실패");
		}
		
		return map;
	}
	
	//안드로이드 주차관리 관리자 전화번호만 가져오기
	@ResponseBody// spring에서 안드로이드로 데이터(json)을 보내기 위한 어노테이션
	@RequestMapping(value="api/parking/ParkingManageHpInfo")
	public Map<String, Object> ParkingManageHpInfo(HttpServletRequest req,Model model) {
		log.info("ParkingManageHpInfo()");

		List<ParkingBDVO> lst = p_service.getBuildingList(req, model);
		Map<String, Object> map = new HashMap<String, Object>();
		
		if(lst != null) {
			map.put("parkingDBs", lst);
			map.put("result", "성공");
		}else {
			
			map.put("result", "실패");
		}
		
		return map;
	}
	
}