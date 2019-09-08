package com.team.smart.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team.smart.vo.BuildingVO;
import com.team.smart.vo.CompVO;

@Repository
public class SysmasterDAOImpl implements SysmasterDAO{

	@Autowired
	private SqlSession sqlSession;
	
	//업체 리스트
	@Override
	public List<CompVO> compList(Map<String, Object> map) {
		return sqlSession.selectList("SysmasterDAO.compList", map);
	}

	//업체 단건
	@Override
	public CompVO compInfo(String comp_seq) {
		return sqlSession.selectOne("SysmasterDAO.compInfo", comp_seq);
	}

	//업체 단건삭제
	@Override
	public int compDel(String comp_seq) {
		return sqlSession.delete("SysmasterDAO.compDel", comp_seq);
	}
	
	//업체 권한 수정
	@Override
	public int compAmd(Map<String, String> map) {
		return sqlSession.update("SysmasterDAO.compAmd", map);
	}
	
	//업체 갯수
	@Override
	public int compListCnt() {
		return sqlSession.selectOne("SysmasterDAO.compListCnt");
	}

	
	//빌딩 갯수
	@Override
	public int bdListCnt() {
		return sqlSession.selectOne("SysmasterDAO.bdListCnt");
	}

	//빌딩 리스트
	@Override
	public List<BuildingVO> bdList(Map<String,Object> map) {
		return sqlSession.selectList("SysmasterDAO.bdList", map);
	}


	
}
