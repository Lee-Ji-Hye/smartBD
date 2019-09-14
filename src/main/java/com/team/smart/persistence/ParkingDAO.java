package com.team.smart.persistence;

import java.util.List;
import java.util.Map;

import com.team.smart.parking.vo.ParkingVO;


public interface ParkingDAO {
		//주차장현황 정보가져오기
		public List<ParkingVO> getcurrentpark(String b_code);
		
		//주차장 현황 갯수
		public int getparkCnt(String b_code);
		
		//주차장 현황 리스트 
		public List<ParkingVO> getparklist(Map<String, Object> map);
		
		//주차권 등록
		public int ticketreg(ParkingVO ticket);
		
		//건물정보 
		public List<ParkingVO> buliding(String b_name);
		
		//건물 체크
		public int buildcount(String b_code); 
		
		//건물 체크1
		public int buildcount1(String b_name);
		
		//주차권 수정
		public int updateticket(ParkingVO ticket);
		
		//주차권 삭제
		public int delete(String p_code);
		
		//주차장 등록
		public int parkingreg(ParkingVO parking);
		
		// 주차권 수정 정보불러오기
		public List<ParkingVO> ticketinfo(String p_code);
		
		//주차권 수정 처리
		public int ticketpro(ParkingVO parking);
		
		//주차장 수정
		public int updateplace(ParkingVO place);
		
		//주차장 삭제
		public int deleteplace(String b_code);
		
		//p코드 호출
		public String importpcode();
		
		//결제내역 갯수
		public  int getArticleCnt();
		
		//결제내역 리스트
		public List<ParkingVO> getpaylist(Map<String, Object> map);
		
		//발급내역 갯수
		public  int getOrderCnt();
		
		//발급내역 리스트
		public List<ParkingVO> getorderlist(Map<String, Object> map);
		
		//주차권 등록  갯수
		public int getinsertCnt();
		
		//주차권 등록리스트
		public List<ParkingVO> getinsertlist(Map<String, Object> map);
	
		
		//전체조회
		public List<ParkingVO> getsearch(String ser);
		
		
}
