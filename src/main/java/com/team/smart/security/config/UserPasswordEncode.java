package com.team.smart.security.config;
import org.springframework.security.crypto.password.PasswordEncoder;
//com.team.smart.utils.UserPasswordEncode
public class UserPasswordEncode implements PasswordEncoder{

	@Override
	public String encode(CharSequence rawPassword) {
		return (String) rawPassword;
	}

	@Override
	public boolean matches(CharSequence rawPassword, String encodedPassword) {
		System.out.println("encodedPassword : "+encodedPassword+"  /  rawPassword:"+rawPassword);
		return rawPassword.equals(encodedPassword);
	}

}
