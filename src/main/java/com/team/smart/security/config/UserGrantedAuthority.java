package com.team.smart.security.config;

import java.sql.Timestamp;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.SpringSecurityCoreVersion;
//com.team.smart.security.config.UserGrantedAuthority
public class UserGrantedAuthority implements GrantedAuthority {

	private static final long serialVersionUID = SpringSecurityCoreVersion.SERIAL_VERSION_UID;

	private final String comp_auth;//권한이름
	private final String comp_seq; //업체 정보(업체 코드)
	private final String comp_org; //업체명(업체 명)
	private final String b_code; //건물 정보(건물 코드)
	private final String b_name; //건물이름
	private final String b_status; //건물이름
	private final String r_code; //위치 정보(매물 코드)
	private final Timestamp rt_date1; //건물이름
	private final Timestamp rt_date2; //건물이름
	private final String f_mainimg; //
	private final String comp_hp; //


	public UserGrantedAuthority() {
		this.comp_auth = "ROLE_DEFAULT";
		this.comp_seq = null;
		this.comp_org = null;
		this.b_code = null;
		this.b_name = null;
		this.b_status = null;
		this.r_code = null;
		this.rt_date1 = null;
		this.rt_date2 = null;
		this.f_mainimg = null;
		this.comp_hp = null;
	}
	
	public UserGrantedAuthority(String comp_auth, String comp_seq, String comp_org, String r_code, String b_code, String b_name, String b_status, Timestamp rt_date1, Timestamp rt_date2, String f_mainimg, String comp_hp) {
		this.comp_auth = comp_auth;
		this.comp_seq = comp_seq;
		this.comp_org = comp_org;
		this.r_code = r_code;
		this.b_code = b_code;
		this.b_name = b_name;
		this.b_status = b_status;
		this.rt_date1 = rt_date1;
		this.rt_date2 = rt_date2;
		//this.f_mainimg = f_mainimg;
		this.comp_hp = comp_hp;
		
		//임차인일떄
		
		//업장일떄
		if(comp_auth.contains("CP_TENANT")) {
			this.f_mainimg = f_mainimg;
		}else if(comp_auth.contains("CP")) {
			this.f_mainimg = "http://192.168.219.149/smart/resources/images/food/"+f_mainimg; //학원
		}else {
			this.f_mainimg = f_mainimg;
		}
		
		
	}

	@Override
	public String getAuthority() {
		return comp_auth;
	}
	
	public String getComp_seq() {
		return comp_seq;
	}
	
	public String getComp_org() {
		return comp_org;
	}
	
	public String getR_code() {
		return r_code;
	}

	public String getB_code() {
		return b_code;
	}

	public String getB_name() {
		return b_name;
	}

	public String getB_status() {
		return b_status;
	}
	
	public Timestamp getRt_date1() {
		return rt_date1;
	}
	public Timestamp getRt_date2() {
		return rt_date2;
	}

	@Override
	public boolean equals(Object obj) {
		if (obj instanceof UserGrantedAuthority) {
			return this.toString().equals(((UserGrantedAuthority)obj).toString());
		}
		return false;
	}

	@Override
	public int hashCode() {
		return this.comp_auth.hashCode();
	}

	@Override
	public String toString() {
		return "[comp_auth=" + comp_auth + ", comp_seq=" + comp_seq + ", comp_org=" + comp_org
				+ ", b_code=" + b_code + ", b_name=" + b_name + ", b_status=" + b_status + ", r_code=" + r_code
				+ ", rt_date1=" + rt_date1 + ", rt_date2=" + rt_date2 + "]";
	}

	public String getF_mainimg() {
		return f_mainimg;
	}

	public String getComp_hp() {
		return comp_hp;
	}
	
}
