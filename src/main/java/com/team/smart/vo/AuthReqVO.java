package com.team.smart.vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @Builder @AllArgsConstructor @NoArgsConstructor
public class AuthReqVO {
	//userid, name, hp, email, req_key, req_auth, req_date, req_status, confirm_date
	private String userid;
	
	private String name;
	private String hp;
	private String email;
	
	private String req_key;
	private String req_auth;
	private String req_division;
	private String req_status;
	private Timestamp req_date;
	private Timestamp confirm_date;
}
