package com.team.smart.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.team.smart.utils.Paging;


@Service
public class BuildingServiceImpl implements BuildingService {

	@Override
	public void pageTest(HttpServletRequest req, Model model) { 
		//상품 총 글 수
		int totCnt = 50;
		String page = req.getParameter("page");
		
		//페이징 처리
		String uri = req.getRequestURI();
		Paging paging = new Paging(5, 5, totCnt, uri);//Paging(int pageLine, int pageBlock, int cnt);
		paging.pagelist(page);
		
		model.addAttribute("paging", paging);
		
	}

}
