package com.team.smart.vo;



import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @Builder @AllArgsConstructor @NoArgsConstructor
public class BuildingVO {
	/*
B_CODE       NOT NULL VARCHAR2(20)  
B_AREA1               VARCHAR2(20)  
B_AREA2               VARCHAR2(20)  
B_ADDRESS             VARCHAR2(200) 
B_NAME                VARCHAR2(200) 
B_FLOOR               NUMBER(3)     
B_YEAR                VARCHAR2(30)  

B_UNIQUE              VARCHAR2(100)
B_OWNER               VARCHAR2(100)
B_REGNUM              VARCHAR2(100)
B_LANDAREA            VARCHAR2(100) 
B_BUILDAREA           VARCHAR2(100) 
B_BUILDSCALE          VARCHAR2(100)
B_STATUS              VARCHAR2(20) 
 
B_PARK                CHAR(1)       
B_ELEV                CHAR(1)       
B_HEAT                VARCHAR2(20)  
B_TRAFFIC             VARCHAR2(200) 
B_LAT                 NUMBER        
B_LON                 NUMBER        
USERID                VARCHAR2(50)  
B_REGIDATE            TIMESTAMP(6) 
	 */
	private String b_code;		//건물코드
	private String b_area1;		//서울시
	private String b_area2;		//금천구
	private String b_address;	//주소
	private String b_name;		//건물명
	private int b_floor;		//건물층수
	private String b_year;	//준공년도
	
	//추가한부분
	private String b_unique;//B_UNIQUE
	private String b_owner;//B_OWNER
	private String b_regnum;//B_REGNUM
	private String b_landarea;//B_LANDAREA 
	private String b_buildarea;//B_BUILDAREA 
	private String b_buildscale;//B_BUILDSCALE
	private String b_status;//B_STATUS 
	//추가한부분끝
	private String b_park;		//주차장 유무
	private String b_elev;		//엘리베이터 유무
	private String b_heat;		//난방종류
	private String b_traffic;	//교통편
	private double b_lat;			//위도
	private double b_lon;			//경도
	private String userid;		//관리자아이디
	
}
