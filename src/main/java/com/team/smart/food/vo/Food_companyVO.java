package com.team.smart.food.vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @Builder @NoArgsConstructor @AllArgsConstructor
public class Food_companyVO {
	
	// 음식점 소개 VO
	private int f_seq;			// 시퀀스
	private int comp_seq;		// 업체코드
	private String long_desc;	// 긴줄 소개
	private String short_desc;	// 짧은줄 소개
	private String f_category;	// 카테고리
	private String f_mainimg;	// 메인 이미지
	private char is_choise;		// 업장소개 
	
	// 회원 > 업체 테이블 
    private String comp_section;		// 사업자구분(개인사업자,법인사업자)
    private String comp_org;			// 법인명(단체명 혹은 상호명)
    private String comp_branch; 		// 사업장소재지
    private String comp_master;			// 본점소재지
    private String comp_business;		// 업태
    private String comp_category;		// 종목
    private String comp_hp;				// 대표전화번호
    private Timestamp comp_regidate;	// 시스템등록일
    private String comp_status;			// 승인상태 
	
	
	@Override
	public String toString() {
		return "food_company_vo [f_seq=" + f_seq + ", comp_seq=" + comp_seq + ", long_dese=" + long_desc
				+ ", short_desc=" + short_desc + ", f_category=" + f_category + ", f_mainimg=" + f_mainimg
				+ ", is_choise=" + is_choise + "]";
	}
	
}
