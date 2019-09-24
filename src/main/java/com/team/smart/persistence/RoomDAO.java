package com.team.smart.persistence;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.team.smart.room.vo.RoomVO;

@Repository
public interface RoomDAO {
	
		//매물상세 페이지
		public RoomVO getDetail(String r_code);
		
		//매물코드 생성
		public int getUniqRoomIndex();
		
		//매물 업로드
		public int roomupload(RoomVO vo);
		
		//매물 갯수 구하기
		public int getArticleCnt();
		
		//매물 목록 조회
		public List<RoomVO> getArticleList(Map<String, Object> map);
		
		//매물 수정
		public int update(RoomVO vo);
		
		//매물 비공개로 전환
		public int delete(String r_code);
		
		//매물 공개로 전환
		public int reload(String r_code);
		
		//슬라이드 이미지넣기
		public int slide(RoomVO vo);
		
		//슬라이드용이미지 갯수 구하기
		public int getImagecount(String r_code);
		
		//슬라이드용 이미지 가져오기
		public List<RoomVO> getImage(String r_code);
		
		//시가져오기
		public List<String> getSi();
		
		//구가져오기
		public List<String> getGu(String si);
		
		//계약 총 글 수
		public int getContractCnt(Map<String, Object> map1);
		
		//계약리스트 가져오기
		public List<RoomVO> getContractList(Map<String,Object> map);
		
		//계약 상세페이지
		public RoomVO getContractDetail(String rt_code);
		
		//납부리스트 가져오기
		public List<RoomVO> getpaylist();
		
		//납부상세 페이지
		public List<RoomVO> getpaydetail(String rt_code);
		
		//결산 월별 월세총합 getmonthtotal
		public List<Map<String, Object>> getmonthtotal();
		
		//임차인의 id를 이용한 해당 납부 목록 가져오기
		public List<RoomVO> getmemberpaylist(String memberid);
		
		//병권 도우미~~~~(겹치지 말라고 넣은거임 나중에 삭제하셈)
		//매물 삭제
		public int roomDelete(String r_codes); //'R00001','R00001'이런식으로 들어옴

}
