package com.team.smart.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

/**
 * 
 * @author 정승훈
 * 회원 가입 등 처리
 *
 */
public interface UserService {
	public void signUpUser(HttpServletRequest req, Model model);
}