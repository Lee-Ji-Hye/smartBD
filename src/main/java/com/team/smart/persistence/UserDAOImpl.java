package com.team.smart.persistence;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team.smart.vo.CompVO;
import com.team.smart.vo.UserVO;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	SqlSession sqlSession;
	
	//com.team.smart.persistance.UserDAO
	@Override
	public int insertUser(UserVO vo) {
		return sqlSession.insert("UserDAO.insertUser", vo);
	}

	@Override
	public int insertComp(CompVO vo) {
		return sqlSession.insert("UserDAO.insertComp", vo);
	}

	@Override
	public int insertAuth(Map<String, String> map) {
		return sqlSession.insert("UserDAO.insertAuth", map);
	}

}
