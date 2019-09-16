package com.team.smart.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.team.smart.persistence.BDAdminDAO;
import com.team.smart.utils.Paging;
import com.team.smart.vo.AuthReqVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class BDAdminServiceImpl implements BDAdminService{

	@Autowired
	BDAdminDAO bdDao;
	
	@Override
	public void bdauthlist(HttpServletRequest req, Model model) {

		//상품 총 글 수
		String page = req.getParameter("page");

		
		HashMap<String, Object> map = new HashMap<>();
		map.put("req_division", "bd");//bd를 검사함
		map.put("req_key", req.getSession().getAttribute("b_code"));//b_code
		
		int totCnt = bdDao.bdauthCnt(map);
		
		//페이징 처리
		String uri = req.getRequestURI();
		Paging paging = new Paging(5, 5, totCnt, uri);//Paging(int pageLine, int pageBlock, int cnt);
		
		paging.pagelist(page);
		map.put("startNum", paging.getStart());
		map.put("endNum", paging.getEnd());
		
		List<AuthReqVO> bdList = bdDao.bdauthList(map);
		model.addAttribute("authList", bdList);
		model.addAttribute("paging", paging);
	}
	
	@Override
	public AuthReqVO authInfo(HttpServletRequest req, String userid, String req_auth) {
		log.debug("권한 정보 단건 조회");
		Map<String, Object> map = new HashMap<>();
		map.put("req_division", "bd");//bd를 검사함
		map.put("userid", userid);//bd를 검사함
		map.put("req_auth", req_auth);
		map.put("req_key", req.getSession().getAttribute("b_code"));//b_code
		return bdDao.authInfo(map); 
	}

	@Override
	public void authDel(HttpServletRequest req, String userid, String req_auth) {
		log.debug("권한 정보 단건 삭제");
		Map<String, Object> map = new HashMap<>();
		map.put("req_division", "bd");//bd를 검사함
		map.put("userid", userid);//bd를 검사함
		map.put("req_key", req.getSession().getAttribute("b_code"));//b_code
		map.put("req_auth", req_auth);
		log.debug(map.toString());
		bdDao.authReqDel(map);
		bdDao.authDel(map);
		
	}
	//권한 삭제 , 변경 시 user_compauth_tbl 테이블도 수정해야됨.
	@Override
	public void authAmd(HttpServletRequest req, String amd, String userid, String req_auth) {
		Map<String, Object> map = new HashMap<>();
		map.put("amd", amd);
		map.put("req_division", "bd");//bd를 검사함
		map.put("req_key", req.getSession().getAttribute("b_code"));//b_code
		map.put("userid", userid);
		map.put("req_auth", req_auth);
		log.debug(map.toString());
		bdDao.authAmd(map);
		//map에 구분자 추가
		map.put("category", "b_code");
		bdDao.authInsert(map);
	}
	
	
	
		
}