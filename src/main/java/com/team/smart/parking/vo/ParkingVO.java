package com.team.smart.parking.vo;


import com.sun.jmx.snmp.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ParkingVO {
	// 주차장 현황 자동차 위치 및 상태
	private String p1_floor; 
	private double location_x;
	private double location_y;
	private int    park_state;
	
	// 주차권 등록 페이지
	private String p_code;
	private String b_code;
	private String p_type;
	private int	   hourly;
	private int	   price;
	private String reg_id;
	private String update_id;	
	
	//주차장 등록
	private String b_name;
	private int p_floor;
	private int b_floor;
	private int able_position;
	private double able_height;
	private double lat;
	private double lon;
	private String operate_time_day;
	private String operate_time_week;
	private String operate_tel;
	
	//빌딩 정보
	private double b_lat;
	private double b_lon;
	
	//주차권 주문 정보
	private String p_ocode; 
	private String userid;     
	private int p_state;    
	private int p_oprice; 
	private int p_count;   
	private String tid;	
	private Timestamp pay_day; 
	private Timestamp refund_day; 
	private Timestamp p_regidate;
	
	//주차권 발급내역
	private String parking_code; 
	private String car_number;   
	private Timestamp use_day;      
}
