package com.team.smart.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team.smart.parking.vo.ParkingVO;

@Repository
public class ParkingDAOImpl implements ParkingDAO{

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<ParkingVO> getcurrentpark() {
		return sqlSession.selectList("ParkingDAO.getcurrentpark");
	}

	@Override
	public int ticketreg(ParkingVO ticket) {
		return sqlSession.insert("ParkingDAO.ticketreg", ticket);
	}

	

	
	@Override
	public List<ParkingVO> buliding(String b_name) {
		return sqlSession.selectList("ParkingDAO.buliding",b_name);
	}

	@Override
	public int buildcount(String b_code) {
		return sqlSession.selectOne("ParkingDAO.buildcount",b_code);
	}

	@Override
	public int buildcount1(String b_name) {
		return sqlSession.selectOne("ParkingDAO.buildcount1",b_name);
	}

	@Override
	public int updateticket(ParkingVO ticket) {
		return sqlSession.update("ParkingDAO.ticketreg", ticket);
	}

	@Override
	public int delete(String p_code) {
		return sqlSession.delete("ParkingDAO.delete", p_code);
	}

	@Override
	public int parkingreg(ParkingVO parking) {
		return sqlSession.insert("ParkingDAO.parkingreg",parking);
	}
	
	@Override
	public int updateplace(ParkingVO place) {
		return sqlSession.update("ParkingDAO.updateplace",place);
	}

	@Override
	public int deleteplace(String b_code) {
		return sqlSession.delete("ParkingDAO.deleteplace", b_code);
	}

	@Override
	public String importpcode() {
		return sqlSession.selectOne("ParkingDAO.importpcode");
	}

	@Override
	public int getArticleCnt() {
		return sqlSession.selectOne("ParkingDAO.getArticleCnt");
	}

	@Override
	public List<ParkingVO> getpaylist() {
		return sqlSession.selectList("ParkingDAO.getpaylist");
	}

	
	@Override
	public int getOrderCnt() {
		return sqlSession.selectOne("ParkingDAO.getOrderCnt");
	}

	@Override
	public List<ParkingVO> getorderlist(Map<String, Object> map) {
		return sqlSession.selectList("ParkingDAO.getorderlist",map);
	}

	

}
