package com.team.smart.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.team.smart.vo.CompVO;
import com.team.smart.vo.UserVO;

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

	//직원권한요청
	public int insertauth(HttpServletRequest req, Model model);

	//회원정보가져옴
	public void getUserInfo(HttpServletRequest req, Model model);
	//
    //로그인
    public Map<String, Object> SignIn(UserVO vo,HttpServletRequest req, Model model);

    //유저 정보 수정
    public Map<String, Object> modifyUserInfo(UserVO vo,HttpServletRequest req, Model model);

    //유저 비밀번호 변경
    public Map<String, Object> modifyUserPwd(HashMap<String, String> map, HttpServletRequest req, Model model);

    //회원 탈퇴
    public Map<String, Object> modifyUserWithdraw(HashMap<String, String> map, HttpServletRequest req, Model model);
	
	
}
