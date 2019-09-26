package com.team.smart.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.team.smart.vo.BuildingVO;
import com.team.smart.vo.CompVO;
import com.team.smart.vo.UserVO;

public interface SysmasterService {
	//업체 리스트
	public void compList(HttpServletRequest req, Model model) ;
	//업체 정보 단건 조회
	public CompVO compInfo(String comp_seq);
	//업체 단건 삭제
	public void compDel(String comp_seq);
	//업체 단건 승인 관련 변경 처리
	public void compAmd(String amd, String comp_seq);
	//업체 단건 추가
	public void compInsert(HttpServletRequest req, Model model);
	
	//빌딩 리스트
	public void bdList(HttpServletRequest req, Model model);
	//빌딩 정보 단건 조회
	public BuildingVO bdInfo(String b_code);
	//빌딩 단건 삭제
	public void bdDel(String b_code);
	//빌딩 단건 승인 관련 변경 처리
	public void bdAmd(String amd, String b_code);
	//빌딩 단건 추가
	public void bdInsert(HttpServletRequest req, Model model);
	
	//회원 리스트
	public void memList(HttpServletRequest req, Model model);
	//회원 정보 단건 조회
	public UserVO memInfo(String userid);
	//회원 단건 삭제
	public void memDel(String userid);
	//빌딩 단건 승인 관련 변경 처리
	public void memAmd(String amd, String userid);
	//회원 단건 추가
	public int memInsert(HttpServletRequest req, Model model);
	
	
}
