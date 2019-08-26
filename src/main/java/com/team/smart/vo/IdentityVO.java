package com.team.smart.vo;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data @AllArgsConstructor
public class IdentityVO {
	private  String code; //업체명(업체 명)
	private  String name; //위치 정보(매물 코드)
	
	@Override
	public String toString() {
		return code;
	}
	
	@Override
	public boolean equals(Object obj) {
		return code.equals(obj.toString());
	}
}
