package com.team.smart.controller.old;



import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.team.smart.room.vo.RoomVO;
import com.team.smart.service.BuildingService;
import com.team.smart.service.RoomService;

@Controller
@RequestMapping("mng")
public class ManageController {
	
	
	private String mng_ = "mng/";
	private String mngBuilding_ = "mng/building";
	
	@Autowired
	BuildingService b_service;
	
	@Autowired
	RoomService r_service;
	
	//메인
	@RequestMapping({"", "index"})
	public String index(HttpServletRequest req, Model model) {
        //logger.debug("ID : {}");
		return mng_ + "index";
	}

	//매물 리스트
	/*
	 * @RequestMapping("roomlist") public String roomlist(HttpServletRequest req,
	 * Model model) { b_service.pageTest(req, model); return mngBuilding_ +
	 * "/roomlist"; }
	 */

	//매물 리스트
	@RequestMapping("meetingroom")
	public String meetingroom(HttpServletRequest req, Model model) {
		b_service.pageTest(req, model);
		return mngBuilding_ + "/meetingroom";
	}

	//매물 리스트
	@RequestMapping("roomlist")
	public String billing(HttpServletRequest req, Model model) {
		//b_service.pageTest(req, model);
		
		r_service.list(req,model);
		
		return mngBuilding_ + "/roomlist";
	}
	
	
	//매물 상세페이지
	@RequestMapping("roomdetail")
	public String roomdetail(HttpServletRequest req, Model model) {
		//logger.info("URI -> sysmaster");
		
		r_service.roomDetail(req, model);
		r_service.getImage(req, model);
		
		return mngBuilding_ + "/roomdetail";
	}
	
	//매물 등록
	@RequestMapping("roomupload")
	public String roomupload(HttpServletRequest req, Model model) {
		//logger.info("URI -> sysmaster");
		
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
	
	//매물 삭제
	@RequestMapping("deletePro")
	public String roomdeletePro(HttpServletRequest req, Model model) {
		String r_code = req.getParameter("r_code");
		
		System.out.println("r_code :" + r_code);
		r_service.delete(req, model);
		
		
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
        
        

        return mngBuilding_ + "/roomdetail?r_code=" + r_code;
    }


}
