package com.team.smart.parking.vo;

import java.sql.Timestamp;

import lombok.Data;

//입출 차량 vo
@Data
public class InoutCarVO {
	//parking_history_tbl
	private String inoutcode;
	private String car_number;
	private String car_number_img;
	private String b_code;
	private String in_time;
	private String parking_time;
	private String out_time;
	private String parking_location;
	private String parking_state;
	
	private int totParkingTime; //(결제한)총 주차시간 분
	
	private String is_out; //Y:출차가능 N:출차불가
	
	//리얼 주차시간
	private int stayHours;
	private int stayMin;
	
	//결제한 주차시간
	private int payHours;
	private int payMin;
	
}
