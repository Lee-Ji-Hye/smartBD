package com.team.smart.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team.smart.vo.UserVO;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	SqlSession sqlSession;
	
	//com.team.smart.persistance.UserDAO
	@Override
	public int signUpUser(UserVO vo) {
		return sqlSession.insert("UserDAO.signUpUser", vo);
	}

}
