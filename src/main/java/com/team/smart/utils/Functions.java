package com.team.smart.utils;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.team.smart.persistence.CodeDAO;

@Component
public class Functions {
	
	@Autowired
	CodeDAO c_dao;
	
	/**
	 * @author jihye
	 * 유니크한 코드 생성  EX)FD000049
	 * 매물코드, 쿠폰코드 이거로 다 가능
	 * @param codeColumn : 코드 컬럼명
	 * @param tblName    : 대상 테이블
	 * @return int
	 */
	//반드시 null이 리턴되면 안됩니다.
	public String mkUniquecode(String codeColumn, String tblName) {
		String strCode = "";
		final int length = 6;
		if(codeColumn.equals("f_ocode")) {
			strCode = "FD";//FD
			               //FD00001
		} else if(codeColumn.equals("parking_code")) {
			strCode = "PK";//PK000001

		} else if(codeColumn.equals("f_coupon_num")) {
			strCode = "CP";//PK000001
		} else if(codeColumn.equals("comp_seq")) {
			strCode = "CM";//PK000001
		} else {
			return null;
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("column", codeColumn); //f_ocode, r_code, p_code,,.
		map.put("tblName", tblName);
	
		int lastIdx = c_dao.getLastIdx(map);
		
		int diffLength = (int)(Math.log10(lastIdx)+1); //숫자의 길이를 구함 -cf) 184 => 3
		
		if(diffLength < length) {
			int diffcnt = length - diffLength;
			for(int j = 0; j < diffcnt; j++) {
				strCode += "0"; //코드 자리 맞추기
			}
		}
		
		//System.out.println("NEW 코드 : " + strCode + lastIdx);
		return strCode + lastIdx;
	}
	
}