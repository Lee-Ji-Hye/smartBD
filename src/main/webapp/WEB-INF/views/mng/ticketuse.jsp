<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/setting.jsp" %>
<%@ include file="../common/headerAdmin.jsp" %>        
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>Insert title here</title>
<body>
<!-- ========== MAIN CONTENT ========== -->
  <main id="content" role="main">
    <!-- Upload Form Section -->
    <div class="container space-2">
      <div class="w-lg-75 mx-lg-auto">
        <!-- Title -->
        <div class="text-center mb-9">
          <h1 class="h2 font-weight-medium">parking ticket use </h1>
        </div>
        <!-- End Title -->

        <form id="uploadForm" class="js-validate svg-preloader">
          <!-- Listing Agent Information -->
          <div class="mb-7">
            <!-- Title -->
            <div class="border-bottom pb-3 mb-5">
              <h2 class="h6 text-secondary mb-0">주차권 사용</h2>
            </div>
            <!-- End Title -->

            <div class="row">
              <div class="col-md-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-form-message js-focus-state">
                    <label class="form-label" for="listingAgentAgentName">아이디</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingAgentAgentNameLabel">
                          <span class="fas fa-user"></span>
                        </span>
                      </div>
                      <input type="text" class="form-control" name="agentName" id="listingAgentAgentName" placeholder="아이디" aria-label="ListingAgent agent name" aria-describedby="listingAgentAgentNameLabel" required
                             data-msg="Please enter a listing agent name."
                             data-error-class="u-has-error"
                             data-success-class="u-has-success">
                    </div>
                  </div>
                </div>
                <!-- End Input -->
              </div>

              <div class="col-md-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-form-message js-focus-state">
                    <label class="form-label" for="listingAgentPhoneNumber">주차권 코드</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingAgentPhoneNumberLabel">
                          <span class="fas fa-phone"></span>
                        </span>
                      </div>
                      <input type="tel" class="form-control" name="phoneNumber" id="listingAgentPhoneNumber" placeholder="주차권 코드" aria-label="Phone number" aria-describedby="listingAgentPhoneNumberLabel" required
                             data-msg="Please enter a phone number."
                             data-error-class="u-has-error"
                             data-success-class="u-has-success">
                    </div>
                  </div>
                </div>
                <!-- End Input -->
              </div>
            </div>

            <div class="row">
              <div class="col-lg-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-focus-state">
                    <label class="form-label" for="listingAgentRealEstateAgency">주차 상품 코드</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingAgentRealEstateAgencyLabel">
                          <span class="fas fa-briefcase"></span>
                        </span>
                      </div>
                      <input type="text" class="form-control" name="RealEstateAgency" id="listingAgentRealEstateAgency" placeholder="주차 상품 코드" aria-label="Real estate agency" aria-describedby="listingAgentRealEstateAgencyLabel">
                    </div>
                  </div>
                </div>
              </div>
              <!-- End Input -->

              <div class="col-lg-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-focus-state">
                    <label class="form-label" for="listingAgentWebsiteAddress">이용시간</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingAgentWebsiteAddressLabel">
                          <span class="fas fa-globe"></span>
                        </span>
                      </div>
                      <input type="text" class="form-control" name="websiteAddress" id="listingAgentWebsiteAddress" placeholder="이용시간" aria-label="Website address" aria-describedby="listingAgentWebsiteAddressLabel">
                    </div>
                  </div>
                </div>
                <!-- End Input -->
              </div>
            </div>
          </div>
          <!-- End Listing Agent Information -->
          <!-- Upload Images -->
          <div class="mb-7">
            <!-- Title -->
            <div class="border-bottom pb-3 mb-5">
              <h2 class="h6 text-secondary mb-0">차량 번호 이미지 등록</h2>
            </div>
            <!-- End Title -->

            <!-- File Attachment Input -->
            <div class="u-dropzone">
              <div class="dz-message">
                <img class="js-svg-injector max-width-10 mb-3" src="../../assets/svg/illustrations/add-file.svg" alt="SVG"
                     data-parent="#uploadForm">
                <span class="d-block mb-2">Browse your device and upload images</span>
                <small class="d-block text-muted">Maximum file size is 2MB</small>
              </div>
            </div>
            <!-- End File Attachment Input -->
          </div>
          <!-- End Upload Images -->

          <button type="submit" class="btn btn-primary btn-block transition-3d-hover">등록</button>
        </form>
      </div>
    </div>
    <!-- End Upload Form Section -->
  </main>
  <!-- ========== END MAIN CONTENT ========== -->
 <%@ include file="../common/footer.jsp" %> 
</body>
</html>