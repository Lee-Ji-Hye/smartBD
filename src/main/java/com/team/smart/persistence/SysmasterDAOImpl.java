package com.team.smart.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team.smart.vo.CompVO;

@Repository
public class SysmasterDAOImpl implements SysmasterDAO{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<CompVO> compList(Map<String, Object> map) {
		return sqlSession.selectList("SysmasterDAO.compList", map);
	}

	@Override
	public CompVO compInfo(String comp_seq) {
		return sqlSession.selectOne("SysmasterDAO.compInfo", comp_seq);
	}

	@Override
	public int compDel(String comp_seq) {
		return sqlSession.delete("SysmasterDAO.compDel", comp_seq);
	}
	
	@Override
	public int compAmd(Map<String, String> map) {
		return sqlSession.update("SysmasterDAO.compAmd", map);
	}
	
	@Override
	public int compListCnt() {
		return sqlSession.selectOne("SysmasterDAO.compListCnt");
	}


	
}
