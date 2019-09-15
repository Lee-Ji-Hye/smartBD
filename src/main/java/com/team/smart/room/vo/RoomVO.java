package com.team.smart.room.vo;


import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
public class RoomVO {
	
	String r_code="";		//매물코드
	String b_code="";		//건물코드
	String r_img="";		//사진
	String r_name;		//매물명
	String r_type;		//거래타입(전세/월세)
	int r_price;		//매물가격
	int r_deposit;		//보증금
	int r_premium;		//권리금(상가만)
	int r_ofer_fee;		//관리비
	int r_floor;		//층수
	int r_area;			//면적
	String r_indi_space;//독립공간(회의실,연구소 등)유무
	String r_able_date;	//입주가능일
	String r_toilet;	//화장실
	String r_desc;		//상세설명
	String r_pmemo;		//비공개메모(선택)
	Timestamp regidate;	//등록일
	String r_delete;	//삭제 여부
	String userid;		//관리자아이디
	String r_kind;		//매물종류
	String rt_date1;	//입주일
	String rt_date2;	//만기일
	String rt_deposit;	//보증금현황
	String rt_mobile;	//폰번호
	String rt_code;		//계약코드
	int rt_pay;		//납부금액
	String rt_type;		//납부종류
	
	

}
