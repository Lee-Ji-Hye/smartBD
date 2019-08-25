package com.team.smart.security.config;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.SpringSecurityCoreVersion;
//com.team.smart.security.config.UserGrantedAuthority
public class UserGrantedAuthority implements GrantedAuthority {

	private static final long serialVersionUID = SpringSecurityCoreVersion.SERIAL_VERSION_UID;

	private final String comp_auth;//권한이름
	private final String comp_seq; //업체 정보(업체 코드)
	private final String comp_org; //업체명(업체 명)
	private final String r_code; //위치 정보(매물 코드)
	private final String b_code; //건물 정보(건물 코드)
	

	public UserGrantedAuthority() {
		this.comp_auth = "ROLE_DEFAULT";
		this.comp_seq = null;
		this.comp_org = null;
		this.r_code = null;
		this.b_code = null;
	}
	public UserGrantedAuthority(String comp_auth, String comp_seq, String comp_org, String r_code, String b_code) {
		this.comp_auth = comp_auth;
		this.comp_seq = comp_seq;
		this.comp_org = comp_org;
		this.r_code = r_code;
		this.b_code = b_code;
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
		return "auth=" + comp_auth + ",comp_seq=" + comp_seq + ",comp_org=" + comp_org
				+ ",r_code=" + r_code + ",b_code=" + b_code;
	}

}
