package com.team.smart.food.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team.smart.food.vo.Food_companyVO;
import com.team.smart.food.vo.Food_menuVO;

@Repository
public class FoodDAOImpl implements FoodDAO{
	
	@Autowired
	private SqlSession sqlSession;


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
	
	

}
