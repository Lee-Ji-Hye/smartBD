package com.team.smart.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.team.smart.parking.vo.InoutCarVO;
import com.team.smart.parking.vo.ParkingBasicPriceVO;
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
		
		//주차권 사용
		public int ticketuse(ParkingVO ticket);
		//주차권 사용 주차권 상품코드 불러오기 
		public List<ParkingVO> ticketPG_CODE(String b_code);	
		//주차권 사용 티켓 오더
		public int ticketorder(ParkingVO order);
		//주차권 주차 사용 주차 안된 위치 불러오기  
		public List<ParkingVO> p_seq();
		//주차권 사용 상세정보 테이블 정보변경
		public int upstate(ParkingVO vo);
		//주차권 사용 입출차 현황 insert
		public int insertinout(ParkingVO vo);
		//주차권 사용 아이디 체크
		public int findid(String userid);
		//주차권 사용 회원아이디 등록
		public int insertid(ParkingVO vo);
		//주차권 사용 티켓 히스토리
		public int inserthistory(ParkingVO vo);
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
		public int getinsertCnt(Map<String, Object> map1);
		
		//주차권 등록리스트
		public List<ParkingVO> getinsertlist(Map<String, Object> map);
	
		
		//전체조회
		public List<ParkingVO> getsearch(String ser);
		
		//빌딩 주차권 주차상품코드 불러오기
		public List<ParkingVO> list(Map<String, Object> map);
		//주차장 매출 결산
		public List<Map<String, Object>> paytotal(Map<String, Object> map1); 
		
		//주차장 매출 결산
		public List<Map<String, Object>> pricetotal(Map<String, Object> map); 

		
		//주차 요금 등록
		public int insertprice(ParkingVO price);
		//주차 요금 등록 갯수
		public int getpriceCnt(Map<String, Object> map1);
		
		//주차 요금 리스트 불러오기
		public List<ParkingVO> getpricelist(Map<String, Object> map);
		
		//주차 요금 수정 리스트 불러오기
		public List<ParkingVO> getupprice(int bp_seq);
		//주차 요금 수정 처리
		public int getuppricepro(ParkingVO price);
		//주차 요금 삭제 처리
		public int moneydelete(int bp_seq);
		//주차요금 결제 갯수
		public int getpricepaycnt(Map<String, Object> map1);
		//주차 요금 결제 내역 리스트
		public List<ParkingVO> pricepaylist(Map<String, Object> map); 
		
		//입출차량 리스트
		public List<InoutCarVO> getInoutCarList(String b_code);
		//주차 요금
		public ParkingBasicPriceVO getBasicPrice(String b_code);
		//출차 처리
		public int modiOutStatus(String inoutcode);
		
		public int insertInOutPro(Map<String,Object> map);
		
		//입출차 총 수
		public int getTotalInoutCnt();
		
		public int inoutDelete(String inout_codes);
}
