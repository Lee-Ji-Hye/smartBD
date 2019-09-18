package com.team.smart.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team.smart.vo.AuthReqVO;
import com.team.smart.vo.BuildingVO;
import com.team.smart.vo.CompVO;
import com.team.smart.vo.UserVO;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	SqlSession sqlSession;
	
	//회원 가입
	@Override
	public int insertUser(UserVO vo) {
		return sqlSession.insert("UserDAO.insertUser", vo);
	}

	//업체 등록
	@Override
	public int insertComp(CompVO vo) {
		return sqlSession.insert("UserDAO.insertComp", vo);
	}

	//유저 권한 등록
	@Override
	public int insertAuth(Map<String, String> map) {
		return sqlSession.insert("UserDAO.insertAuth", map);
	}

	@Override
	public int insertBd(BuildingVO vo) {
		return sqlSession.insert("UserDAO.insertBd", vo);
	}

	@Override
	public List<Map<String, String>> bdSearch(String keyword){
		return sqlSession.selectList("UserDAO.bdSearch",keyword);
	}

	@Override
	public List<Map<String, String>> compSearch(String keyword) {
		return sqlSession.selectList("UserDAO.compSearch",keyword);
	}

	@Override
	public int insertAuthReq(AuthReqVO vo) {
		return sqlSession.insert("UserDAO.insertAuthReq", vo);
	}

	
	//정보수정
	
	
    @Override
    public int selectUserId(String userid) {
        return sqlSession.selectOne("UserDAO.selectUserId", userid);
    }

    @Override
    public String selectUserPW(String userpw) {
        return sqlSession.selectOne("UserDAO.selectUserPW", userpw);
    }


    @Override
    public int insertMember(UserVO vo) {
        return sqlSession.insert("UserDAO.insertMember", vo);
    }

    @Override
    public UserVO getUserInfo(String userid) {
        return sqlSession.selectOne("UserDAO.getUserInfo", userid);
    }

    @Override
    public int modifyUserInfo(UserVO vo) {
        return sqlSession.update("UserDAO.modifyUserInfo", vo);
    }

    @Override
    public int modifyUserPwd(String userid, String encodeNewPw) {
        Map<String, String> map = new HashMap<String, String>();
        map.put("userid", userid);
        map.put("encodeNewPw", encodeNewPw);
        return sqlSession.update("UserDAO.modifyUserPwd", map);
    }

    @Override
    public int userAuthChk(String userid) {
        return sqlSession.selectOne("UserDAO.userAuthChk", userid);
    }

    @Override
    public int modifyUserWithdraw(String userid) {
        return sqlSession.delete("UserDAO.modifyUserWithdraw", userid);
    }

	

}
