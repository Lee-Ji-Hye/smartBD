package com.team.smart.food.vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

//com.team.smart.food.vo.Food_coupon_serialVO
@Data @Builder @NoArgsConstructor @AllArgsConstructor
public class Food_coupon_serialVO {
	/*
	 * ------------ -------- ------------ 
F_SERIAL     NOT NULL VARCHAR2(50) 
F_COUPON_NUM NOT NULL VARCHAR2(20) 
USERID                VARCHAR2(50) 
F_COUPON_USE          CHAR(1)      
F_USE_DATE            TIMESTAMP(6) 
	 */
    // 음식점 쿠폰 테이블 > 쿠폰 시리얼 테이블 VO
	private String f_coupon_num;			// 쿠폰코드
    private String f_serial;				// 쿠폰 시리얼 코드
    private String userid;				// 쿠폰 시리얼 코드
    private char f_coupon_use;				// 사용여부
    private Timestamp f_use_date;   		// 쿠폰 사용일
    
}
