package com.team.smart.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.team.smart.persistence.SysmasterDAO;
import com.team.smart.utils.Paging;
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
	
	
	
	public void compList(HttpServletRequest req, Model model) {

		//상품 총 글 수
		int totCnt = 50;
		String page = req.getParameter("page");
		
		//페이징 처리
		String uri = req.getRequestURI();
		Paging paging = new Paging(5, 5, totCnt, uri);//Paging(int pageLine, int pageBlock, int cnt);
		paging.pagelist(page);
		HashMap<String, String> map = new HashMap<>();
		List<CompVO> compList = sysDAO.compList(map);
		model.addAttribute("compList", compList);
		model.addAttribute("paging", paging);
		
	}



	@Override
	public CompVO compInfo(int comp_seq) {
		log.debug("업체 정보 단건 조회");
		return sysDAO.compInfo(comp_seq);
	}

}
