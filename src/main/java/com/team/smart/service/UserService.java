package com.team.smart.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.team.smart.vo.CompVO;

/**
 * 
 * @author 정승훈
 * 회원 가입 등 처리
 *
 */
public interface UserService {
	public int insertUser(HttpServletRequest req, Model model);
	

	public int insertComp(HttpServletRequest req, Model model);
	
	
}
