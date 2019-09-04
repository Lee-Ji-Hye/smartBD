package com.team.smart.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.team.smart.vo.CompVO;

public interface SysmasterService {
	
	public void compList(HttpServletRequest req, Model model) ;
	
	public CompVO compInfo(String comp_seq);

	public void compDel(String comp_seq);
	
	public void compAmd(String amd, String comp_seq);
	
	public void compInsert(HttpServletRequest req, Model model);
}
