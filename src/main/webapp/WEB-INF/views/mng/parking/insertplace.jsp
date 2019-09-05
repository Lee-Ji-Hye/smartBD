<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp" %>
<%@ include file="../../common/header.jsp" %>
 <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
 
  <!-- ========== MAIN CONTENT ========== -->
  <main id="content" role="main">
    <!-- Upload Form Section -->
    <div class="container space-2">
      <div class="w-lg-75 mx-lg-auto">
        <!-- Title -->
        <div class="text-center mb-9">
          <h1 class="h2 font-weight-medium">주차장 등록</h1>
          <p class="mb-0">reg_parking</p>
          <p>Submissions which exceed maximum word counts will be edited.</p>
        </div>
        <!-- End Title -->
		
        <form id="insertplacepro" class="js-validate svg-preloader" method="post" action="insertplacepro">
         <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
        	${mode}
          <!-- Listing Agent Information -->
          
          <!-- Type of Listing -->
          

          <!-- Type of Listing -->
        
              
            </div>
            <!-- End Radio Checkbox Group -->
          </div>
          <!-- End Type of Listing -->
          

          <!-- Listing Information -->
          <div class="mb-7">
            <!-- Title -->
            <div class="border-bottom pb-3 mb-5">
              <h2 class="h6 text-secondary mb-0">주차장 등록</h2>
            </div>
            <!-- End Title -->

            <!-- Input -->
            <div class="form-group mb-5">
              <div class="js-focus-state">
                <label class="form-label" for="listingPrice">건물이름</label>
                <div class="input-group">
                  <div class="input-group-prepend">
                    <span class="input-group-text" id="listingPriceLabel">
                      <img  src="${resourceImg}/room/coin.png" width=15px; height=15px;
                         data-parent="#uploadForm">
                    </span>
                  </div>
                  <input type="text" class="form-control" name="b_name" id="listingPrice" placeholder="b_name" aria-label="Price" aria-describedby="listingPriceLabel" required
                         data-msg="필수 항목입니다"
                         data-parent="#uploadForm"
                         data-error-class="u-has-error"
                         data-success-class="u-has-success">
                </div>
              </div>
            </div>
            <!-- End Input -->

            <div class="row">
              <div class="col-lg-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-focus-state">
                    <label class="form-label" for="listingAddress">총 주차 자리</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingAddressLabel">
                          <img  src="${resourceImg}/room/premium.png" width=15px; height=15px;
                         data-parent="#uploadForm">	
                        </span>
                      </div>
                      <input type="text" class="form-control" name="able_position" id="listingAddress" placeholder="able_position" aria-label="Address" aria-describedby="listingAddressLabel">
                    </div>
                  </div>
                </div>
                <!-- End Input -->
              </div>

              <div class="col-lg-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-focus-state">
                    <label class="form-label" for="listingCityProvince">출차높이제한</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingCityProvinceLabel">
                          <img  src="${resourceImg}/room/deposit.png" width=15px; height=15px;
                         data-parent="#uploadForm">
                        </span>
                      </div>
                      <input type="text" class="form-control" name="able_height" id="listingCityProvince" placeholder="able_height" aria-label="City, Province" aria-describedby="listingCityProvinceLabel">
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
                    <label class="form-label" for="listingLotSize">평일영업시간</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingLotSizeLabel">
                          <img  src="${resourceImg}/room/ruler.png" width=15px; height=15px;
                         data-parent="#uploadForm">
                        </span>
                      </div>
                      <input type="text" class="form-control" name="operate_time_day" id="listingLotSize" placeholder="operate_time_day" aria-label="Lot size" aria-describedby="listingLotSizeLabel">
                    </div>
                  </div>
                </div>
                <!-- End Input -->
              </div>

              <div class="col-lg-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-focus-state">
                    <label class="form-label" for="listingPostalCode">공휴일 영업시간</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingPostalCodeLabel">
                          <img  src="${resourceImg}/room/door.png" width=15px; height=15px;
                         data-parent="#uploadForm">
                        </span>
                      </div>
                      <input type="text" class="form-control" name="operate_time_week" id="listingPostalCode" placeholder="operate_time_week" aria-label="Postal code" aria-describedby="listingPostalCodeLabel">
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
                    <label class="form-label" for="listingBedroom">주차관리사무소 번호</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingBedroomLabel">
                          <img  src="${resourceImg}/room/toilet1.png" width=15px; height=15px;
                         data-parent="#uploadForm">
                        </span>
                      </div>
                     <input type="text" class="form-control" name="operate_tel" id="listingPostalCode" placeholder="operate_tel" aria-label="Postal code" aria-describedby="listingPostalCodeLabel">
                    </div>
                  </div>
                </div>
                <!-- End Input -->
              </div>

          <!-- End Upload Images -->

          <button type="submit" class="btn btn-primary btn-block transition-3d-hover">등록</button> 
          
        </form>
      </div>
    </div>
    <!-- End Upload Form Section -->
  </main>
  <!-- ========== END MAIN CONTENT ========== -->
<%@ include file="../../common/footer.jsp" %>