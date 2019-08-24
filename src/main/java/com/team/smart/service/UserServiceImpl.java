package com.team.smart.service;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.team.smart.persistence.UserDAO;
import com.team.smart.vo.UserVO;

@Service
public class UserServiceImpl implements UserService {

	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	UserDAO dao;

	//회원가입 
	@Override
	public void signUpUser(HttpServletRequest req, Model model) {
		UserVO vo = UserVO.builder()
				.userid(req.getParameter("userid"))
				.userpw(req.getParameter("userpw"))
				.name(req.getParameter("name"))
				.email(req.getParameter("email"))
				.hp(req.getParameter("hp"))
				.build();
		
		logger.info("signUpUser : " + vo);
		
//		int cnt = dao.signUpUser(vo);
//		if(cnt == 1) {
//			model.addAttribute("signUpUserCnt", 1);
//		}else {
//			model.addAttribute("signUpUserCnt", 0);
//		}
		
	}
	
	

}
