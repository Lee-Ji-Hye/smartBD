package com.team.smart.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.team.smart.vo.AuthReqVO;

public interface CPAdminService {
	
	//권한 리스트
	public void bdauthlist(HttpServletRequest req, Model model) ;

	
	
	
	//권한 정보 단건 조회
	public AuthReqVO authInfo(HttpServletRequest req, String userid, String req_auth);
	//권한 단건 삭제
	public void authDel(HttpServletRequest req, String userid, String req_auth);
	//권한 단건 승인 관련 변경 처리
	public void authAmd(HttpServletRequest req, String amd, String userid, String req_auth);
	
	
}
