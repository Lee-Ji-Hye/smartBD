package com.team.smart.security.config;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class UserAuthenticationService implements UserDetailsService {

	SqlSessionTemplate sqlSession;
	
	//xml sqlSesseion 생성자 콩 주입
	public UserAuthenticationService(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	//loadUserByUsername() => 유저를 찾고 유저권한을 가져오는 구간.(인증로직)
	//UserDetailsService의 loadUserByUsername()를 구현한 부분이며 
	//로그인 성공시 ->  UserLoginSuccessHandler 로 이동 
	//실패시 -> UserLoginFailureHandler로 이동
	@Override
	public UserDetails loadUserByUsername(String userid) throws UsernameNotFoundException {
		Map<String, Object> user = sqlSession.selectOne("com.team.smart.persistance.MemberDAO.selectMember", userid);
		System.out.println("로그인 체크 ===> " + user);
		if(user == null) throw new UsernameNotFoundException(userid);
		//user.get("authority") = 로그인한 유저의 권한을 가져옴
		Object auth = user.get("authority");
		
		List<UserGrantedAuthority> authority = new ArrayList<>();
		//권한 확인 후 권한을 부여하는 구문
		if(auth instanceof List<?>) {
			//권한사이즈가 존재하면 -> authority에 추가
			if(((List<?>) auth).size()!=0) {
				for(Object obj : (ArrayList<?>)auth) {
					if(obj instanceof UserGrantedAuthority) {
						authority.add((UserGrantedAuthority)obj);
					}
				}
			}else {
				authority.add(new UserGrantedAuthority());
			}
		}
		
		//(!true) ==> (disabled = !enabled)
		//회원 정보를 리턴
		return User.builder().username(user.get("username").toString())
			.password(user.get("password").toString())
			.authorities(authority)
			.accountExpired(!true)
			.accountLocked(!true)
			.credentialsExpired(!true)
			.disabled(!true)
			.build();
	}
}