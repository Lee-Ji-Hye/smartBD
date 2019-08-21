package com.team.smart.persistance;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team.smart.app.vo.FoodMenuVO;
import com.team.smart.app.vo.FoodStoreVO;

@Repository
public class FoodDAOImpl implements FoodDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<FoodMenuVO> getMenuList(String comp_seq) {
		// TODO 메뉴 가져오기
		return sqlSession.selectList("FoodDAO.getMenuList", comp_seq);
	}

	@Override
	public List<FoodStoreVO> getFoodStoreList(Map<String, Object> map) {
		// TODO 스토어 정보 가져오기
		return sqlSession.selectList("FoodDAO.getFoodStoreList", map);
	}

	
	
	@Override
	public int getUniqIndex() {
		// TODO 테슽으
		System.out.println("~!!!!!!!!!!!!!!!!!!!!!!!!!!~");
		return sqlSession.selectOne("FoodDAO.getTest");
	}

	
}
