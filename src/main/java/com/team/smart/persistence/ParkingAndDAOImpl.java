package com.team.smart.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team.smart.app.vo.ParkingBDVO;

@Repository
public class ParkingAndDAOImpl implements ParkingAndDAO{
	//주차관리 안드로이드 DAO
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public ParkingBDVO getBDInfo(String b_code) {
		return sqlSession.selectOne("ParkingAndDAO.getBDInfo",b_code);
	}
	
}
