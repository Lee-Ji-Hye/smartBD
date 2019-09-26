package com.team.smart.persistence;

import java.util.List;
import java.util.Map;

import com.team.smart.vo.BuildingVO;
import com.team.smart.vo.CompVO;
import com.team.smart.vo.UserVO;

public interface SysmasterDAO {
	//업체 리스트
	public List<CompVO> compList(Map<String,Object> map);
	//업체 단건 조회
	public CompVO compInfo(String comp_seq);
	//업체 단건 삭제
	public int compDel(String comp_seq);
	//업체 단건 수정
	public int compAmd(Map<String,String> map);
	//업체 갯수
	public int compListCnt(Map<String, Object> map);
	
	
	
	//건물 갯수
	public int bdListCnt();
	//건물 리스트
	public List<BuildingVO> bdList(Map<String,Object> map);
	//건물 단건 조회
	public BuildingVO bdInfo(String b_code);
	//건물 단건 삭제
	public int bdDel(String b_code);
	//건물 단건 수정
	public int bdAmd(Map<String,String> map);
	
	
	//회원 갯수
	public int memListCnt();
	//회원 리스트
	public List<UserVO> memList(Map<String,Object> map);
	//회원 단건 조회
	public UserVO memInfo(String userid);
	//회원 단건 삭제
	public int memDel(String userid);
	//회원 단건 수정
	public int memAmd(Map<String,String> map);
}
