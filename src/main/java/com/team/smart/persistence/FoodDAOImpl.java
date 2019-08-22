package com.team.smart.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team.smart.app.vo.FoodMenuVO;
import com.team.smart.app.vo.FoodStoreVO;
import com.team.smart.food.vo.Food_companyVO;
import com.team.smart.food.vo.Food_menuVO;

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

	
	// 음식점 소개 등록 처리
	@Override
	public int storeUp(Food_companyVO vo) {
		return sqlSession.update("FoodDAO.storeUp", vo);
	}

	// 음식점 상품 등록 
	@Override
	public int foodUp(Food_menuVO vo) {
		return sqlSession.insert("FoodDAO.foodUp",vo);
	}
	@Override
	public int getUniqIndex() {
		// TODO 테슽으
		System.out.println("~!!!!!!!!!!!!!!!!!!!!!!!!!!~");
		return sqlSession.selectOne("FoodDAO.getTest");
	}

	
}
