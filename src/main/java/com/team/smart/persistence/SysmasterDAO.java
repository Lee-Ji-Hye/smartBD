package com.team.smart.persistence;

import java.util.List;
import java.util.Map;

import com.team.smart.vo.CompVO;

public interface SysmasterDAO {
	//리스트
	public List<CompVO> compList(Map<String,Object> map);
	//단건 조회
	public CompVO compInfo(String comp_seq);
	//단건 삭제
	public int compDel(String comp_seq);
	//단건 수정
	public int compAmd(Map<String,String> map);
	//갯수
	public int compListCnt();
}
