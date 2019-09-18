package com.team.smart.persistence;

import java.util.List;
import java.util.Map;

import com.team.smart.vo.AuthReqVO;
import com.team.smart.vo.BuildingVO;
import com.team.smart.vo.CompVO;
import com.team.smart.vo.UserVO;

public interface UserDAO {
	//회원가입
	public int insertUser(UserVO user);

	//업체등록
	public int insertComp(CompVO vo);
	
	//권한등록
	public int insertAuth(Map<String, String> map);
	
	//빌딩등록
	public int insertBd(BuildingVO vo);

	//빌딩 검색
	public List<Map<String,String>> bdSearch(String keyword);

	//식당 검색
	public List<Map<String,String>> compSearch(String keyword);
	
	//요청권한
	public int insertAuthReq(AuthReqVO vo);
	
	
	
	
	//회원정보수정

    //존재하는 아이디인지 확인
    public int selectUserId(String userid);
    //비밀번호 불러오기
    public String selectUserPW(String userpw);

    //회원가입
    public int insertMember(UserVO vo);

    //회원정보 가져오기
    public UserVO getUserInfo(String vo);

    //회원 정보 수정
    public int modifyUserInfo(UserVO vo);

    //회원 비밀번호 변경
    public int modifyUserPwd(String userid, String encodeNewPw);

    //회원 권환 체크
    public int userAuthChk(String userid);

    //회원 탈퇴
    public int modifyUserWithdraw(String userid);
	
	
	
}
