<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp" %>
<%@ include file="../../common/headerAdmin.jsp" %>   
 <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
 
  <!-- ========== MAIN CONTENT ========== -->
  <main id="content" role="main">
    <!-- Upload Form Section -->
    <div class="container space-2">
      <div class="w-lg-75 mx-lg-auto">
        <!-- Title -->
        <div class="text-center mb-9">
          <h1 class="h2 font-weight-medium">주차권 수정 페이지</h1>
          <p class="mb-0">주차권 수정</p>
          <p>Submissions which exceed maximum word counts will be edited.</p>
        </div>
        <!-- End Title -->
		
        <form id="ticketpro" class="js-validate svg-preloader" method="post" action="ticketpro" name="search">
         <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
        	
          </div>
            <!-- End Radio Checkbox Group -->
          </div>
          

          <!-- Listing Information -->
          <div class="mb-7">
            <!-- Title -->
            <div class="border-bottom pb-3 mb-5">
              <h2 class="h6 text-secondary mb-0">주차권 수정</h2>
            </div>
            <!-- End Title -->

            <!-- Input -->
            <div class="form-group mb-5">
              <div class="js-focus-state">
              </div>
            </div>
            <!-- End Input -->

            <div class="row">
             <div class="col-lg-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-focus-state">
                    <label class="form-label" for="listingAddress">주차권코드</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingAddressLabel">
                          <img  src="${resourceImg}/room/premium.png" width=15px; height=15px;
                         data-parent="#uploadForm">	
                        </span>
                      </div>
						<input type="text" class="form-control" name="p_code" id="listingCityProvince" value="${p_code}" aria-label="City, Province" aria-describedby="listingCityProvinceLabel">
                    </div>
                  </div>
                </div>
                <!-- End Input -->
              </div>
			  
			   <div class="col-lg-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-focus-state">
                    <label class="form-label" for="listingCityProvince">주차시간타입</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingCityProvinceLabel">
                          <img  src="${resourceImg}/room/deposit.png" width=15px; height=15px;
                         data-parent="#uploadForm">
                        </span>
                      </div>
                      <input type="text" class="form-control" name="p_type" id="listingCityProvince" placeholder="p_type" aria-label="City, Province" aria-describedby="listingCityProvinceLabel" value="${p_type}">
                    </div>
                  </div>
                </div>
                <!-- End Input -->
              </div>

              <div class="col-lg-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-focus-state">
                    <label class="form-label" for="listingCityProvince">시간별</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingCityProvinceLabel">
                          <img  src="${resourceImg}/room/deposit.png" width=15px; height=15px;
                         data-parent="#uploadForm">
                        </span>
                      </div>
                      <input type="text" class="form-control" name="hourly" id="listingCityProvince" placeholder="hourly" aria-label="City, Province" aria-describedby="listingCityProvinceLabel" value="${p_hourly}">
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
                    <label class="form-label" for="listingLotSize">가격</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingLotSizeLabel">
                          <img  src="${resourceImg}/room/ruler.png" width=15px; height=15px;
                         data-parent="#uploadForm">
                        </span>
                      </div>
                      <input type="text" class="form-control" name="price" id="listingLotSize" placeholder="price" aria-label="Lot size" aria-describedby="listingLotSizeLabel" value="${p_price}">
                    </div>
                  </div>
                </div>
                <!-- End Input -->
              </div>

             <div class="row">
              <div class="col-lg-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-focus-state">
                    <label class="form-label" for="listingLotSize">수성자</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingLotSizeLabel">
                          <img  src="${resourceImg}/room/ruler.png" width=15px; height=15px;
                         data-parent="#uploadForm">
                        </span>
                      </div>
                      <input type="text" class="form-control" name="reg_id" id="listingLotSize" placeholder="reg_id" aria-label="Lot size" aria-describedby="listingLotSizeLabel">
                    </div>
                  </div>
                </div>
                <!-- End Input -->
              </div>

            
            </div>

          <button type="submit" class="btn btn-primary btn-block transition-3d-hover">수정</button> 
          
        </form>
      </div>
    </div>
    <!-- End Upload Form Section -->
  </main>
  <!-- ========== END MAIN CONTENT ========== -->
<%@ include file="../../common/footer.jsp" %>