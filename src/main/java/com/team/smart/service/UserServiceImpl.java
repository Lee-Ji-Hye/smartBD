package com.team.smart.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.team.smart.persistence.UserDAO;
import com.team.smart.vo.UserVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserDAO dao;

	@Autowired
	PasswordEncoder pwEncoder;
	
	//회원가입 
	@Override
	public int signUpUser(HttpServletRequest req, Model model) {
		//TODO 회원가입 null chk, db 중복 chk
		UserVO vo = UserVO.builder()
				.userid(req.getParameter("userid"))
				.userpw(pwEncoder.encode(req.getParameter("userpw")))
				.name(req.getParameter("name"))
				.email(req.getParameter("email"))
				.hp(req.getParameter("hp"))
				.build();
		
		log.debug("signUpUser : " + vo);
		
		int cnt = dao.signUpUser(vo);
		if(cnt == 0) model.addAttribute("vo", vo);
		return cnt;
	}
	
	

}
