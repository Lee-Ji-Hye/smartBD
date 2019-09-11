package com.team.smart.persistence;

import java.util.List;
import java.util.Map;

import com.team.smart.vo.BuildingVO;
import com.team.smart.vo.CompVO;

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
	public int compListCnt();
	
	
	
	//건물 갯수
	public int bdListCnt();
	//건물 리스트
	public List<BuildingVO> bdList(Map<String,Object> map);
	//업체 단건 조회
	public BuildingVO bdInfo(String b_code);
	//업체 단건 삭제
	public int bdDel(String b_code);
	//업체 단건 수정
	public int bdAmd(Map<String,String> map);
}
