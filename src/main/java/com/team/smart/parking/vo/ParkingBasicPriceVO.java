package com.team.smart.parking.vo;

import java.sql.Time;
import java.sql.Timestamp;

import lombok.Data;

@Data
public class ParkingBasicPriceVO {
	
	private int bp_seq;
	private String b_code;
	private String bp_type;
	private int pb_time;
	private int pb_price;
	private int pb_free;
	private int pb_free_price;
	private String reg_id;
	private Timestamp reg_date;

}
