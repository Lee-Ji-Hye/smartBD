package com.team.smart.persistence;

import java.util.Map;

import com.team.smart.vo.BuildingVO;
import com.team.smart.vo.CompVO;
import com.team.smart.vo.UserVO;

public interface UserDAO {
	//회원가입
	public int insertUser(UserVO user);

	//업체등록
	public int insertComp(CompVO vo);
	
	//권한등록
	public int insertAuth(Map<String, String> map);
	
	//빌딩등록
	public int insertBd(BuildingVO vo);
	
}
