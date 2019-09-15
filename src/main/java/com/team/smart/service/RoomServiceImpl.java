package com.team.smart.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.team.smart.persistence.RoomDAO;
import com.team.smart.room.vo.RoomVO;
import com.team.smart.room.vo.TotalVO;
import com.team.smart.utils.Functions;
import com.team.smart.utils.JsonUtil;


@Service
public class RoomServiceImpl implements RoomService{
	
	@Autowired
	RoomDAO dao;

	@Autowired
	Functions fn;
	
	@Autowired
	JsonUtil jsonutil;
	
	//매물 상세페이지
	@Override
	public void roomDetail(HttpServletRequest req, Model model) {
		
		String r_code = req.getParameter("r_code");
		RoomVO vo = dao.getDetail(r_code);
		
		
		
		model.addAttribute("r_code",r_code);
		
		model.addAttribute("dto",vo);
		
	}

	//매물 등록
	@Override
	public void upload(HttpServletRequest req, Model model) {
		String r_code;
		
		//화면에서 입력한 값들 받아오기
		
		String mode = req.getParameter("mode");
		String r_kind = req.getParameter("r_kind");								//매물 종류
		String r_type = req.getParameter("r_type");								//거래 타입
		int r_price = Integer.parseInt(req.getParameter("r_price"));			//월세/전세 금액
		int r_premium = Integer.parseInt(req.getParameter("r_premium"));		//권리금(상가만)
		int r_deposit = Integer.parseInt(req.getParameter("r_deposit"));		//보증금
		int r_area = Integer.parseInt(req.getParameter("r_area"));				//면적
		String r_name = req.getParameter("r_name");								//매물명(호 수 ex.104호)
		String r_toilet = req.getParameter("r_toilet");							//화장실
		int r_floor = Integer.parseInt(req.getParameter("r_floor"));			//층수
		String r_able_date = req.getParameter("r_able_date");					//입주가능일
		String r_indi_space = req.getParameter("r_indi_space");					//독립공간(회의실,연구소 등)유무
		int r_ofer_fee = Integer.parseInt(req.getParameter("r_ofer_fee"));		//관리비
		String r_pmemo = req.getParameter("r_pmemo");							//비공개메모(선택)
		String r_desc = req.getParameter("r_desc");								//상세설명
		//TIMESTAMP regidate;														//등록일
		String r_img = "";														//사진
		//매물코드생성	
		if(mode.equals("insert")) {
			r_code = fn.mkUniquecode("r_code", "room_tbl");										//매물코드
		}else {
			r_code = req.getParameter("r_code");
		}
		
		String b_code = "B000000";												//건물코드
		String r_delete = "0";													//삭제 여부
		String userid = "id9";													//관리자아이디
		
		System.out.println("r_type :"+r_type);
		
		RoomVO vo = new RoomVO();
		vo.setR_kind(r_kind);
		vo.setR_type(r_type);
		vo.setR_price(r_price);
		vo.setR_premium(r_premium);
		vo.setR_deposit(r_deposit);
		vo.setR_area(r_area);
		vo.setR_name(r_name);
		vo.setR_toilet(r_toilet);
		vo.setR_floor(r_floor);
		vo.setR_able_date(r_able_date);
		vo.setR_indi_space(r_indi_space);
		vo.setR_ofer_fee(r_ofer_fee);
		vo.setR_pmemo(r_pmemo);
		vo.setR_desc(r_desc);
		vo.setR_img(r_img);
		vo.setR_code(r_code);
		vo.setB_code(b_code);
		vo.setR_delete(r_delete);
		vo.setUserid(userid);
		
		if(mode.equals("insert")) {
		
		int insertCnt = dao.roomupload(vo);
		System.out.println("등록 :" + insertCnt);
		
		
		req.setAttribute("cnt", insertCnt);
		}else if(mode.equals("edit")) {
			
			int updateCnt = dao.update(vo);
			System.out.println("수정 :" + updateCnt);
			
			req.setAttribute("cnt", updateCnt);
		}
		
	}
	
	//매물 리스트
	@Override
	public void list(HttpServletRequest req, Model model) {
		// 페이징 처리
		int pageSize = 10;		// 한 페이지당 출력할 글 갯수
		int pageBlock = 3;		// 한 블럭당 페이지 갯수
		int bcnt = 0;			// 글 갯수
		int start = 0;			// 현재페이지 시작 글번호
		int end = 0;			// 현재페이지 마지막 글번호
		int number = 0;			// 출력용 글번호
		String pageNum = "";	// 페이지 번호
		int currentPage = 0;	// 현재 페이지
		int pageCount = 0;		// 페이지 갯수
		int startPage = 0;		// 시작 페이지
		int endPage = 0;		// 마지막 페이지
		
		//글갯수 구하기
		bcnt = dao.getArticleCnt();
		System.out.println("bcnt = " + bcnt);	// 먼저 테이블에 30건 insert
		pageNum = req.getParameter("pageNum");
		if(pageNum == null) {
			pageNum = "1"; //첫페이지를 1페이지로 지정
		}
		currentPage = Integer.parseInt(pageNum); 	//현재페이지 : 1
		
		System.out.println("currentPage :" + currentPage);
		
		pageCount = (bcnt / pageSize) + (bcnt % pageSize > 0 ? 1 : 0 ); // 페이지갯수 + 나머지 있으면 1
		start = (currentPage - 1) * pageSize + 1;
		end = start + pageSize - 1;
		System.out.println("start : " + start);
		System.out.println("end :" + end);
		if(end > bcnt) end = bcnt;
		
		number = bcnt - (currentPage - 1) * pageSize;
		System.out.println("number :" + number);
		System.out.println("pageSize :" + pageSize);
		
		if(bcnt > 0) {
			//  게시글 목록 조회
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("start", start);
			map.put("end", end);
			List<RoomVO> dtos = dao.getArticleList(map);
			req.setAttribute("dtos", dtos); //큰바구니 : 게시글 목록 cf)작은바구니 : 게시글 한건
			
		}
		
		startPage = (currentPage / pageBlock) * pageBlock + 1;
		if(currentPage % pageBlock == 0) startPage -= pageBlock;
		System.out.println("startPage :" + startPage);
		
		endPage = startPage + pageBlock - 1;
		if(endPage > pageCount)endPage = pageCount;
		System.out.println("endPage :" + endPage);
		System.out.println("==========");
		
		model.addAttribute("cnt", bcnt);				//글갯수
		model.addAttribute("number", number);		//출력용 글번호
		model.addAttribute("pageNum", pageNum);		//페이지번호
		
		if(bcnt > 0) {
			model.addAttribute("startPage", startPage);		//시작
			model.addAttribute("endPage", endPage);			//마지막
			model.addAttribute("pageBlock", pageBlock);		//출력할
			model.addAttribute("pageCount", pageCount);		//페이지갯수
			model.addAttribute("currentPage", currentPage);	//현재페이지
		}
						
	}

	
	//매물 수정
	@Override
	public void update(HttpServletRequest req, Model model) {
		RoomVO vo = new RoomVO();
		
		vo.setR_kind(req.getParameter("r_kind"));
		vo.setR_type(req.getParameter("r_type"));
		vo.setR_price(Integer.parseInt(req.getParameter("r_price")));
		vo.setR_premium(Integer.parseInt(req.getParameter("r_premium")));	
		vo.setR_deposit(Integer.parseInt(req.getParameter("r_deposit")));	
		vo.setR_area(Integer.parseInt(req.getParameter("r_area")));		
		vo.setR_name(req.getParameter("r_name"));							
		vo.setR_toilet(req.getParameter("r_toilet"));						
		vo.setR_floor(Integer.parseInt(req.getParameter("r_floor")));		
		vo.setR_able_date(req.getParameter("r_able_date"));					
		vo.setR_indi_space(req.getParameter("r_indi_space"));					
		vo.setR_ofer_fee(Integer.parseInt(req.getParameter("r_ofer_fee")));	
		vo.setR_pmemo(req.getParameter("r_pmemo"));						
		vo.setR_desc(req.getParameter("r_desc"));
		vo.setR_code(req.getParameter("r_code"));
		//String r_img = "";	이미지
		
		int cnt = dao.update(vo);
		
		System.out.println("업데이트 :" + cnt);
		
		req.setAttribute("ucnt", cnt);
	}

	
	//매물 공개에서 비공개로 전환
	@Override
	public void delete(HttpServletRequest req, Model model) {
		int big=0;
		String r_code = req.getParameter("r_code");
		
		int deleteCnt = dao.delete(r_code);
		
		if(deleteCnt == 1) {
			big = 1;
		}
		
		req.setAttribute("cnt", big);
		
	}
	
	//매물 비공개에서 공개로 전환
	@Override
	public void reload(HttpServletRequest req, Model model) {
		int big=0;
		String r_code = req.getParameter("r_code");
		
		int reloadCnt = dao.reload(r_code);
		
		if(reloadCnt == 1) {
			big = 2;
		}
		
		req.setAttribute("cnt", big);
		
			
	}
	

	//이미지이름 DB에 저장하기
	@Override
	public void addImage(HttpServletRequest req, Model model,String originFileName,String r_code) {
		RoomVO vo = new RoomVO();
		vo.setR_code(req.getParameter("r_code"));
		vo.setR_img(originFileName);
		
		System.out.println("빅"+originFileName);
		System.out.println("굿"+req.getParameter("r_code"));
		
		dao.slide(vo);
		
		
	}

	
	@Override
	public void getImage(HttpServletRequest req, Model model) {
		
		String r_code = req.getParameter("r_code");
		int cnt = dao.getImagecount(r_code);
		
		
		if(cnt > 0) {
			//  이미지 갯수 수량만큼 가져와서 리스트에 담는다
						
			List<RoomVO> dtos = dao.getImage(r_code);
			
			req.setAttribute("image", dtos); 
			req.setAttribute("icnt", cnt);
		}
	}

	//납부 리스트 가져오기
	@Override
	public void getpaylist(HttpServletRequest req, Model model) {
		
		List<RoomVO> dtos = dao.getpaylist();
		
		req.setAttribute("dto", dtos);
	}

	//납부 상세페이지
	@Override
	public void getpaydetail(HttpServletRequest req, Model model) {
		
		String rt_code = req.getParameter("rt_code");
		
		List<RoomVO> dtos = dao.getpaydetail(rt_code);
		
		req.setAttribute("dto", dtos);
		
	}

	
	//
	@Override
	public void getmonthtotal(HttpServletRequest req, Model model) {


		List<TotalVO> dto = dao.getmonthtotal();
		
		req.setAttribute("dto", dto);
		
	}

	
	
	

}
