<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp" %>
<%@ include file="../../common/header.jsp" %>
<%@ include file="../../common/foodMiddleHeaderManage.jsp" %>
<body>
<div class="bg-light">
      <div class="container space-2">
      	 <!-- Update Avatar Form -->
        <form name="mkMenu"  enctype="multipart/form-data" method="post" action="${path}/cp_manager/menumn/instPro?${_csrf.parameterName}=${_csrf.token}">
          <div class="u-lg-avatar mr-4">
            <img class="img-fluid rounded-circle" src="../../assets/img/160x160/img2.jpg" alt="Image Description">
          </div>

          <div class="media-body" style="text-align: right">
            <label class="btn btn-sm btn-primary transition-3d-hover file-attachment-btn mb-1 mb-sm-0 mr-1" for="fileAttachmentBtn">
              Upload
              <input id="fileAttachmentBtn" name="f_img" type="file" class="file-attachment-btn__label">
            </label>

            <button type="reset" class="btn btn-sm btn-soft-secondary transition-3d-hover mb-1 mb-sm-0">Delete</button>
          </div>
        
        <!-- End Update Avatar Form -->
        
          <!-- Input -->
          <div class="js-form-message mb-6">
            <label class="form-label">
              	메뉴명
            </label>

            <div class="form-group">
              <input type="text" class="form-control" name="f_name" placeholder="메뉴명을 입력하세요." value="${vo.f_name}">
            </div>
          </div>
          <!-- End Input -->
          
          <!-- Input -->
          <div class="mb-4">
            <div class="js-form-message">
              <label class="form-label">
                	분류
              </label>

              <div class="form-group">
              	<select class="form-control custom-select" required
                          data-msg="Please select month."
                          data-error-class="u-has-error"
                          data-success-class="u-has-success"
                          name="f_type">
              <option value="">Select Catagory</option>
              <option value="기본" selected="selected">기본</option>
              <option value="사이드">사이드</option>
              <option value="기타">기타</option>
            </select>
              </div>
            </div>
          </div>
          <!-- End Input -->

          <!-- Input -->
          <div class="js-form-message mb-4">
            <label class="form-label">
             	 메뉴 분류
            </label>

            <div class="form-group">
            <select class="form-control custom-select" required
                          data-msg="Please select month."
                          data-error-class="u-has-error"
                          data-success-class="u-has-success"
                          name="f_icon">
              <option value="">Select Menu</option>
              <option value="Best">Best</option>
              <option value="New">New</option>
              <option value="Hot">Hot</option>
              <option value="It" selected="selected">It</option>
            </select>
            </div>
          </div>
          <!-- End Input -->
          
          <!-- Input -->
          <div class="js-form-message mb-6">
            <label class="form-label">
             	 가격
            </label>

            <div class="form-group">
              <input id="menuPrice" type="text" class="form-control" name="f_price" placeholder="가격을 입력하세요." value="${vo.f_price}" onkeydown="return inNumber(event,type);" onkeyup="inKorean(event,type);">
            </div>
          </div>
          <!-- End Input -->
          
		<!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	메뉴설명
          </label>
          <textarea class="form-control" rows="8" name="answer" placeholder="설명" aria-label="Hi there, I would like to ..." required
                    data-msg="Please enter a reason."
                    data-error-class="u-has-error"
                    data-success-class="u-has-success"></textarea>
        </div>
        <!-- End Input -->
            <div style="text-align:center">
	            <!-- Buttons -->
	            <button type="submit" class="btn btn-sm btn-primary transition-3d-hover mr-1">등록</button>
	            <button type="button" class="btn btn-sm btn-soft-secondary transition-3d-hover" onclick="window.location='${path}/cp_manager/menumn/modPro?f_code=${vo.f_code}'">수정</button>
	            <!-- End Buttons -->
          </div>
        </form>
      </div>
    </div>
    
<!-- script start -->
<script type="text/javascript">
// 업체 수정시 카테고리, 오픈시간, 종료시간 등록 값으로 남기기 
	window.onload = function() {
		var f_type = document.mkMenu.f_type;  // 분류에 대한 셀렉트
		var f_icon = document.mkMenu.f_icon; // 메뉴분류에 대한 셀렉트
		
		// 카테고리 선택 for문
		for(var i=0; i<f_type.length; i++){
			if(f_type[i].value === '${vo.f_type}'){
				f_type[i].selected = true;
			}
		}
		
		// 오픈시간 선택 for문
		for(var i=0; i<f_icon.length; i++){
			if(f_icon[i].value === '${vo.f_icon}'){
				f_icon[i].selected = true;
			}
		}
	}
	
// 넘버체크
 function inNumber(event, type){ // 0~48 , 58~
	 if((event.keyCode >= 48 && event.keyCode <= 57) || event.keyCode == 8){
		 event.returnValue=true;
     }else{
    	 event.returnValue=false;
     }
		
 }
 
 // 한글 입력 받지 못하게 처리
 function inKorean(event, type){ 
	 var couponCnt = document.getElementById('menuPrice');
	 couponCnt.value = couponCnt.value.replace(/[\ㄱ-ㅎㅏ-ㅣ가-힣]/g, '');
 }
 
	

</script>
<!-- script end -->
<!-- footer start -->
<%@ include file="../../common/footer.jsp" %>
<!-- footer end -->
</body>
</html>