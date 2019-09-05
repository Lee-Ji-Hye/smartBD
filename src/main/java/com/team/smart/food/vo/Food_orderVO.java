package com.team.smart.food.vo;


import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @Builder @NoArgsConstructor @AllArgsConstructor
public class Food_orderVO {

	// 음식점 주문 테이블 VO
	private String f_ocode;				// 주문코드
    private String comp_seq; 			// 업체코드
    private char f_takeout;				// 테이크아웃
    private int f_takeout_sale;			// 테이크아웃할인
    private String f_status;			// 주문상태
    private String f_hp;				// 핸드폰번호
    private Timestamp f_receive_time;	// 예상수령시간
    private String f_message; 			// 요청사항
    private int f_person_num;			// 인원
    private String userid;				// 아이디
    private String f_serial;			// 시리얼번호
    private Timestamp f_regidate;		// 주문일
    private int f_amount;				// 총결제액
    private String f_pay_type;			// 결제수단
    private int f_refund_price;			// 환불금액
    private int f_rate;					// 수수료
}
