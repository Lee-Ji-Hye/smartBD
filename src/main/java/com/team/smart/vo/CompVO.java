package com.team.smart.vo;

import java.math.BigDecimal;
import java.security.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @Builder @AllArgsConstructor @NoArgsConstructor
public class CompVO {
	/*
	 * 
	 *     
	comp_seq            NUMBER(7)    NOT NULL,   --업체코드(seq로 pk)
    comp_section        VARCHAR(20)         NOT NULL,   --사업자구분(개인사업자,법인사업자)
    comp_org            VARCHAR2(100)    NOT NULL,   --법인명(단체명 혹은 상호명)
    comp_branch         VARCHAR2(200),              --사업장소재지
    comp_master         VARCHAR2(200),              --본점소재지
    comp_business       VARCHAR2(50),              --업태
    comp_category       VARCHAR2(50),              --종목
    comp_hp             VARCHAR2(50),               --대표전화번호
    comp_regidate       TIMESTAMP DEFAULT sysdate,  --시스템등록일
    comp_status         VARCHAR(20),        --승인상태
    
	 */
	// 회원 > 업체 테이블 
	private String comp_seq;
    private String comp_section;		// 사업자구분(개인사업자,법인사업자)
    private String comp_org;			// 법인명(단체명 혹은 상호명)
    private String comp_bn;				// 사업자번호
    private String comp_owner;  		// 대표이사이름
    private String comp_branch; 		// 사업장소재지
    private String comp_master;			// 본점소재지
    private String comp_business;		// 업태
    private String comp_category;		// 종목
    private String comp_hp;				// 대표전화번호
    private Timestamp comp_regidate;	// 시스템등록일
    private String comp_status;			// 승인상태 
	
	
}
