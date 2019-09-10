package com.team.smart.service;


import java.sql.Timestamp;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.team.smart.persistence.UserDAO;
import com.team.smart.utils.Functions;
import com.team.smart.vo.BuildingVO;
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
	
	@Autowired
	Functions funs;
	
	
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
	
	//업체 등록
	@Override
	public int insertComp(HttpServletRequest req, Model model) {
		//TODO 업체등록 필터링 ..?
		String comp_seq = funs.mkUniquecode("comp_seq", "user_company_tbl");
		CompVO vo = CompVO.builder()
				.comp_seq(comp_seq)
				.comp_section(req.getParameter("comp_section"))// 사업자구분(개인사업자,법인사업자)
				.comp_org(req.getParameter("comp_org"))// 법인명(단체명 혹은 상호명)
				.comp_bn(req.getParameter("comp_bn"))//사업자번호
				.comp_owner(req.getParameter("comp_owner"))//대표자
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
		map.put("comp_seq", comp_seq);
		
		count += dao.insertAuth(map);
		
		log.debug("count = "+count);
		return count;
	}

	@Override
	public int bdmnInsert(HttpServletRequest req, Model model) {
		//TODO 업체등록 필터링 ..?
		String b_code = funs.mkUniquecode("b_code", "building_tbl");
		
		BuildingVO vo = BuildingVO.builder()
						.b_code(b_code)
						.b_area1(req.getParameter("b_area1"))//지도에서가져와야댐
						.b_area2(req.getParameter("b_area2"))//지도에서가져와야댐
						.b_address(req.getParameter("b_address"))//지도에서가져와야댐
						.b_name(req.getParameter("b_name"))
						.b_floor(Integer.parseInt(req.getParameter("b_floor")))
						.b_year(req.getParameter("b_year"))
						
						.b_unique(req.getParameter("b_unique"))
						.b_owner(req.getParameter("b_owner"))
						.b_regnum(req.getParameter("b_regnum"))
						.b_landarea(req.getParameter("b_landarea"))
						.b_buildarea(req.getParameter("b_buildarea"))
						.b_buildscale(req.getParameter("b_buildscale"))
						.b_status("0")
						
						.b_park(req.getParameter("b_park"))
						.b_elev(req.getParameter("b_elev"))
						.b_heat(req.getParameter("b_heat"))
						.b_traffic(req.getParameter("b_traffic"))
						.b_lat(Double.parseDouble(req.getParameter("b_lat")))//지도에서 가져와야댐
						.b_lon(Double.parseDouble(req.getParameter("b_lon")))//지도에서가져와야댐
						.userid(SecurityContextHolder.getContext().getAuthentication().getName())
						.build();
		
		int count = 0;
		count += dao.insertBd(vo);
		//TODO 아이디, 업체코드를 넣은 권한 생성 CP_TENATE -> 계약코드가 없기때문에 권한은 못가짐..
		//
		//id, 업체코드, 권한명, insert 이거 승인되면 넣을예정
//		HashMap<String,String> map = new HashMap<>();
//		map.put("userid", SecurityContextHolder.getContext().getAuthentication().getName());
//		map.put("comp_auth", "ROLE_BD_ADMIN");
//		map.put("b_code", b_code);
//		
//		count += dao.insertAuth(map);
		
		log.debug("count = "+count);
		return count;
	}
	
	
	
	

}
