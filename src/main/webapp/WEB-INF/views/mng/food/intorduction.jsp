<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp" %>
<%@ include file="../../common/header.jsp" %>
<%@ include file="../../common/foodMiddleHeaderManage.jsp" %>
<body> 
<!-- Main -->
<form name="mkintro" class="media align-items-center mb-4" enctype="multipart/form-data" method="post" action="${path}/cp_manager/intromn/instPro?${_csrf.parameterName}=${_csrf.token}">
<div class="container space-2 px-md-7 px-lg-11">
     <div class="card bg-img-hero" style="background-image: url(../../assets/svg/components/bg-elements-6.svg);">
       <div class="card-body p-9 p-md-7 p-lg-11">
       
       <div class="container space-1">
           	<!-- Update Avatar Form -->
	          <div class="u-lg-avatar mr-3">
	           <img class="img-fluid rounded-circle" src="../../assets/img/160x160/img2.jpg" alt="Image Description">
	          </div>
	
	          <div class="media-body">
	            <label class="btn btn-sm btn-primary transition-3d-hover file-attachment-btn mb-1 mb-sm-0 mr-1" for="fileAttachmentBtn">
	              Upload
	              <input id="fileAttachmentBtn" name="f_mainimg" type="file" class="file-attachment-btn__label">
	            </label>
	            <button type="reset" class="btn btn-sm btn-soft-secondary transition-3d-hover mb-1 mb-sm-0">Delete</button>
	          </div>
        </div>
       
         <div class="row justify-content-lg-between align-items-sm-center mb-11">
           <div class="col-sm-6 col-lg-4 order-sm-1">
	        <!-- End Update Avatar Form -->
             <!-- Logo -->
             <h2 class="h1 text-primary font-weight-semi-bold">매장이름</h2>
             <!-- End Logo -->
             
			 <!-- Input -->
			<div class="col-sm-6 col-lg-5 order-sm-1" style="padding:00px" >
             <h1 class="h6 font-weight-medium mb-0">
               	카테고리
               <small class="d-block">
             		<select class="form-control custom-select" required
           		      		data-msg="Please select month."
                         	data-error-class="u-has-error"
                         	data-success-class="u-has-success"
                         	name="f_category">
		              <option value="">Select Catagory</option>
		              <option value="한식" selected="selected">한식</option>
		              <option value="중식">중식</option>
		              <option value="일식">일식</option>
		              <option value="디저트">디저트</option>
           			</select>
               </small>
             </h1>
           </div>
           <!-- End Input -->
           <br>
           <div class="row">
           <!-- Input -->
           <div class="col-sm-4 col-lg-6 order-sm-1">
             <h1 class="h6 font-weight-medium mb-0">
               	오픈시간
               <small class="d-block">
           		<select class="form-control custom-select" required
          		      		data-msg="Please select month."
                        	data-error-class="u-has-error"
                        	data-success-class="u-has-success"
                        	name="f_open_stt">
	              <option value="">OPEN</option>
	              <option value="00:00">00:00</option>
	              <option value="01:00">01:00</option>
	              <option value="02:00">02:00</option>
	              <option value="03:00">03:00</option>
	              <option value="04:00">04:00</option>
	              <option value="05:00">05:00</option>
	              <option value="06:00">06:00</option>
	              <option value="07:00">07:00</option>
	              <option value="08:00">08:00</option>
	              <option value="09:00" selected="selected">09:00</option>
	              <option value="10:00">10:00</option>
	              <option value="11:00">11:00</option>
	              <option value="12:00">12:00</option>
	              <option value="13:00">13:00</option>
	              <option value="14:00">14:00</option>
	              <option value="15:00">15:00</option>
	              <option value="16:00">16:00</option>
	              <option value="17:00">17:00</option>
	              <option value="18:00">18:00</option>
	              <option value="19:00">19:00</option>
	              <option value="20:00">20:00</option>
	              <option value="21:00">21:00</option>
	              <option value="22:00">22:00</option>
	              <option value="23:00">23:00</option>
       			</select>
               </small>
             </h1>
           </div>
           <!-- End Input -->
           <!-- Input -->
           <div class="col-sm-4 col-lg-6 order-sm-1" >
             <h1 class="h6 font-weight-medium mb-0">
               	마감시간
               <small class="d-block">
           		<select class="form-control custom-select" required
          		      		data-msg="Please select month."
                        	data-error-class="u-has-error"
                        	data-success-class="u-has-success"
                        	name="f_open_end">
	             <option value="">OPEN</option>
	              <option value="00:00">00:00</option>
	              <option value="01:00">01:00</option>
	              <option value="02:00">02:00</option>
	              <option value="03:00">03:00</option>
	              <option value="04:00">04:00</option>
	              <option value="05:00">05:00</option>
	              <option value="06:00">06:00</option>
	              <option value="07:00">07:00</option>
	              <option value="08:00">08:00</option>
	              <option value="09:00" selected="selected">09:00</option>
	              <option value="10:00">10:00</option>
	              <option value="11:00">11:00</option>
	              <option value="12:00">12:00</option>
	              <option value="13:00">13:00</option>
	              <option value="14:00">14:00</option>
	              <option value="15:00">15:00</option>
	              <option value="16:00">16:00</option>
	              <option value="17:00">17:00</option>
	              <option value="18:00">18:00</option>
	              <option value="19:00">19:00</option>
	              <option value="20:00">20:00</option>
	              <option value="21:00">21:00</option>
	              <option value="22:00">22:00</option>
	              <option value="23:00">23:00</option>
       			</select>
               </small>
             </h1>
           </div>
           <!-- End Input -->
           </div>
           </div>
         </div>
		<!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	업체 소개 짧은글
          </label>
          <textarea class="form-control" rows="3" name="short_desc" placeholder="간단한 소개란입니다." aria-label="Hi there, I would like to ..." required
                    data-msg="Please enter a reason."
                    data-error-class="u-has-error"
                    data-success-class="u-has-success">${store.getShort_desc()}</textarea>
        </div>
        <!-- End Input -->
        
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	업체 소개 긴 글
          </label>
          <textarea class="form-control" rows="13" name="long_desc" placeholder="소개해주세요." aria-label="Hi there, I would like to ..." required
                    data-msg="Please enter a reason."
                    data-error-class="u-has-error"
                    data-success-class="u-has-success">${store.getLong_desc()}</textarea>
        </div>
        <!-- End Input -->
       
         <!-- Contacts -->
         <div class="row justify-content-lg-between">
           <div class="col-md-8 col-lg-4 order-md-3 mb-5 mb-md-0">
             <h4 class="h6">Thank you!</h4>
             <p class="font-size-1">Smart를 이용해주셔서 감사합니다!!</p>

             <span class="d-block">
               <small class="font-weight-medium">email:</small>
               <small class="text-muted">시스템관리자정보?</small>
             </span>
             <small class="font-weight-medium">telephone:</small>
             <small class="text-muted">+1 (062) 109-9222</small>
           </div>

           <div class="col-md-4 col-lg-3 order-md-1 align-self-end">
             <p class="small text-muted mb-0">© 2019 Smart.</p>
           </div>
         </div>
         <!-- End Contacts -->
       </div>
     </div>

	<!-- Button start -->
     <div class="text-right mt-5">
       <button type="submit" class="btn btn-primary btn-sm-wide transition-3d-hover" >
         <span class="fas fa-print mr-2"></span>
         	작성 완료
       </button>
     </div>
   </div>
	<!-- Button end -->
</form>

<!-- script start -->
<script type="text/javascript">
// 업체 수정시 카테고리, 오픈시간, 종료시간 등록 값으로 남기기 
	window.onload = function() {
		var category = document.mkintro.f_category;  // 카테고리에 대한 셀렉트
		var startTime = document.mkintro.f_open_stt; // 오픈시간에 대한 셀렉트
		var endTime = document.mkintro.f_open_end;   // 종료시간에 대한 셀렉트
		
		// 카테고리 선택 for문
		for(var i=0; i<category.length; i++){
			if(category[i].value === '${store.f_category}'){
				category[i].selected = true;
			}
		}
		// 오픈시간 선택 for문
		for(var i=0; i<startTime.length; i++){
			if(startTime[i].value === '${store.f_open_stt}'){
				startTime[i].selected = true;
			}
		}
		// 종료시간 선택 for문
		for(var i=0; i<endTime.length; i++){
			if(endTime[i].value === '${store.f_open_end}'){
				endTime[i].selected = true;
			}
		}
	}
</script>
<!-- script end -->
<!-- footer start -->
<%@ include file="../../common/footer.jsp" %>
<!-- footer end -->
</body>
</html>