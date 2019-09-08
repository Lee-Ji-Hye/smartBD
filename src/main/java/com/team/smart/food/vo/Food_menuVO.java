package com.team.smart.food.vo;


import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @Builder @NoArgsConstructor @AllArgsConstructor
public class Food_menuVO {

	// 음식점 메뉴 테이블 VO
	private String f_code;			// 메뉴코드
    private String comp_seq;		// 업체코드
    private String f_type; 			// 메인, 사이드 구분(main, side)
    private String f_name;			// 메뉴명
    private int f_price;			// 메뉴가격
    private char f_takeout;			// 테이크아웃 유무(Y,N)
    private int f_takeout_sale;		// 테이크아웃 할인가격
    private String f_img;			// 이미지
    private String userid;			// 등록자 아이디
	private String f_icon; 			// 메뉴아이콘(NEW, HOT, BEST 등)
    private Timestamp f_regidate;	// 등록일
}
