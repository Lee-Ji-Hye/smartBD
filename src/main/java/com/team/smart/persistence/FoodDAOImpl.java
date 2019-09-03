package com.team.smart.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team.smart.app.vo.FoodMenuVO;
import com.team.smart.app.vo.FoodStoreVO;
import com.team.smart.food.vo.Food_companyVO;
import com.team.smart.food.vo.Food_couponVO;
import com.team.smart.food.vo.Food_menuVO;

@Repository
public class FoodDAOImpl implements FoodDAO {
	
	@Autowired
	SqlSession sqlSession;

	// =========================== 민경
	
	// 음식점 소개 등록 처리
	@Override
	public int insertStoreUp(Food_companyVO vo) {
		return sqlSession.insert("FoodDAO.insertStoreUp", vo);
	}
	
	// 음식점 소개 등록시 등록 글
	@Override
	public List<Food_companyVO> getStore() {
		return sqlSession.selectList("FoodDAO.getStore");
	}

	// 음식점 소개 등록 수정 상세페이지
	@Override
	public Food_companyVO getStoreSujung(String strComp_seq) {
		return sqlSession.selectOne("FoodDAO.getStoreSujung", strComp_seq);
	}
	
	// 음식점 소개 등록 수정처리 
	@Override
	public int modifySujungUpdate(Food_companyVO vo) {
		return sqlSession.update("FoodDAO.modifySujungUpdate", vo);
	}

	// 음식점 상품 등록 
	@Override
	public int insertFoodUp(Food_menuVO vo) {
		return sqlSession.insert("FoodDAO.insertFoodUp",vo);
	}
	
	// 음식점 쿠폰 등록 
	@Override
	public int insertCouponeUp(Food_couponVO vo) {
		return sqlSession.insert("FoodDAO.insertCouponeUp", vo);
	}
	
	// 음식점 쿠폰 리스트
	@Override
	public List<Food_couponVO> getCoupon(int comp_seq) {
		return sqlSession.selectList("FoodDAO.getCoupon", comp_seq);
	}

	// 음식점 쿠폰 시리얼
	@Override
	public int insertCouponSer(Map<String, Object> map) {
		return sqlSession.insert("FoodDAO.insertCouponSer", map);
	}

	// 음식점 쿠폰 리스트 삭제
	@Override
	public int deleteCoupon(String[] f_coupon_num) {
		return sqlSession.delete("FoodDAO.deleteCoupon", f_coupon_num);
	}

	// ============================= 테스트
	@Override
	public int getUniqIndex() {
		// TODO 테슽으
		System.out.println("~!!!!!!!!!!!!!!!!!!!!!!!!!!~");
		return sqlSession.selectOne("FoodDAO.getTest");
	}

	


	
	
}
