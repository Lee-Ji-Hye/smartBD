package com.team.smart.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team.smart.room.vo.RoomVO;
import com.team.smart.room.vo.TotalVO;

@Repository
public class RoomDAOImpl implements RoomDAO{
	
	@Autowired
	SqlSession sqlSession;

	//매물상세 페이지
	@Override
	public RoomVO getDetail(String r_code) {
		//RoomDAO dao = sqlSession.getMapper(RoomDAO.class);
		
				//return dao.getDetail();
		return sqlSession.selectOne("RoomDAO.getDetail",r_code);
	}

	//매물코드 생성
	@Override
	public int getUniqRoomIndex() {
		
		return sqlSession.selectOne("RoomDAO.getUniqRoomIndex");
	}

	//매물 업로드
	@Override
	public int roomupload(RoomVO vo) {
		
		return sqlSession.insert("RoomDAO.roomupload",vo);
	}

	//매물 갯수구하기
	@Override
	public int getArticleCnt() {
		
		return sqlSession.selectOne("RoomDAO.getArticleCnt");
	}

	
	//매물 목록 조회
	@Override
	public List<RoomVO> getArticleList(Map<String, Object> map) {
		
		
		return sqlSession.selectList("RoomDAO.List",map);
	}

	//매물 수정
	@Override
	public int update(RoomVO vo) {
		
		return sqlSession.update("RoomDAO.update",vo);
	}

	//매물 비공개로 전환
	@Override
	public int delete(String r_code) {
		
		return sqlSession.delete("RoomDAO.delete",r_code);
	}
	
	//매물 공개로 전환
	@Override
	public int reload(String r_code) {
		
		return sqlSession.update("RoomDAO.reload",r_code);
	}

	
	//슬라이드 이미지 삽입
	@Override
	public int slide(RoomVO vo) {
		
		return sqlSession.insert("RoomDAO.slide",vo);
	}

	//슬라이드용 이미지 갯수 구하기
	@Override
	public int getImagecount(String r_code) {
		
		return sqlSession.selectOne("RoomDAO.getImagecount",r_code);
	}

	//슬라이드용 이미지 가져오기
	@Override
	public List<RoomVO> getImage(String r_code) {
		
		return sqlSession.selectList("RoomDAO.getImage",r_code);
	}

	//납부리스트 가져오기
	@Override
	public List<RoomVO> getpaylist() {
		
		return sqlSession.selectList("RoomDAO.getpaylist");
	}

	@Override
	public List<RoomVO> getpaydetail(String rt_code) {
		
		return sqlSession.selectList("RoomDAO.getpaydetail",rt_code);
	}

	//결산 월별 월세금액
	@Override
	public List<TotalVO> getmonthtotal() {
		
		return sqlSession.selectList("RoomDAO.getmonthtotal");
	}

	

}
