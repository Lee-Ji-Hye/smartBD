<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp" %>
<%@ include file="../../common/headerAdmin.jsp" %>   
 <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
 <style>
 #content{
 width:800px;
 position: relative;
 left: 550px;
 }
 </style>
 
  <!-- ========== MAIN CONTENT ========== -->
  <main id="content" role="main">
    <!-- Upload Form Section -->
    <div class="container space-2">
      <div class="w-lg-75 mx-lg-auto">
        <!-- Title -->
        <div class="text-center mb-9">
          <h1 class="h2 font-weight-medium">주차요금 등록</h1>
          <p class="mb-0">reg_parking</p>
          <p>Submissions which exceed maximum word counts will be edited.</p>
        </div>
        <!-- End Title -->
		
        <form id="inserpricepro" class="js-validate svg-preloader" method="post" action="inserpricepro">
         <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
        	
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
              <h2 class="h6 text-secondary mb-0">주차요금 등록</h2>
            </div>
            <!-- End Title -->

            
			<div class="row">
			<div class="col-lg-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-focus-state">
                    <label class="form-label" for="listingAddress">건물코드</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingAddressLabel">
                          <img src="/smart/resources/images/room/premium.png" width="15px;" height="15px;" data-parent="#uploadForm">	
                        </span>
                      </div>
                		<input type="text" class="form-control" name="b_code" id="listingCityProvince" value="${sessionScope.b_code}" aria-label="City, Province" aria-describedby="listingCityProvinceLabel">
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
                          <img src="/smart/resources/images/room/deposit.png" width="15px;" height="15px;" data-parent="#uploadForm">
                        </span>
                      </div>
                      <select name="bp_type" class="form-control" id="listingCityProvince">
  						<option value="h">시간</option>
  						<option value="m">분</option>
                      </select>
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
                    <label class="form-label" for="listingAddress">주차시간</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingAddressLabel">
                          <img src="/smart/resources/images/room/premium.png" width="15px;" height="15px;" data-parent="#uploadForm">	
                        </span>
                      </div>
                		<input type="text" class="form-control" name="pb_time" id="listingCityProvince" aria-label="City, Province" aria-describedby="listingCityProvinceLabel">
                    </div>
                  </div>
                </div>
                <!-- End Input -->
              </div>
              <div class="col-lg-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-focus-state">
                    <label class="form-label" for="listingCityProvince">주차시간당 부과금액</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingCityProvinceLabel">
                          <img src="/smart/resources/images/room/deposit.png" width="15px;" height="15px;" data-parent="#uploadForm">
                        </span>
                      </div>
                      <input type="text" class="form-control" name="pb_price" id="listingCityProvince" aria-label="City, Province" aria-describedby="listingCityProvinceLabel">
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
                    <label class="form-label" for="listingAddress">시간초과당 부과시간</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingAddressLabel">
                          <img src="/smart/resources/images/room/premium.png" width="15px;" height="15px;" data-parent="#uploadForm">	
                        </span>
                      </div>
                		<input type="text" class="form-control" name="pb_free" id="listingCityProvince" aria-label="City, Province" aria-describedby="listingCityProvinceLabel">
                    </div>
                  </div>
                </div>
                <!-- End Input -->
              </div>
              <div class="col-lg-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-focus-state">
                    <label class="form-label" for="listingCityProvince">초과시간당 부과금액</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingCityProvinceLabel">
                          <img src="/smart/resources/images/room/deposit.png" width="15px;" height="15px;" data-parent="#uploadForm">
                        </span>
                      </div>
                      <input type="text" class="form-control" name="pb_free_price" id="listingCityProvince" aria-label="City, Province" aria-describedby="listingCityProvinceLabel">
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
                    <label class="form-label" for="listingAddress">등록자</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingAddressLabel">
                          <img src="/smart/resources/images/room/premium.png" width="15px;"height="15px;" data-parent="#uploadForm">	
                        </span>
                      </div>
                		<input type="text" class="form-control" name="reg_id" id="listingCityProvince" value="${reg_id}" aria-label="City, Province" aria-describedby="listingCityProvinceLabel">
                    </div>
                  </div>
                </div>
                <!-- End Input -->
              </div>
              <div class="col-lg-6 mb-3">
                
                </div>
                <!-- End Input -->
              </div>
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