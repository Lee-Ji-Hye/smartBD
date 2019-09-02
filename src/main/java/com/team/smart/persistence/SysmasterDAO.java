package com.team.smart.persistence;

import java.util.List;
import java.util.Map;

import com.team.smart.vo.CompVO;

public interface SysmasterDAO {
	public List<CompVO> compList(Map<String,String> map);
	
	public CompVO compInfo(int comp_seq);
}
