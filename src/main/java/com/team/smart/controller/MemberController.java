package com.team.smart.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.team.smart.service.UserService;
import com.team.smart.vo.CompVO;

import lombok.extern.slf4j.Slf4j;

/**
 * 
 * @author SH
 * @detail : 임차인 권한 매핑
 *
 */

@Slf4j
@Controller
@RequestMapping("/member")
public class MemberController {

	
	@Autowired
	UserService userService;
	
	
	@RequestMapping({"/","admin"})
	public String main(HttpServletRequest req, Model model) {
		log.info("url -> member/");

		return "redirect:/admin";
	}


	//빌딩 세션 선택
	@RequestMapping("bdSession")
	public String bdSession(HttpServletRequest req, Model model) {
		//메인으로 이동
		log.info("url -> bdSession");
		String bdInfo = req.getParameter("auth");
		String currentURL = req.getParameter("curl");

		if(bdInfo==null)return "redirect:/member/admin";;
		
		// 업체정보 가져오기
		log.debug("업체정보 : " + bdInfo);
		String[] bdpp = bdInfo.split("::");
		
		String b_code = bdpp[0];
		String b_name = bdpp[1];
		
		
		String redirectionURL = currentURL.substring(7);
		req.getSession().setAttribute("b_code", b_code);
		req.getSession().setAttribute("b_name", b_name);
		//잘라낸 url이 없으면 홈으로 가라
		if(redirectionURL.length()!=0) return "redirect:" + redirectionURL; else return "redirect:/member/admin";
	}
	
	//업체 세션 선택
	@RequestMapping("compSession")
	public String compSession(HttpServletRequest req, Model model) {
		//메인으로 이동
		log.info("url -> compSession");
		//파라메터로 넘어온값 획득
		String compInfo = req.getParameter("auth");
		String currentURL = req.getParameter("curl");

		if(compInfo==null)return "redirect:/";
		
		// 업체정보 가져오기
		log.debug("업체정보 : " + compInfo);
		//구분자로 잘라서 각각 나눠담기
		String[] comppp = compInfo.split("::");
		String comp_seq = comppp[0];
		String comp_org = comppp[1];
		
		String redirectionURL = currentURL.substring(7);
		req.getSession().setAttribute("comp_seq", comp_seq);//업체코드 comp_seq에 넣음
		req.getSession().setAttribute("comp_org", comp_org);//법인명 comp_org에 넣음
		
		//잘라낸 url이 없으면 홈으로 가라
		if(redirectionURL.length()!=0) return "redirect:" + redirectionURL; else return "redirect:/";
	}
	
	//직원 권한 요청
	@RequestMapping({"/auth"})
	public String auth(HttpServletRequest req, Model model) {
		log.info("url -> member/auth");

		return "redirect:/admin";
	}
	
	//내 정보
	@RequestMapping({"/member"})
	public String member(HttpServletRequest req, Model model) {
		log.info("url -> member/member");

		return "redirect:/admin";
	}

	//빌딩 등록등
	@RequestMapping({"/bdmn"})
	public String bdmn(HttpServletRequest req, Model model) {
		log.info("url -> member/bdmn");

		return "redirect:/member/bdmn/inst";
	}
	
	//빌딩 등록 페이지
	@RequestMapping({"/bdmn/inst"})
	public String bdmnInsert(HttpServletRequest req, Model model) {
		log.info("url -> member/bdmn/inst");
		return "signup/bd_signup";
	}

	//빌딩 등록 처리
	@RequestMapping("/bdmn/instpro")
	public String bdmnInsertPro(HttpServletRequest req, Model model) {
		log.info("url -> member/bdmn/instpro");
		
		userService.bdmnInsert(req, model);
		
		return "redirect:/member/bdmn/bd_complet";
	}

	//빌딩 등록 완료
	@RequestMapping("/bdmn/bd_complet")
	public String bd_complet(HttpServletRequest req, Model model) {
		log.info("url -> member/bdmn/bd_complet");

		return "signup/bd_complet";
	}
	
	
	
	
	//업체 등록 등
	@RequestMapping({"/comp"})
	public String comp(HttpServletRequest req, Model model) {
		log.info("url -> member/comp");

		return "redirect:/member/comp/put";
	}
	

	//업체 등록 등
	@RequestMapping({"/comp/put"})
	public String insertComp(HttpServletRequest req, Model model) {
		log.info("url -> member/comp/put");

		return "signup/comp_signup";
	}
	
	//업체 등록 등
	@RequestMapping("/comp/putpro")
	public String insertProComp(HttpServletRequest req, Model model) {
		log.info("url -> member/comp/putpro");
		userService.insertComp(req, model);
		
		return "redirect:/member/comp/comp_complet";
	}

	//업체 등록 등
	@RequestMapping("/comp/comp_complet")
	public String comp_complet(HttpServletRequest req, Model model) {
		log.info("url -> member/comp/comp_complet");

		return "signup/comp_complet";
	}
	
}
