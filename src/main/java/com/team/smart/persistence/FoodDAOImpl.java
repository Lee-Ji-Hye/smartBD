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
import com.team.smart.food.vo.Food_orde_menuVO;
import com.team.smart.food.vo.Food_orderVO;

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
	public int getStoreSel(String comp_seq) {
		return sqlSession.selectOne("FoodDAO.getStoreSel", comp_seq);
	}
	
	// 음식점 소개 등록시 글 한 건 가져오기 
	@Override
	public Food_companyVO getStoreOne(String comp_seq) {
		return sqlSession.selectOne("FoodDAO.getStoreOne", comp_seq);
	}
	
	// 음식점 소개 등록 수정처리 
	@Override
	public int modifySujungUpdate(Food_companyVO vo) {
		return sqlSession.update("FoodDAO.modifySujungUpdate", vo);
	}

	// 음식점 쿠폰 등록 
	@Override
	public int insertCouponeUp(Food_couponVO vo) {
		return sqlSession.insert("FoodDAO.insertCouponeUp", vo);
	}
	
	// 음식점 쿠폰 리스트
	@Override
	public List<Food_couponVO> getCoupon(Map<String, Object> map) {
		return sqlSession.selectList("FoodDAO.getCoupon", map);
	}

	// 음식점 쿠폰 시리얼
	@Override
	public int insertCouponSer(Map<String, Object> map) {
		return sqlSession.insert("FoodDAO.insertCouponSer", map);
	}
	
	// 음식점 쿠폰 시리얼 확인
	@Override
	public int getSerial(String[] f_coupon_num) {
		return sqlSession.selectOne("FoodDAO.getSerial", f_coupon_num);
	}

	// 음식점 쿠폰 리스트 삭제
	@Override
	public int deleteCoupon(String[] f_coupon_num) {
		return sqlSession.delete("FoodDAO.deleteCoupon", f_coupon_num);
	}
	
	// 음식점 상품 등록  페이지 처리
	@Override
	public int insertGoodsUp(Food_menuVO vo) {
		return sqlSession.insert("FoodDAO.insertGoodsUp", vo);
	}

	// 음식점 상품 등록시 업체 코드로 등록 상품
	@Override
	public int getGoods(String comp_seq) {
		return sqlSession.selectOne("FoodDAO.getGoods", comp_seq);
	}

	// 음식점 상품 수정시 상품코드로 등록 상품 가져오기
	@Override
	public Food_menuVO getGoodsOne(String f_code) {
		return sqlSession.selectOne("FoodDAO.getGoodsOne",f_code);
	}
	
	// 음식점 상품 등록시
	@Override
	public Food_menuVO getGoodsOneList(String comp_seq) {
		return sqlSession.selectOne("FoodDAO.getGoodsOneList", comp_seq);
	}

	// 음식점 상품 등록 수정 처리하기
	@Override
	public int modifyGoodsSujung(Food_menuVO vo) {
		return sqlSession.update("FoodDAO.modifyGoodsSujung", vo);
	}

	// 음식점 상품 리스트
	@Override
	public List<Food_menuVO> getGoodsList(Map<String, Object> map) {
		return sqlSession.selectList("FoodDAO.getGoodsList", map);
	}

	// 음식점 상품 리스트 삭제
	@Override
	public int deleteGoods(String[] f_code) {
		return sqlSession.delete("FoodDAO.deleteGoods", f_code);
	}
	
	// 음식점 주문 목록 
	@Override
	public List<Food_orderVO> getFoodOrderList(Map<String, Object> map) {
		return sqlSession.selectList("FoodDAO.getFoodOrderList", map);
	}
	
	// 음식점 주문 목록 상세보기
	@Override
	public Food_orderVO getFoodDetail(String f_ocode) {
		return sqlSession.selectOne("FoodDAO.getFoodDetail", f_ocode);
	}
	
	// 주문 승인 처리 
	@Override
	public int amdFood(String f_ocode) {
		return sqlSession.update("FoodDAO.amdFood", f_ocode);
	}
	
	// 주문 거절 처리
	@Override
	public int amdNotFood(String f_ocode) {
		return sqlSession.update("FoodDAO.amdNotFood", f_ocode);
	}
	
	// 관리자 결산
	@Override
	public List<Food_orderVO> getOrderAccounts(String comp_seq) {
		return sqlSession.selectList("FoodDAO.getOrderAccounts", comp_seq);
	}

	// 관리자 결산 처리
	@Override
	public Map<String, String> getAccountsEnd() {
		return sqlSession.selectOne("FoodDAO.getAccountsEnd");
	}
	
	// 관리자 주문 결산 차트
	@Override
	public List<Map<String, Object>> getFoodDon() {
		return sqlSession.selectList("FoodDAO.getFoodDon");
	}
	
	// ======================== 페이징 처리
	
	// 쿠폰 리스트 페이징 처리
	@Override
	public int getCouponPage() {
		return sqlSession.selectOne("FoodDAO.getCouponPage");
	}
	
	// 상품 리스트 페이징 처리
	@Override
	public int getGoodsPage(Map<String, Object> map1) {
		return sqlSession.selectOne("FoodDAO.getGoodsPage", map1);
	}
	
	// 주문 목록 페이징 처리
	@Override
	public int getOrderPage(Map<String, Object> map1) {
		return sqlSession.selectOne("FoodDAO.getOrderPage",map1);
	}
	
	

	// ============================= 테스트
	@Override
	public int getUniqIndex() {
		// TODO 테슽으
		System.out.println("~!!!!!!!!!!!!!!!!!!!!!!!!!!~");
		return sqlSession.selectOne("FoodDAO.getTest");
	}

	@Override
	public List<Food_orde_menuVO> getFoodMenuList(String f_ocode) {
		return sqlSession.selectList("FoodDAO.getFoodMenuList", f_ocode);
	}


}
