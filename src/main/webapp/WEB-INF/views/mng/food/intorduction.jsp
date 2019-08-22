<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp" %>
<%@ include file="../../common/header.jsp" %>
<%@ include file="../../common/foodMiddleHeaderManage.jsp" %>
<body> 
<!-- Main -->
<form class="media align-items-center mb-4" enctype="multipart/form-data" method="post" action="/smart/mng/food/intorduction">
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
	              <input id="fileAttachmentBtn" name="file-attachment" type="file" class="file-attachment-btn__label">
	            </label>
	            <button type="" class="btn btn-sm btn-soft-secondary transition-3d-hover mb-1 mb-sm-0" onclick="">Delete</button>
	          </div>
	        
        </div>
       
         <div class="row justify-content-lg-between align-items-sm-center mb-11">
           <div class="col-sm-6 col-lg-4 order-sm-1">
	        <!-- End Update Avatar Form -->
             <!-- Logo -->
             <h2 class="h1 text-primary font-weight-semi-bold">매장이름</h2>
             <!-- End Logo -->

			<div class="col-sm-6 col-lg-4 order-sm-1" style="padding:00px">
             <h1 class="h6 font-weight-medium mb-0">
               	카테고리
               <small class="d-block">
             		<select class="form-control custom-select" required
           		      		data-msg="Please select month."
                         	data-error-class="u-has-error"
                         	data-success-class="u-has-success">
		              <option value="">Select Catagory</option>
		              <option value="birthMonthSelect1" selected="selected">한식</option>
		              <option value="birthMonthSelect2">중식</option>
		              <option value="birthMonthSelect3">일식</option>
		              <option value="birthMonthSelect3">디저트</option>
           			</select>
               </small>
             </h1>
           </div>
           <br>
             <!-- Address -->
             <address>
               	매장주소
             </address>
             <small class="d-block text-muted">tel: 매장 전화번호</small>
             <!-- End Address -->
           </div>
         </div>

		<!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	업체 소개 짧은글
          </label>
          <textarea class="form-control" rows="4" name="answer" placeholder="간단한 소개란입니다." aria-label="Hi there, I would like to ..." required
                    data-msg="Please enter a reason."
                    data-error-class="u-has-error"
                    data-success-class="u-has-success"></textarea>
        </div>
        <!-- End Input -->
        
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	업체 소개 긴 글
          </label>
          <textarea class="form-control" rows="13" name="answer" placeholder="소개해주세요." aria-label="Hi there, I would like to ..." required
                    data-msg="Please enter a reason."
                    data-error-class="u-has-error"
                    data-success-class="u-has-success"></textarea>
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
<!-- footer start -->
<%@ include file="../../common/footer.jsp" %>
<!-- footer end -->
</body>
</html>