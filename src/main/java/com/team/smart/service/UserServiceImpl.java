package com.team.smart.service;


import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.team.smart.persistence.UserDAO;
import com.team.smart.utils.Functions;
import com.team.smart.vo.AuthReqVO;
import com.team.smart.vo.BuildingVO;
import com.team.smart.vo.CompVO;
import com.team.smart.vo.UserVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserDAO dao;

	@Autowired
	PasswordEncoder pwEncoder;
	
	@Autowired
	Functions funs;
	
	
	//회원가입 
	@Override
	public int insertUser(HttpServletRequest req, Model model) {
		//TODO 회원가입 null chk, db 중복 chk
		UserVO vo = UserVO.builder()
				.userid(req.getParameter("userid"))//아이디
				.userpw(pwEncoder.encode(req.getParameter("userpw")))//비밀번호
				.name(req.getParameter("name"))//이름
				.email(req.getParameter("email"))//이메일
				.hp(req.getParameter("hp"))//핸드폰번호
				.build();
		
		log.debug("signUpUser : " + vo);
		
		int cnt = dao.insertUser(vo);
		if(cnt == 0) model.addAttribute("vo", vo);
		return cnt;
	}
	
	//업체 등록
	@Override
	public int insertComp(HttpServletRequest req, Model model) {
		//TODO 업체등록 필터링 ..?
		String comp_seq = funs.mkUniquecode("comp_seq", "user_company_tbl");
		CompVO vo = CompVO.builder()
				.comp_seq(comp_seq)
				.comp_section(req.getParameter("comp_section"))// 사업자구분(개인사업자,법인사업자)
				.comp_org(req.getParameter("comp_org"))// 법인명(단체명 혹은 상호명)
				.comp_bn(req.getParameter("comp_bn"))//사업자번호
				.comp_owner(req.getParameter("comp_owner"))//대표자
				.comp_branch(req.getParameter("comp_branch"))// 사업장소재지
				.comp_master(req.getParameter("comp_master"))// 본점소재지
				.comp_business(req.getParameter("comp_business"))// 업태
				.comp_category(req.getParameter("comp_category"))// 종목
				.comp_hp(req.getParameter("comp_hp"))// 대표전화번호
				.comp_status("0")// 승인상태 
				.build();
		int count = 0;
		count += dao.insertComp(vo);
		//TODO 아이디, 업체코드를 넣은 권한 생성 CP_TENATE -> 계약코드가 없기때문에 권한은 못가짐..
		//
		//id, 업체코드, 권한명, insert
		HashMap<String,String> map = new HashMap<>();
		map.put("userid", SecurityContextHolder.getContext().getAuthentication().getName());
		map.put("comp_auth", "ROLE_CP_TENANT");
		map.put("comp_seq", comp_seq);
		
		count += dao.insertAuth(map);
		
		log.debug("count = "+count);
		return count;
	}

	@Override
	public int bdmnInsert(HttpServletRequest req, Model model) {
		//TODO 업체등록 필터링 ..?
		String b_code = funs.mkUniquecode("b_code", "building_tbl");
		
		BuildingVO vo = BuildingVO.builder()
						.b_code(b_code)
						.b_area1(req.getParameter("b_area1"))//지도에서가져와야댐
						.b_area2(req.getParameter("b_area2"))//지도에서가져와야댐
						.b_address(req.getParameter("b_address"))//지도에서가져와야댐
						.b_name(req.getParameter("b_name"))
						.b_floor(Integer.parseInt(req.getParameter("b_floor")))
						.b_year(req.getParameter("b_year"))
						
						.b_unique(req.getParameter("b_unique"))
						.b_owner(req.getParameter("b_owner"))
						.b_regnum(req.getParameter("b_regnum"))
						.b_landarea(req.getParameter("b_landarea"))
						.b_buildarea(req.getParameter("b_buildarea"))
						.b_buildscale(req.getParameter("b_buildscale"))
						.b_status("0")
						
						.b_park(req.getParameter("b_park"))
						.b_elev(req.getParameter("b_elev"))
						.b_heat(req.getParameter("b_heat"))
						.b_traffic(req.getParameter("b_traffic"))
						.b_lat(Double.parseDouble(req.getParameter("b_lat")))//지도에서 가져와야댐
						.b_lon(Double.parseDouble(req.getParameter("b_lon")))//지도에서가져와야댐
						.userid(SecurityContextHolder.getContext().getAuthentication().getName())
						.build();
		
		int count = 0;
		count += dao.insertBd(vo);
		//TODO 아이디, 업체코드를 넣은 권한 생성 CP_TENATE -> 계약코드가 없기때문에 권한은 못가짐..
		//
		//id, 업체코드, 권한명, insert 이거 승인되면 넣을예정
		HashMap<String,String> map = new HashMap<>();
		map.put("userid", SecurityContextHolder.getContext().getAuthentication().getName());
		map.put("comp_auth", "ROLE_BD_ADMIN");
		map.put("b_code", b_code);
		
		count += dao.insertAuth(map);
		
		log.debug("count = "+count);
		return count;
	}

	@Override
	public List<Map<String,String>> search(String keyword, String category) {

		if(category.equals("comp")) {
			return dao.compSearch(keyword);
		}else if(category.equals("bd")) {
			return dao.bdSearch(keyword);
		}else {
			return null;
		}
		
	}

	@Override
	public int insertauth(HttpServletRequest req, Model model) {
		String name = req.getParameter("name");
		String req_key = req.getParameter("req_key");
		String req_auth = req.getParameter("req_auth");
		String req_division = req.getParameter("req_division");
		
		log.debug(name+"  "+req_key+"  "+req_auth+"  "+req_division);
		
		AuthReqVO vo = AuthReqVO.builder()
					.req_key(req_key)
					.req_auth(req_auth)
					.req_division(req_division)
					.userid(SecurityContextHolder.getContext().getAuthentication().getName())
					.build();
		//Map<String,String> map = new HashMap<>();
		//map.put("userid", SecurityContextHolder.getContext().getAuthentication().getName());
		//map.put("req_key",req_key);
		//map.put("req_auth",req_auth);
		//map.put("req_division",req_division);
		return dao.insertAuthReq(vo);
		
	}
	

	
	public void getUserInfo(HttpServletRequest req, Model model) {
		//유저정보가져옴
		model.addAttribute("userVO", dao.getUserInfo(SecurityContextHolder.getContext().getAuthentication().getName()));
	}
	
	
    @Override
    public Map<String, Object> SignIn(UserVO vo, HttpServletRequest req, Model model) {
        int responseCode = 499; //로그인 실패
        Map<String, Object> map = new HashMap<String, Object>();
        UserVO user = null;

        if(vo == null) {
            map.put("responseCode", 401);//파라미터 부재
            map.put("user", null);
            return map;
        }

        String userid = (vo.getUserid() == null)? "" : vo.getUserid(); // null or "" 두가지의 빈값을 ""로ㅗ만 사용하겠다
        String userpw = (vo.getUserpw() == null)? "" : vo.getUserpw();

        //필수값 체크
        if(userid.equals("")) {
            map.put("responseCode", 402);//아이디 부재
            map.put("user", null);
            return map;
        } else if(userpw.equals("")) {
            map.put("responseCode", 403);//비밀번호 부재
            map.put("user", null);
            return map;
        }

        //비밀번호 불러오기
        String encode_pw = dao.selectUserPW(userid);

        if(encode_pw == null || encode_pw.equals("")) {
            map.put("responseCode", 404);//존재하지 않는아이디
            map.put("user", null);
            return map;
        }

        //비밀번호 비교
        //pwEncoderr는 매번 새로운 암호코드를 생성하기 떄문에 비밀번호를 불러와서 비교해야함.
        boolean is_match =  pwEncoder.matches(userpw, encode_pw);

        if(!is_match) {
            map.put("responseCode", 405);//비밀번호 불일치
            map.put("user", null);
            return map;
        }

        user = dao.getUserInfo(userid);

        //유저정보는 1이나 안드에서 받는 형식에 맞춰야해서 유저정보를 List에 담아 보냄
        //그냥 vo만 보내면 안드 형식에 안맞아서 앱에서 에러남
        List<UserVO> list = new ArrayList<UserVO>();
        list.add(user);

        //로그인 성공!
        map.put("responseCode", 400);
        map.put("user", list);

        return map;
    }

    @Override
    public Map<String, Object> modifyUserInfo(HttpServletRequest req, Model model) {
        int responseCode = 0;

		UserVO vo = UserVO.builder()
				.userid(SecurityContextHolder.getContext().getAuthentication().getName())//아이디
				.userpw(req.getParameter("userpw"))//비밀번호
				.name(req.getParameter("name"))//이름
				.email(req.getParameter("email"))//이메일
				.hp(req.getParameter("hp"))//핸드폰번호
				.build();
		
        
        Map<String, Object> map = new HashMap<String, Object>();

        if(vo == null) {
            return null;
        }

        //존재하는 아이디 인지 확인
        String encode_pw = dao.selectUserPW(SecurityContextHolder.getContext().getAuthentication().getName());

        if(encode_pw == null || encode_pw.equals("")) {
            map.put("responseCode", "404");//존재하지 않는아이디
            return map;
        }

        //비밀번호 비교
        boolean is_match =  pwEncoder.matches(vo.getUserpw(), encode_pw);

        if(!is_match) {
            map.put("responseCode", "405");//비밀번호 불일치
            return map;
        }

        int result = dao.modifyUserInfo(vo);

        if(result > 0) {
            map.put("responseCode", "200");
            map.put("responseMsg", "수정 성공");
        } else {
            map.put("responseCode", "999");
            map.put("responseMsg", "수정 실패");
        }

        return map;
    }

    @Override
    public Map<String, Object> modifyUserPwd(HttpServletRequest req, Model model) {
    	

//		UserVO vo = UserVO.builder()
//				.userid(req.getParameter("userid"))//아이디
//				.userpw(pwEncoder.encode(req.getParameter("userpw")))//비밀번호
//				.name(req.getParameter("name"))//이름
//				.email(req.getParameter("email"))//이메일
//				.hp(req.getParameter("hp"))//핸드폰번호
//				.build();
//		
    	
        Map<String, Object> map = new HashMap<String, Object>();


        String userid = SecurityContextHolder.getContext().getAuthentication().getName();
        String currentpw = req.getParameter("userpw");
        String userpw = req.getParameter("newuserpw");

        //존재하는 아이디 인지 확인
        String encode_pw = dao.selectUserPW(userid);


        if(!pwEncoder.matches(currentpw, encode_pw)) {
            map.put("responseCode", "405");//비밀번호 불일치
            return map;
        }

        String encodeNewPw = pwEncoder.encode(userpw);

        //비밀번호 변경
        int result = dao.modifyUserPwd(userid, encodeNewPw);

        if(result > 0) {
            map.put("responseCode", "200");
            map.put("responseMsg", "수정 성공");
        } else {
            map.put("responseCode", "999");
            map.put("responseMsg", "수정 실패");
        }

        return map;
    }

    @Override
    public Map<String, Object> modifyUserWithdraw(HttpServletRequest req, Model model) {
        int responseCode = 0;
        Map<String, Object> map = new HashMap<String, Object>();
        

        String userid = SecurityContextHolder.getContext().getAuthentication().getName();
        String userpw = req.getParameter("userpw");

        //존재하는 아이디 인지 확인
        String encode_pw = dao.selectUserPW(userid);

        if(encode_pw == null || encode_pw.equals("")) {
            map.put("responseCode", "404");//존재하지 않는아이디
            return map;
        }

        if(!pwEncoder.matches(userpw, encode_pw)) {
            map.put("responseCode", "405");//비밀번호 불일치
            return map;
        }

        //관리자인지 확인
        int is_auth = dao.userAuthChk(userid);
        if(is_auth > 0) {
            map.put("responseCode", "411");//관리자는 권한 강등 후 탈퇴할 수 있습니다.
            return map;
        }

        //회원 탈퇴
        int result = dao.modifyUserWithdraw(userid);
        if(result > 0) {
            map.put("responseCode", "410");
        } else {
            map.put("responseCode", "419");
        }

        return map;
    }

	

}
