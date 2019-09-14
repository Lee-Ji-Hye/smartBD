package com.team.smart.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.team.smart.vo.CompVO;

/**
 * 
 * @author 정승훈
 * 회원 가입 등 처리
 *
 */
public interface UserService {
	//유저 회원가입
	public int insertUser(HttpServletRequest req, Model model);
	
	//업체 등록
	public int insertComp(HttpServletRequest req, Model model);
	
	//빌딩 등록
	public int bdmnInsert(HttpServletRequest req, Model model);
	
	//검색
	public List<Map<String,String>> search(String keyword, String category);

	public int insertauth(HttpServletRequest req, Model model);
	
}
