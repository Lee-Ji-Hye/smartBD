package com.team.smart.persistance;

import java.util.List;

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
	public List<FoodMenuVO> getMenuList() {
		// TODO 메뉴 가져오기
		return sqlSession.selectList("FoodDAO.getMenuList");
	}

	@Override
	public List<FoodStoreVO> getFoodStoreList(String f_category) {
		// TODO 스토어 정보 가져오기
		return sqlSession.selectList("FoodDAO.getFoodStoreList", f_category);
	}

	
}
