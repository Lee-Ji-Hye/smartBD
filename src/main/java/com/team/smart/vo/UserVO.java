package com.team.smart.vo;

import lombok.Builder;
import lombok.Data;

/**
 * 
 * @author 정승훈
 * @회원정보 VO
 * @Lombok 사용
 *
	userid          VARCHAR2(50)     NOT NULL,  --아이디
	userpw          VARCHAR2(200)    NOT NULL,  --비밀번호
	name            VARCHAR2(20)    ,           --이름
	email           VARCHAR2(100)    ,           --이메일
	hp              VARCHAR2(50)    ,           --핸드폰번호
 * 
 */
@Data	@Builder
public class UserVO {
	private String userid;
	private String userpw;
	private String name;
	private String email;
	private String hp;
}
