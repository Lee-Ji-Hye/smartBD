package com.team.smart.room.vo;

import java.sql.Timestamp;
import lombok.Data;

@Data
public class RoomVO {
	
	private String r_code="";	//매물코드
	private String b_code="";	//건물코드
	private String r_img="";	//사진
	private String r_name;		//매물명
	private String r_type;		//거래타입(전세/월세)
	private int r_price;		//매물가격
	private int r_deposit;		//보증금(계약시 이더로 들어감)
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
	private String rt_email;	//이메일
	private String rt_code;		//계약코드
	private int rt_pay;			//납부금액
	private String rt_type;		//납부종류
	private String name;		//이름
	private String hp;			//폰번호
	private String email;		//이메일
	private String b_area1;		//건물 주소
	private String b_area2;		//건물 주소
	private String b_year;		//준공년도
	private String b_landarea;	//대지면적
	private String b_buildarea;	//건축면적
	private String b_buildscale;//건축규모
	private String b_address;	//건물 주소
	
	private int r_blockcode;	//블록체인 코드
	private String rt_name;		//임차인 이름
	private String rt_businessNum;//임차인 주민번호
	private String rt_address;	//임차인 지갑주소
	
}