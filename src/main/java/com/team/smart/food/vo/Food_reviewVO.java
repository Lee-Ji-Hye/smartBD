package com.team.smart.food.vo;


import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @Builder @NoArgsConstructor @AllArgsConstructor
public class Food_reviewVO {

	// 이용후기 테이블 VO
	private String f_seq;			// 이용후기 시퀀스
    private int comp_seq;			// 업체코드
    private String userid;			// 아이디
    private int f_star;				// 평점
    private String f_review;		// 리뷰내용
    private Timestamp f_regidate;	// 등록일
    
}
