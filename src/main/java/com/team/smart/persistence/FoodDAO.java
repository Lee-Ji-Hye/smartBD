package com.team.smart.persistence;

import java.util.List;
import java.util.Map;

import com.team.smart.app.vo.FoodMenuVO;
import com.team.smart.app.vo.FoodStoreVO;
import com.team.smart.food.vo.Food_companyVO;
import com.team.smart.food.vo.Food_couponVO;
import com.team.smart.food.vo.Food_menuVO;
import com.team.smart.food.vo.Food_orderVO;

public interface FoodDAO {
	
	//민경======================================
	
	// 음식점 소개 등록 페이지 처리 
	public int insertStoreUp(Food_companyVO vo);
	
	// 음식점 소개 등록시 등록 글 
	public int getStoreSel(String comp_seq);
	
	// 음식점 소개 등록 등록글 가져오기
	public Food_companyVO getStoreOne(String comp_seq);
	
	// 음식점 소개 등록 수정 처리 페이지
	public int modifySujungUpdate(Food_companyVO vo);
	
	// 음식점 쿠폰 등록
	public int insertCouponeUp(Food_couponVO vo);
	
	// 음식점 쿠폰 리스트
	public List<Food_couponVO> getCoupon(Map<String, Object> map);
	
	// 음식점 쿠폰 시리얼
	public int insertCouponSer(Map<String, Object> map);
	
	// 음식점 쿠폰 시리얼 리스트
	public int getSerial(String[] f_serial);
	
	// 음식점 쿠폰 리스트 삭제
	public int deleteCoupon(String[] f_coupon_num);
	
	// 음식점 상품 등록 
	public int insertGoodsUp(Food_menuVO vo);
	
	// 음식점 상품 등록시 등록 상품
	public int getGoods(String comp_seq);
	
	// 음식점 상품 등록건
	public Food_menuVO getGoodsOneList(String comp_seq);
	
	// 음식점 상품 수정시
	public Food_menuVO getGoodsOne(String f_code);
	
	// 음식점 상품 등록 수정 처리하기
	public int modifyGoodsSujung(Food_menuVO vo);
	
	// 음식점 상품 리스트
	public List<Food_menuVO> getGoodsList(Map<String, Object> map);
	
	// 음식점 상품 리스트 삭제
	public int deleteGoods(String[] f_code);
	
	// 음식점 상품 주문목록
	public List<Food_orderVO> getFoodOrderList(Map<String, Object> map);
	
	// 음식점 상품 주문 상세 보기
	public Food_orderVO getFoodDetail(String f_ocode);
	
	// 음식점 주문 승인 처리
	public int amdFood(String f_ocode);
	
	// 음식점 주문 거절 처리
	public int amdNotFood(String f_ocode);
	
	// 음식점 결산
	public List<Food_orderVO> getOrderAccounts(String comp_seq);
	
	// 음식점 결산 처리
	public Map<String,String> getAccountsEnd();
	
	// 음식점 결산 차트
	public List<Map<String,Object>> getFoodDon();
	
	// ------------ 페이징 처리
	
	// 쿠폰 페이지 처리
	public int getCouponPage();
	
	// 상품 등록 페이지 처리
	public int getGoodsPage();
	
	// 주문 목록 페이지 처리
	public int getOrderPage();
	
	//테스트
	public int getUniqIndex();
}
