package com.team.smart.persistence;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.team.smart.vo.AuthReqVO;

public interface BDAdminDAO {
	//int totCnt = bdDao.bdauthCnt();//bdDao.bdauthList(map);

	//건물에 대한 권한 갯수
	public int bdauthCnt(Map<String, Object> map);
	//권한 리스트
	public List<AuthReqVO> bdauthList(Map<String,Object> map);
	

	//권한 단건 조회
	public AuthReqVO authInfo(Map<String, Object> map);
	//권한 요청 테이블 삭제
	public int authReqDel(Map<String, Object> map);
	//권한 테이블 단건 삭제
	public int authDel(Map<String, Object> map);

	public int authComDel(Map<String, Object> map);
	
	
	//권한 단건 수정
	public int authAmd(Map<String, Object> map);
	public int authInsert(Map<String, Object> map);
}
