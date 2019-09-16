package com.team.smart.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team.smart.vo.AuthReqVO;

@Repository
public class BDAdminDAOImpl implements BDAdminDAO{

	@Autowired
	private SqlSession sqlSession;

	//권한 테이블 갯수 확인
	@Override
	public int bdauthCnt(Map<String, Object> map) {
		return sqlSession.selectOne("BDAdminDAO.authCnt", map);
	}

	//권한 리스트 보여주기
	@Override
	public List<AuthReqVO> bdauthList(Map<String, Object> map) {
		return sqlSession.selectList("BDAdminDAO.authList", map);
	}

	//권한 단건 보여주기
	@Override
	public AuthReqVO authInfo(Map<String, Object> map) {
		return sqlSession.selectOne("BDAdminDAO.authInfo", map);
	}

	//요청 권한 삭제
	@Override
	public int authReqDel(Map<String, Object> map) {
		return sqlSession.delete("BDAdminDAO.authReqDel", map);
	}

	//요청 권한 삭제
	@Override
	public int authDel(Map<String, Object> map) {
		return sqlSession.delete("BDAdminDAO.authDel", map);
	}

	//요청된 권한 상태 변경
	@Override
	public int authAmd(Map<String, Object> map) {
		return sqlSession.update("BDAdminDAO.authAmd", map);
	}
	//요청된 권한 추가

	@Override
	public int authInsert(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.insert("BDAdminDAO.authInsert", map);
	}
	
	
}
