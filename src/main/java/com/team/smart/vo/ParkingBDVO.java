package com.team.smart.vo;

import lombok.Data;

@Data
public class ParkingBDVO {
	
	private String b_code; // 건물코드
	private String b_name; // 건물명
	private int p_floor; //층수
	private int able_position; // 총 주차자리
	private int able_height; // 출차높이제한(m)
	
	private int p_seq; // 상세정보 시퀀스
	private String p_detail_floor; //층 (B1, B2,,)
	private int able_position_floor; // 층별 주차가능자리수
	private int disable_position; // 장애인구역
	private int reserved_position; //-- 지정주차구역
	private String ask; //-- 기타사항
	
}
