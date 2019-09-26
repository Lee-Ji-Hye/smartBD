package com.team.smart.food.vo;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @Builder @NoArgsConstructor @AllArgsConstructor
public class Food_orde_menuVO {
	
	private String f_odetail_code;		// 주문상세코드
	private String f_name;				// 메뉴명
    private int f_cnt;					// 주문 수량
    private int f_price;				// 가격
    private String f_message;			// 요청사항

}
