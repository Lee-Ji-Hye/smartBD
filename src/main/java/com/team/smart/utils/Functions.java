package com.team.smart.utils;

import org.mybatis.spring.SqlSessionTemplate;

import com.team.smart.persistence.FoodDAO;

public class Functions {
	
	private static Functions instance = new Functions();
	
	
	public static Functions getInstance() {
		if(instance == null) {
			instance = new Functions();
		}
		return instance;
	}
	
	private Functions() { }//생성자 잠금
	
	//f_code 생성 (ex:FD000049)//R000000
	public String mkRcode(FoodDAO f_dao) {
		String type = "R";
		/*
		 * 이곳에서 db에 유니크 코드 가져오기
		 */
		int cnt = f_dao.getUniqIndex(); //R005003
		
		System.out.println("라스트 코드 수 : " + cnt);
		
		int length = (int)(Math.log10(cnt)+1); //6
		System.out.println("숫자 자릿수 : " + length);
		if(length < 6) {
			int size = 6 - length;
			for(int j = 0; j < size; j++) {
				System.out.println();
				type += "0"; //코드6자리 맞추기
			}
		}
		
		//select count(*) from room_tbl where r_code= 'R005003'
		
		return type+cnt;
	}
	
}
