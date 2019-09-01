package com.team.smart.service;


import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.team.smart.persistence.UserDAO;
import com.team.smart.vo.CompVO;
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
	public int insertUser(HttpServletRequest req, Model model) {
		//TODO 회원가입 null chk, db 중복 chk
		UserVO vo = UserVO.builder()
				.userid(req.getParameter("userid"))//아이디
				.userpw(pwEncoder.encode(req.getParameter("userpw")))//비밀번호
				.name(req.getParameter("name"))//이름
				.email(req.getParameter("email"))//이메일
				.hp(req.getParameter("hp"))//핸드폰번호
				.build();
		
		log.debug("signUpUser : " + vo);
		
		int cnt = dao.insertUser(vo);
		if(cnt == 0) model.addAttribute("vo", vo);
		return cnt;
	}
	
	@Override
	public int insertComp(HttpServletRequest req, Model model) {
		//TODO 업체등록 필터링 ..?
		CompVO vo = CompVO.builder()
				.comp_section(req.getParameter("comp_section"))// 사업자구분(개인사업자,법인사업자)
				.comp_org(req.getParameter("comp_org"))// 법인명(단체명 혹은 상호명)
				.comp_branch(req.getParameter("comp_branch"))// 사업장소재지
				.comp_master(req.getParameter("comp_master"))// 본점소재지
				.comp_business(req.getParameter("comp_business"))// 업태
				.comp_category(req.getParameter("comp_category"))// 종목
				.comp_hp(req.getParameter("comp_hp"))// 대표전화번호
				.comp_status("0")// 승인상태 
				.build();
		int count = 0;
		count += dao.insertComp(vo);
		//TODO 아이디, 업체코드를 넣은 권한 생성 CP_TENATE -> 계약코드가 없기때문에 권한은 못가짐..
		//
		//id, 업체코드, 권한명, insert
		HashMap<String,String> map = new HashMap<>();
		map.put("userid", SecurityContextHolder.getContext().getAuthentication().getName());
		map.put("comp_auth", "ROLE_CP_TENANT");
		count += dao.insertAuth(map);
		
		log.debug("count = "+count);
		return count;
	}
	
	
	
	

}
