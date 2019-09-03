package com.team.smart.persistence;

import java.util.List;
import java.util.Map;

import com.team.smart.vo.CompVO;

public interface SysmasterDAO {
	//리스트
	public List<CompVO> compList(Map<String,Object> map);
	//단건
	public CompVO compInfo(int comp_seq);
	//갯수
	public int compListCnt();
}
