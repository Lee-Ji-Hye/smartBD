package com.team.smart.persistence;

import com.team.smart.vo.CompVO;
import com.team.smart.vo.UserVO;

public interface UserDAO {
	//회원가입
	public int insertUser(UserVO user);

	//업체등록
	public int insertComp(CompVO vo);
	
}
