package com.team.smart.persistence;

import java.util.Map;

public interface CodeDAO {

	//유니크 코드 구하기
	public int getLastIdx(Map<String, Object> map);
	
}
