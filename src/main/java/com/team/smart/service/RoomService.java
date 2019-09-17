package com.team.smart.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.team.smart.room.vo.RoomVO;

@Service
public interface RoomService {
	
		//매물 상세페이지
		public void roomDetail(HttpServletRequest req,Model model);
		
		//매물 업로드
		public void upload(HttpServletRequest req, Model model);
		
		//테스트
		//public void testUpload(HttpServletRequest req, @ModelAttribute("dto") RoomVO vo, Model model);
		
		//매물 리스트
		public void list(HttpServletRequest req,Model model);
		
		//매물 수정
		public void update(HttpServletRequest req, Model model);
		
		//매물 비공개로 전환
		public void delete(HttpServletRequest req, Model model);
		
		//매물 공개로 전환
		public void reload(HttpServletRequest req, Model model);
		
		//이미지 등록시 DB에 이미지name저장
		public void addImage(HttpServletRequest req, Model model,String originFileName,String r_code);
		
		//슬라이드용 이미지 가져오기
		public void getImage(HttpServletRequest req,Model model);
		
		//납부 리스트 가져오기
		public void getpaylist(HttpServletRequest req,Model model);
		
		//납부 상세페이지
		public void getpaydetail(HttpServletRequest req,Model model);
		
		//결산 월별 월세총액
		public void getmonthtotal(HttpServletRequest req,Model model);
		
		//임차인의 id를 이용한 해당 납부 목록 가져오기
		public void getmemberpaylist(HttpServletRequest req,Model model);
		
		//매물 삭제 
		public int roomDelete(HttpServletRequest req, Model model);


}
