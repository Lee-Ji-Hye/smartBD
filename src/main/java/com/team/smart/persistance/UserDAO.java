package com.team.smart.persistance;

import com.team.smart.vo.UserVO;

public interface UserDAO {
	//회원가입
	public int signUpUser(UserVO user);

}
