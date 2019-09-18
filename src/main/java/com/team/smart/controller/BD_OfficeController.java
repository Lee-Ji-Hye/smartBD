package com.team.smart.controller;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.team.smart.room.vo.RoomVO;
import com.team.smart.service.RoomService;
import com.team.smart.vo.CompVO;

import lombok.extern.slf4j.Slf4j;

/**
 * 
 * @author SH
 * @detail : 건물 파트별 관리 (임대) 권한 매핑
 *
 */
@Slf4j
@Controller
@RequestMapping("/bd_office")
public class BD_OfficeController {

	@Autowired
	RoomService r_service;
	private String mng_ = "mng/";
	private String mngBuilding_ = "mng/building";
	
	//매물 리스트
	@RequestMapping("roomlist")
	public String billing(HttpServletRequest req, Model model) {
		
		
		r_service.list(req,model);
		
		return mngBuilding_ + "/roomlist";
	}
	
		//매물 상세페이지
		@RequestMapping("roomdetail")
		public String roomdetail(HttpServletRequest req, Model model) {
			
			
			r_service.roomDetail(req, model);
			r_service.getImage(req, model);
			
			return mngBuilding_ + "/roomdetail";
		}
		
		//매물 등록
		@RequestMapping("roomupload")
		public String roomupload(HttpServletRequest req, Model model) {
			
			
			String mode = (req.getParameter("mode") == null)? "insert" : req.getParameter("mode");
			req.setAttribute("mode", mode);
			
			if(mode.equals("edit")) {
				//목록 불러오기
				r_service.roomDetail(req, model);
				
				
			}
			
			
			
			return mngBuilding_ +"/roomupload";
		}
		
		//매물 등록,수정 처리
		@RequestMapping("uploadPro")
		public String roomuploadPro(HttpServletRequest req, Model model) {
			String mode = req.getParameter("mode");
			System.out.println(mode + "1111");
				r_service.upload(req,model);

			
			
			return mngBuilding_ + "/uploadPro";
		}
		
		//매물 공개,비공개 전환하기
		@RequestMapping("deletePro")
		public String roomdeletePro(HttpServletRequest req, Model model) {
			String r_code = req.getParameter("r_code");
			String r_delete = req.getParameter("r_delete");
			
			
			//r_delete 가 공개상태인경우 비공개로 전환하는 서비스
			if(r_delete.equals("0")) {
				r_service.delete(req, model);
				
			//r_delete 가 비공개 상태인경우 공개로 전환하는 서비스
			}else if(r_delete.equals("1")) {
				r_service.reload(req,model);
			}
			System.out.println("r_code :" + r_code);
			
			
			
			return mngBuilding_ + "/deletePro";
		}
		
		//이미지 실험 페이지이동 
		@RequestMapping("imageadd")
		public String imageadd(HttpServletRequest req, Model model) {
			
			r_service.roomDetail(req, model);
			
			return mngBuilding_ + "/imageadd";
		}
		//이미지 다중업로드
		@RequestMapping(value = "requestupload2")
	    public String requestupload2(MultipartHttpServletRequest mtfRequest,HttpServletRequest req, Model model) {
	        List<MultipartFile> fileList = mtfRequest.getFiles("file");
	        String src = mtfRequest.getParameter("src");
	        String r_code = req.getParameter("r_code");
	        System.out.println("src value : " + src);

	        //해당 저장경로는 컴퓨터마다 다르기때문에 pull받은 컴퓨터에 알맞는 경로로 지정해줘야 저장이 됨
	        //git파일 위치가 동일하다면C:\\Users\\kosmo27\\ 부분만 수정해주면 된다
	        String path = "C:\\Users\\kosmo27\\git\\smartBD\\src\\main\\webapp\\resources\\images\\slide\\";
	        
	        for (MultipartFile mf : fileList) {
	            String originFileName = mf.getOriginalFilename(); // 원본 파일 명
	            long fileSize = mf.getSize(); // 파일 사이즈

	            System.out.println("originFileName : " + originFileName);
	            System.out.println("fileSize : " + fileSize);

	            String safeFile = path +  originFileName;
	            
	            //파일 이름가지고 DB에 저장하기
	            
	            System.out.println(r_code);
	            r_service.addImage(req, model,originFileName,r_code);
	            
	            try {
	                mf.transferTo(new File(safeFile));
	            } catch (IllegalStateException e) {
	                
	                e.printStackTrace();
	            } catch (IOException e) {
	                
	                e.printStackTrace();
	            }
	        }
	        
	        //return  "smart/bd_office/roomDetail?r_code="+r_code;
	        return "redirect:/bd_office/roomdetail?r_code="+r_code;
	    }
		
		//계약관리
		@RequestMapping("roomcontract")
		public String contractlist(HttpServletRequest req, Model model) {
			
			r_service.getContractList(req, model);
			
			return mngBuilding_ + "/roomcontract";
		}
		
		///계약 목록 단건
		@GetMapping({"/detail/{rt_code}"})
		public @ResponseBody RoomVO contractDetail(HttpServletRequest req, @PathVariable String rt_code) {
			log.info("url -> bd_office/detail/ get"+rt_code);
			return r_service.getContractDetail(rt_code);
		}
		
		//납부관리
		@RequestMapping("paylist")
		public String paylist(HttpServletRequest req, Model model) {
						
			
			r_service.getpaylist(req,model);
						
			return mngBuilding_ + "/paylist";
		}
		
		//납부관리
		@RequestMapping("paydetail")
		public String paydetail(HttpServletRequest req, Model model) {
								
			r_service.getpaydetail(req,model);					
								
			return mngBuilding_ + "/paydetail";
		}
		
		//결산페이지
		@RequestMapping("total")
		public String total(HttpServletRequest req, Model model) {
			
			
			
			r_service.getmonthtotal(req, model);						
										
			
			
			return mngBuilding_ + "/total";
		}
		
		//날짜 계산 테스트
		@RequestMapping("monthtest")
		public @ResponseBody String testtest(HttpServletRequest req) throws ParseException {
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");

			Date date = format.parse("2019-12-31");

	        // 날짜 더하기
	        Calendar cal = Calendar.getInstance();
	        cal.setTime(date);
	        cal.add(Calendar.MONTH, 1);		//월 더하기

			String plusMonth = format.format(cal.getTime());

			return plusMonth;
		}
		
		//임차인 계약정보가져오기 
		@RequestMapping("memcontract")
		public String memcontract(HttpServletRequest req, Model model) {
			
			
			
			
			return mngBuilding_ + "/memcontract";
		}
		
		//임차인 납부정보가져오기
		@RequestMapping("mempaylist")
		public String mempaylist(HttpServletRequest req, Model model) {
			
			
			r_service.getmemberpaylist(req, model);
			
			return mngBuilding_ + "/mempaylist";
		}
		
		//병권 도우미=========================
		//매물 삭제
		@RequestMapping("roomDelete")
		public @ResponseBody int roomDelete(HttpServletRequest req, Model model) {
			//b_service.pageTest(req, model);
			
			int resut = r_service.roomDelete(req,model);
			
			return resut;
		}
}
