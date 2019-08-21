<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp" %>
<%@ include file="../../common/header.jsp" %>
<%@ include file="../../common/foodMiddleHeaderManage.jsp" %>
<body>

<!-- Main -->
<div class="container space-2 px-md-7 px-lg-11">
      <div class="card bg-img-hero" style="background-image: url(../../assets/svg/components/bg-elements-6.svg);">
        <div class="card-body p-5 p-md-7 p-lg-11">
          <div class="row justify-content-lg-between align-items-sm-center mb-11">
            <div class="col-sm-6 col-lg-4 order-sm-2 text-sm-right mb-5 mb-sm-0">
              <h1 class="h2 font-weight-medium mb-0">
                	매장코드
                <small class="d-block">코드번호</small>
              </h1>
            </div>

            <div class="col-sm-6 col-lg-4 order-sm-1">
              <!-- Logo -->
              <img class="mb-2" src="../../assets/svg/logos/logo-short.svg" alt="Logo">
              <h2 class="h1 text-primary font-weight-semi-bold">매장이름</h2>
              <!-- End Logo -->

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
            	업체 소개
          </label>
          <textarea class="form-control" rows="15" name="answer" placeholder="설명" aria-label="Hi there, I would like to ..." required
                    data-msg="Please enter a reason."
                    data-error-class="u-has-error"
                    data-success-class="u-has-success"></textarea>
        </div>
        <!-- End Input -->
        
          <!-- Contacts -->
          <div class="row justify-content-lg-between">
            <div class="col-md-8 col-lg-4 order-md-3 mb-5 mb-md-0">
              <h4 class="h6">Thank you!</h4>
              <p class="font-size-1">시스템을 이용해주셔서 감사합니다!!</p>

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
        <button type="button" class="btn btn-primary btn-sm-wide transition-3d-hover" onclick="window.print();return false;">
          <span class="fas fa-print mr-2"></span>
          	작성 완료
        </button>
      </div>
    </div>
<!-- Button end -->

<!-- footer start -->
<%@ include file="../../common/footer.jsp" %>
<!-- footer end -->
</body>
</html>