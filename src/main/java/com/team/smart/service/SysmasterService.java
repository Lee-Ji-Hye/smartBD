package com.team.smart.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.team.smart.vo.CompVO;

public interface SysmasterService {
	
	public void compList(HttpServletRequest req, Model model) ;
	
	public CompVO compInfo(int comp_seq);

}
