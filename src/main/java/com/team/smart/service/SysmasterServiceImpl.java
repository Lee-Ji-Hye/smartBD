package com.team.smart.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.team.smart.persistence.SysmasterDAO;
import com.team.smart.persistence.UserDAO;
import com.team.smart.utils.Functions;
import com.team.smart.utils.Paging;
import com.team.smart.vo.BuildingVO;
import com.team.smart.vo.CompVO;

import lombok.extern.slf4j.Slf4j;

/**
 * 
 * @author SH
 * @SYSMASTER service
 *
 */

@Slf4j
@Service
public class SysmasterServiceImpl implements SysmasterService{

	@Autowired
	SysmasterDAO sysDAO;
	
	@Autowired
	UserDAO dao;
	
	@Autowired
	Functions fun;

	@Autowired
	Functions funs;
	
	//업체 리스트
	public void compList(HttpServletRequest req, Model model) {
		
		//상품 총 글 수
		String page = req.getParameter("page");
		
		int totCnt = sysDAO.compListCnt();
		
		//페이징 처리
		String uri = req.getRequestURI();
		Paging paging = new Paging(5, 5, totCnt, uri);//Paging(int pageLine, int pageBlock, int cnt);
		
		paging.pagelist(page);
		
		HashMap<String, Object> map = new HashMap<>();
		map.put("startNum", paging.getStart());
		map.put("endNum", paging.getEnd());
		
		List<CompVO> compList = sysDAO.compList(map);
		model.addAttribute("compList", compList);
		model.addAttribute("paging", paging);
		
	}

	//업체 단건 조회
	@Override
	public CompVO compInfo(String comp_seq) {
		log.debug("업체 정보 단건 조회");
		return sysDAO.compInfo(comp_seq);
	}

	//업체 단건 삭제
	@Override
	public void compDel(String comp_seq) {
		log.debug("업체 정보 단건 삭제");
		sysDAO.compDel(comp_seq);
	}

	//업체 단건 승인 처리 변경
	@Override
	public void compAmd(String amd, String comp_seq) {
		log.debug("업체 정보 권한 수정");
		Map<String, String> map = new HashMap<>();
		map.put("amd", amd);
		map.put("comp_seq", comp_seq);
		sysDAO.compAmd(map);
	}
	
	//업체 단건 삽입
	@Override
	public void compInsert(HttpServletRequest req, Model model) {
		//TODO 업체등록 필터링 ..?
		CompVO vo = CompVO.builder()
				.comp_seq(funs.mkUniquecode("comp_seq", "user_company_tbl"))
				.comp_section(req.getParameter("comp_section"))// 사업자구분(개인사업자,법인사업자)
				.comp_org(req.getParameter("comp_org"))// 법인명(단체명 혹은 상호명)
				.comp_bn(req.getParameter("comp_bn"))//사업자번호
				.comp_owner(req.getParameter("comp_owner"))//대표자
				.comp_branch(req.getParameter("comp_branch"))// 사업장소재지
				.comp_master(req.getParameter("comp_master"))// 본점소재지
				.comp_business(req.getParameter("comp_business"))// 업태
				.comp_category(req.getParameter("comp_category"))// 종목
				.comp_hp(req.getParameter("comp_hp"))// 대표전화번호
				.comp_status("1")// 승인상태 
				.build();
		int count = 0;
		count += dao.insertComp(vo);
		//TODO 아이디, 업체코드를 넣은 권한 생성 CP_TENATE -> 계약코드가 없기때문에 권한은 못가짐..
		//
		//id, 업체코드, 권한명, insert
		HashMap<String,String> map = new HashMap<>();
		map.put("userid", req.getParameter("userid"));
		map.put("comp_auth", "ROLE_CP_TENANT");
		map.put("comp_seq", funs.getCurrentcode("comp_seq", "user_company_tbl"));
		count += dao.insertAuth(map);
		
		log.debug("count = "+count);
	}

	@Override
	public void bdList(HttpServletRequest req, Model model) {
		//상품 총 글 수
		String page = req.getParameter("page");
		
		int totCnt = sysDAO.bdListCnt();
		
		//페이징 처리
		String uri = req.getRequestURI();
		Paging paging = new Paging(5, 5, totCnt, uri);//Paging(int pageLine, int pageBlock, int cnt);
		
		paging.pagelist(page);
		
		HashMap<String, Object> map = new HashMap<>();
		map.put("startNum", paging.getStart());
		map.put("endNum", paging.getEnd());
		
		List<BuildingVO> bdList = sysDAO.bdList(map);
		model.addAttribute("bdList", bdList);
		model.addAttribute("paging", paging);
	}

	
	

}
