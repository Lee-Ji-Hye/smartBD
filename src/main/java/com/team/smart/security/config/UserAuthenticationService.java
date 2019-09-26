package com.team.smart.security.config;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;

@Slf4j
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
		Map<String, Object> user = sqlSession.selectOne("UserDAO.selectMember", userid);
		log.debug("로그인 체크 ===> " + user);
		if(user == null) throw new UsernameNotFoundException(userid);
		//user.get("authority") = 로그인한 유저의 권한을 가져옴
		Object auth = user.get("authority");
		
		List<UserGrantedAuthority> authority = new ArrayList<>();
		//권한 확인 후 권한을 부여하는 구문
		//TODO 권한 검사 후 유효한 권한만 넘김 작업처리
		if(auth instanceof List<?>) {
			//권한사이즈가 존재하면 -> authority에 추가
			if(((List<?>) auth).size()!=0) {
				for(Object obj : (ArrayList<?>)auth) {
					if(obj instanceof UserGrantedAuthority) {
						//형변환
						UserGrantedAuthority uauth = 
								(UserGrantedAuthority)obj;
						//권한이 유효한지 확인
						String delimiter = uauth.getAuthority().substring(5,7);
						//log.debug(uauth.getAuthority().substring(5,7));//ROLE_CP_TENANT//ROLE_BD_FOOD
						
						String comp_status = uauth.getComp_status();
						
						String comp_seq = uauth.getComp_seq();//업체코드
						
						Timestamp rt_date1 = uauth.getRt_date1();//임대 시작 날짜 데이터
						Timestamp rt_date2 = uauth.getRt_date2();//임대 끝 날짜 데이터
						
						String b_code = uauth.getB_code();//빌딩코드
						String b_status = uauth.getB_status();//빌딩승인상태코드

						log.debug(uauth.toString());//객체확인 log
						//log.debug(rt_date1.getTime()+"");//객체확인 log
						
						if(delimiter.equals("CP")) {
							//구분자가 사업체일때 rt_code의 계약정보를 확인하고 맞을때만 권한을 넣어준다
							log.debug("CP 권한 줌 .. 0 구분자로 확인");
							log.debug("CP 권한체크 1 null체크");
							Timestamp currentTime = new Timestamp(System.currentTimeMillis());
							currentTime.setDate(currentTime.getDate() + 1);
							if(comp_seq!=null) { // && comp_seq != null
								if(comp_status.equals("1"))
									authority.add(uauth);
								else{
									log.debug("comp_status가 1(승인)이 아님 ");
									authority.add(new UserGrantedAuthority());
								}
							}else if(!(rt_date1 == null) & !(rt_date2 == null)) {
								log.debug("cp 권한체크2 유효기간 체크");
								//log.debug("currentTime.compareTo(rt_date1) >= 0 : " + currentTime.compareTo(rt_date1));
								//log.debug("currentTime.compareTo(rt_date2) < 0 : " + currentTime.compareTo(rt_date2));
//								log.debug("rt_date1 getTime() : " + rt_date1.getTime());
//								log.debug("rt_date2 getTime() : " + rt_date2.getTime());
								

//								log.debug("rt_date1 time () : ");
//								log.debug("rt_date1 time () : " + rt_date1.getTime());
//								log.debug("rt_date1 Year () : " + rt_date1.getYear());
//								log.debug("rt_date1 Month () : " + rt_date1.getMonth());
//								log.debug("rt_date1 Date () : " + rt_date1.getDate());
//								log.debug("rt_date1 hour () : " + rt_date1.getHours());
//								log.debug("rt_date1 min () : " + rt_date1.getMinutes());
//								log.debug("rt_date1 sec () : " + rt_date1.getSeconds());
//								log.debug("rt_date1 nanos () : " + rt_date1.getNanos());
//								
//								log.debug("sys cur time () : ");
//								log.debug("sys cur time () : " + currentTime.getTime());
//								log.debug("sys cur Year () : " + currentTime.getYear());
//								log.debug("sys cur Month () : " + currentTime.getMonth());
//								log.debug("sys cur Date () : " + currentTime.getDate());
//								log.debug("sys cur hour () : " + currentTime.getHours());
//								log.debug("sys cur min () : " + currentTime.getMinutes());
//								log.debug("sys cur sec () : " + currentTime.getSeconds());
//								log.debug("sys cur nanos () : " + currentTime.getNanos());
								//현재시간(currentTime)이 시작시간 (Rt_date1)보다 커서 0이상이 나와야하고, 현재시간(currentTime)이 종료시간 (Rt_date2)보다 작아서 0이하가 나와야한다.
								if(currentTime.compareTo(rt_date1)>=0 && currentTime.compareTo(rt_date2)<0) {
									//이조건이 참일때 유효하므로 권한을 넣음
									authority.add(uauth);	
								}else {
									authority.add(new UserGrantedAuthority());
								}
							}else {
								authority.add(new UserGrantedAuthority());
							}
						}else if(delimiter.equals("BD")) {
							//구분자가 빌딩관련일때 b_code null체크하고 넣어준다.
							log.debug("BD Null만체크해서 권한줌");
							if(b_code != null) {
								//b_status 를 검사해서 1이면 준다. 0이 미승인 1이 승인 
								if(b_status.equals("1"))
									authority.add(uauth);
								else{
									log.debug("B_STATUS가 1(승인)이 아님 ");
									authority.add(new UserGrantedAuthority());
								}
							}else {
								log.debug("B_CODE가 NULL이다");
								authority.add(new UserGrantedAuthority());
							}
							
						}else if(delimiter.equals("SY")) {
							//구분자가 시스템일때 바로넣어준다.
							log.debug("systemmaster 권한 증정");
							authority.add(uauth);
						}else {
							//구분자가 이상한거일때
							log.debug("구분자가 글러먹었따"+uauth.getAuthority());
							authority.add(new UserGrantedAuthority());
						}
					}
				}
			}else {
				authority.add(new UserGrantedAuthority());
			}
		}
		log.debug(authority.toString());
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