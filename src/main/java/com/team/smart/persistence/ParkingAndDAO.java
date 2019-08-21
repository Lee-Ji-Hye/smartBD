package com.team.smart.persistence;

import com.team.smart.app.vo.ParkingBDVO;

//주차관리 안드로이드 DAO
public interface ParkingAndDAO {

	public ParkingBDVO getBDInfo(String b_code);
	
}
