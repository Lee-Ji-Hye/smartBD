package com.team.smart.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface ParkingService {
		//주차장 자리현황
		public void getcurrentpark(HttpServletRequest req,Model model);
		//주차장 자리현황 리스트
		public void parklist(HttpServletRequest req,Model model); 
		//주차권 등록
		public void ticketreg(HttpServletRequest req,Model model);
		//주차권 등록 아이디불러오기
		public void id(HttpServletRequest req,Model model);
		//입출차 조회
		public void search(HttpServletRequest req,Model model);
		//입출차 결산
		public void inoutcartotal(HttpServletRequest req,Model model);
		//주차권 수정  
		public void update(HttpServletRequest req,Model model);
		//주차권 삭제
		public void delete(HttpServletRequest req,Model model);
		//주차장 등록 
		public void insertplace(HttpServletRequest req,Model model);
		//주차장 수정 
		public void updateplace(HttpServletRequest req,Model model);
		//주차장 삭제
		public void deleteplace(HttpServletRequest req,Model model);
		//주차권 사용
		public void useticket(MultipartHttpServletRequest req ,Model model);
		//주차권 사용 주차권 상품코드 불러오기
		public void useticketproduct(HttpServletRequest req,Model model);
		//주차권 사용
		//(돈)결산 차트
		public void paychart(HttpServletRequest req,Model model);
		//주차권 수정처리
		public void updatepro(HttpServletRequest req,Model model);
		
		//주차권 등록내역 리스트
		public void ticketlist(HttpServletRequest req,Model model);
		
		//주차권 사용내역 리스트
		public void tickectuselist(HttpServletRequest req,Model model);
		
		//회원 주차권 보유내역 리스트
		public void tickethavelist(HttpServletRequest req,Model model);
		
		//회원  결제 내역 리스트
		public void paylist(HttpServletRequest req,Model model);
		
		//회원 결제 상세내역
		public void paydetail(HttpServletRequest req,Model model);
		
		//회원 환불 내역 리스트
		public void refundlist(HttpServletRequest req,Model model);
		
		//회원 환불 상세 내역
		public void refunddetail(HttpServletRequest req,Model model);
		
		//등록된 회원 차량 리스트 
		public void regperlist(HttpServletRequest req,Model model);
		
		//주차장 상세정보
		public void parkplacedetail(HttpServletRequest req,Model model);
		
		//주차권 자동사용
		public void ticketautouse(HttpServletRequest req,Model model);
		
		
}
