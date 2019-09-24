package com.team.smart.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team.smart.parking.vo.InoutCarVO;
import com.team.smart.parking.vo.ParkingBasicPriceVO;
import com.team.smart.parking.vo.ParkingVO;

@Repository
public class ParkingDAOImpl implements ParkingDAO{

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<ParkingVO> getcurrentpark(String b_code) {
		return sqlSession.selectList("ParkingDAO.getcurrentpark",b_code);
	}
	
	@Override
	public List<ParkingVO> getparklist(Map<String, Object> map) {
		return sqlSession.selectList("ParkingDAO.getparklist",map);
	}

	@Override
	public int getparkCnt(String b_code) {
		return sqlSession.selectOne("ParkingDAO.getparkCnt",b_code);
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
	public List<ParkingVO> getpaylist(Map<String, Object> map) {
		return sqlSession.selectList("ParkingDAO.getpaylist",map);
	}

	
	@Override
	public int getOrderCnt() {
		return sqlSession.selectOne("ParkingDAO.getOrderCnt");
	}

	@Override
	public List<ParkingVO> getorderlist(Map<String, Object> map) {
		return sqlSession.selectList("ParkingDAO.getorderlist",map);
	}

	@Override
	public int getinsertCnt(Map<String, Object> map1) {
		return sqlSession.selectOne("ParkingDAO.getinsertCnt",map1);
	}

	@Override
	public List<ParkingVO> getinsertlist(Map<String, Object> map) {
		return sqlSession.selectList("ParkingDAO.getinsertlist",map);
	}
	
	@Override
	public List<ParkingVO> ticketinfo(String p_code) {
		return sqlSession.selectList("ParkingDAO.ticketinfo",p_code);
	}

	@Override
	public int ticketpro(ParkingVO parking) {
		return sqlSession.update("ParkingDAO.ticketpro", parking);
	}

	@Override
	public int delete(String p_code) {
		return sqlSession.delete("ParkingDAO.delete",p_code);
	}

	@Override
	public List<ParkingVO> getsearch(String ser) {
		return sqlSession.selectList("ParkingDAO.getsearch",ser);
	}

	@Override
	public int ticketuse(ParkingVO ticket) {
		return sqlSession.insert("ParkingDAO.ticketuse",ticket);
	}

	@Override
	public List<ParkingVO> ticketPG_CODE(String b_code) {
		return sqlSession.selectList("ParkingDAO.ticketPG_CODE", b_code);
	}

	@Override
	public int ticketorder(ParkingVO order) {
		return sqlSession.insert("ParkingDAO.ticketorder",order);
	}

	@Override
	public List<ParkingVO> p_seq() {
		return sqlSession.selectList("ParkingDAO.p_seq");
	}

	@Override
	public int upstate(ParkingVO vo) {
		return sqlSession.update("ParkingDAO.upstate",vo);
	}

	@Override
	public int insertinout(ParkingVO vo) {
		return sqlSession.insert("ParkingDAO.insertinout",vo);
	}

	@Override
	public int findid(String userid) {
		return sqlSession.selectOne("ParkingDAO.findid",userid);
	}

	@Override
	public int insertid(ParkingVO vo) {
		return sqlSession.insert("ParkingDAO.insertid",vo);
	}

	@Override
	public int inserthistory(ParkingVO vo) {
		return sqlSession.insert("ParkingDAO.inserthistory",vo);
	}

	@Override
	public List<Map<String, Object>> paytotal(Map<String, Object> map1) {
		return sqlSession.selectList("ParkingDAO.paytotal",map1);
	}

	@Override
	public int insertprice(ParkingVO price) {
		return sqlSession.insert("ParkingDAO.insertprice", price);
	}

	@Override
	public int getpriceCnt(Map<String, Object> map1) {
		return sqlSession.selectOne("ParkingDAO.getpriceCnt",map1);
	}

	@Override
	public List<ParkingVO> getpricelist(Map<String, Object> map) {
		return sqlSession.selectList("ParkingDAO.getpricelist",map);
	}

	@Override
	public List<ParkingVO> getupprice(int bp_seq) {
		return sqlSession.selectList("ParkingDAO.getupprice",bp_seq);
	}

	@Override
	public int getuppricepro(ParkingVO price) {
		return sqlSession.update("ParkingDAO.getuppricepro",price);
	}

	@Override
	public int moneydelete(int bp_seq) {
		return sqlSession.delete("ParkingDAO.moneydelete",bp_seq);
	}

	@Override
	public int getpricepaycnt(Map<String, Object> map1) {
		return sqlSession.selectOne("ParkingDAO.getpricepaycnt",map1);
	}
	@Override
	public List<ParkingVO> pricepaylist(Map<String, Object> map) {
		return sqlSession.selectList("ParkingDAO.pricepaylist",map);
	}

	@Override
	public List<Map<String, Object>> pricetotal(Map<String, Object> map) {
		return sqlSession.selectList("ParkingDAO.pricetotal",map);
	}

	@Override
	public List<InoutCarVO> getInoutCarList(String b_code) {
		return sqlSession.selectList("ParkingDAO.inoutCarList", b_code);
	}

	@Override
	public ParkingBasicPriceVO getBasicPrice(String b_code) {
		return sqlSession.selectOne("ParkingDAO.getBasicPrice", b_code);
	}

	@Override
	public int modiOutStatus(String inoutcode) {
		return sqlSession.update("ParkingDAO.modiOutStatus", inoutcode);
	}

	@Override
	public int insertInOutPro(Map<String, Object> map) {
		return sqlSession.insert("ParkingDAO.insertInOutPro", map);
	}

	@Override
	public int inoutDelete(String inout_codes) {
		return sqlSession.update("ParkingDAO.inoutDelete", inout_codes);
	}

	@Override
	public int getTotalInoutCnt() {
		return sqlSession.selectOne("ParkingDAO.getTotalInoutCnt");
	}

	@Override
	public List<ParkingVO> list(Map<String, Object> map) {
		return sqlSession.selectList("ParkingDAO.list",map);
	}

}
