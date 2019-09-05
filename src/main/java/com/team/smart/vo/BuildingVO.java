package com.team.smart.vo;



import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @Builder @AllArgsConstructor @NoArgsConstructor
public class BuildingVO {
	
	private String b_code;		//건물코드
	private String b_area1;		//서울시
	private String b_area2;		//금천구
	private String b_address;	//주소
	private String b_name;		//건물명
	private int b_floor;		//건물층수
	private Timestamp b_year;	//준공년도
	private String b_park;		//주차장 유무
	private String b_elev;		//엘리베이터 유무
	private String b_heat;		//난방종류
	private String b_traffic;	//교통편
	private int b_lat;			//위도
	private int b_lon;			//경도
	private String userid;		//관리자아이디
	
}
