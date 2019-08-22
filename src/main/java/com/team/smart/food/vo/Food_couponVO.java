package com.team.smart.food.vo;

import java.sql.Timestamp;

import lombok.Builder;
import lombok.Data;

@Data @Builder
public class Food_couponVO {

	// 음식점 쿠폰 테이블 VO
	private String f_coupon_num;		// 쿠폰코드
    private int comp_seq;				// 업체코드
    private int f_coupon_name;			// 쿠폰이름
    private String f_coupon_price;		// 쿠폰가격
    private String userid;				// 아이디
    private Timestamp f_coupon_regidate;	// 쿠폰 등록일 
	
    
    // 음식점 쿠폰 테이블 > 쿠폰 시리얼 테이블 VO
    private String f_serial;			// 쿠폰 시리얼 코드
    private Timestamp f_coupon_start;	// 유효기간1
    private Timestamp f_coupon_end;		// 유효기간2
    private char f_coupon_use;			//사용여부
    private Timestamp f_use_date;   	//쿠폰 사용일
    
}
