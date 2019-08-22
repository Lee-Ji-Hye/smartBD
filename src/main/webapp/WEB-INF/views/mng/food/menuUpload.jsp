<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp" %>
<%@ include file="../../common/header.jsp" %>
<%@ include file="../../common/foodMiddleHeaderManage.jsp" %>
<body>
<div class="bg-light">
      <div class="container space-2">
      	 <!-- Update Avatar Form -->
        <form class="media align-items-center mb-4"  style="text-align: right">
          <div class="u-lg-avatar mr-4">
            <img class="img-fluid rounded-circle" src="../../assets/img/160x160/img2.jpg" alt="Image Description">
          </div>

          <div class="media-body">
            <label class="btn btn-sm btn-primary transition-3d-hover file-attachment-btn mb-1 mb-sm-0 mr-1" for="fileAttachmentBtn">
              Upload
              <input id="fileAttachmentBtn" name="file-attachment" type="file" class="file-attachment-btn__label">
            </label>

            <button type="submit" class="btn btn-sm btn-soft-secondary transition-3d-hover mb-1 mb-sm-0">Delete</button>
          </div>
        </form>
        <!-- End Update Avatar Form -->
        
        <form id="changePasswordForm" class="js-validate" novalidate="novalidate">
          <!-- Input -->
          <div class="js-form-message mb-6">
            <label class="form-label">
              	메뉴명
            </label>

            <div class="form-group">
              <input type="text" class="form-control" name="currentPassword" placeholder="메뉴명을 입력하세요.">
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
                          data-success-class="u-has-success">
              <option value="">Select Catagory</option>
              <option value="birthMonthSelect1" selected="selected">기본</option>
              <option value="birthMonthSelect2">사이드</option>
              <option value="birthMonthSelect3">기타등등</option>
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
                          data-success-class="u-has-success">
              <option value="">Select Menu</option>
              <option value="birthMonthSelect1">Best</option>
              <option value="birthMonthSelect2">New</option>
              <option value="birthMonthSelect3">Hot</option>
              <option value="birthMonthSelect4" selected="selected">It</option>
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
              <input type="text" class="form-control" name="confirmNewPassword" placeholder="가격을 입력하세요.">
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
	            <button type="submit" class="btn btn-sm btn-soft-secondary transition-3d-hover">수정</button>
	            <!-- End Buttons -->
          </div>
        </form>
      </div>
    </div>
<!-- footer start -->
<%@ include file="../../common/footer.jsp" %>
<!-- footer end -->
</body>
</html>