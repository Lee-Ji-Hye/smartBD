package com.team.smart.persistence;

import java.util.List;
import java.util.Map;

import com.team.smart.app.vo.FoodMenuVO;
import com.team.smart.app.vo.FoodStoreVO;
import com.team.smart.food.vo.Food_companyVO;
import com.team.smart.food.vo.Food_couponVO;
import com.team.smart.food.vo.Food_menuVO;

public interface FoodDAO {
	//지혜======================================
	
	
	
	//민경======================================
	
	// 음식점 소개 등록 페이지 처리 
	public int insertStoreUp(Food_companyVO vo);
	
	// 음식점 소개 등록시 등록 글 
	public int getStore(String comp_seq);
	
	// 음식점 소개 등록 등록글 가져오기
	public Food_companyVO getStoreOne(String comp_seq);
	
	// 음식점 소개 등록 수정 처리 페이지
	public int modifySujungUpdate(Food_companyVO vo);
	
	// 음식점 상품 등록
	public int insertFoodUp(Food_menuVO vo);
	
	// 음식점 쿠폰 등록
	public int insertCouponeUp(Food_couponVO vo);
	
	// 음식점 쿠폰 리스트
	public List<Food_couponVO> getCoupon(String comp_seq);
	
	// 음식점 쿠폰 시리얼
	public int insertCouponSer(Map<String, Object> map);
	
	// 음식점 쿠폰 리스트 삭제
	public int deleteCoupon(String[] f_coupon_num);
	
	// 음식점 상품 등록  페이지 처리
	public int insertGoodsUp(Food_menuVO vo);
	
	// 음식점 상품 등록시 등록 상품
	public int getGoods(String comp_seq);
	
	// 음식점 상품 등록시 등록 상품 가져오기
	public Food_menuVO getGoodsOne(String comp_seq);
	
	// 음식점 상품 등록 수정 처리하기
	public int modifyGoodsSujung(Food_menuVO vo);
	
	// 음식점 상품 리스트
	public List<Food_menuVO> getGoodsList(String comp_seq);
	
	// 음식점 상품 리스트 삭제
	public int deleteGoods(String[] f_code);
	
	//테스트
	public int getUniqIndex();
}
