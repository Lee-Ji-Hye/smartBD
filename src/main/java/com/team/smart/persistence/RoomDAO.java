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
		
		//매물 삭제
		public int delete(String r_code);
		
		//슬라이드 이미지넣기
		public int slide(RoomVO vo);
		
		//슬라이드용이미지 갯수 구하기
		public int getImagecount(String r_code);
		
		//슬라이드용 이미지 가져오기
		public List<RoomVO> getImage(String r_code);

}
