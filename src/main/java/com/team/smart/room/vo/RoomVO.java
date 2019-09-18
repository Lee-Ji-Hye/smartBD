package com.team.smart.room.vo;


import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
public class RoomVO {
	
	private String r_code="";		//매물코드
	private String b_code="";		//건물코드
	private String r_img="";		//사진
	private String r_name;		//매물명
	private String r_type;		//거래타입(전세/월세)
	private int r_price;		//매물가격
	private int r_deposit;		//보증금
	private int r_premium;		//권리금(상가만)
	private int r_ofer_fee;		//관리비
	private int r_floor;		//층수
	private int r_area;			//면적
	private String r_indi_space;//독립공간(회의실,연구소 등)유무
	private String r_able_date;	//입주가능일
	private String r_toilet;	//화장실
	private String r_desc;		//상세설명
	private String r_pmemo;		//비공개메모(선택)
	private Timestamp regidate;	//등록일
	private String r_delete;	//삭제 여부
	private String userid;		//관리자아이디
	private String r_kind;		//매물종류
	private String rt_date1;	//입주일,기타등등날
	private String rt_date2;	//만기일
	private String rt_deposit;	//보증금현황
	private String rt_mobile;	//폰번호
	private String rt_code;		//계약코드
	private int rt_pay;			//납부금액
	private String rt_type;		//납부종류
	
	
	public void setR_price(int r_price) {
		r_price = r_price * 200000;
		this.r_price = r_price;
	}
	
	public void setR_deposit(int r_deposit) {
		r_deposit = r_deposit * 200000;
		this.r_deposit = r_deposit;
	}
	
	public void setR_premium(int r_premium) {
		r_premium = r_premium * 10000;
		this.r_premium = r_premium;
	}
	
	public void setR_ofer_fee(int r_ofer_fee) {
		r_ofer_fee = r_ofer_fee * 10000;
		this.r_ofer_fee = r_ofer_fee;
	}
	
	
	

}
