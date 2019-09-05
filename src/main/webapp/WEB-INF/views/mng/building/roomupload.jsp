<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp" %>
<%@ include file="../../common/header.jsp" %>
 <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
 
   <style>
      input {
        vertical-align: middle;
      }
      input.form-text {
        border: 1px solid #bcbcbc;
        height: 28px;
      }
      input.img-button {
        background: url( "${resourceImg}/room/add-file.svg" ) no-repeat;
        border: none;
        width: 64px;
        height: 64px;
        cursor: pointer;
      }
    </style>
  <!-- ========== MAIN CONTENT ========== -->
  <main id="content" role="main">
    <!-- Upload Form Section -->
    <div class="container space-2">
      <div class="w-lg-75 mx-lg-auto">
        <!-- Title -->
        <div class="text-center mb-9">
          <h1 class="h2 font-weight-medium">방 <c:if test="${mode eq 'edit'}">수정</c:if> 
     	<c:if test="${mode == 'insert'}">등록</c:if>     
          페이지</h1>
          <p class="mb-0">올린다 가능 당신 매물</p>
          <p>Submissions which exceed maximum word counts will be edited.</p>
        </div>
        <!-- End Title -->
		
        <form id="uploadForm" class="js-validate svg-preloader" method="post" action="${path_m}/uploadPro">
         <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
		 <input type="hidden" name="mode" value="${mode}">
		 <input type="hidden" name="r_code" value="${dto.r_code}" />
        	
        	<c:if test="${mode eq 'edit'}">수정</c:if>
        	<c:if test="${mode == 'insert'}">등록</c:if>
          <!-- Listing Agent Information -->
          
          <!-- Type of Listing -->
          <div class="mb-10">
            <!-- Title -->
            <div class="border-bottom pb-3 mb-5">
              <h2 class="h6 text-secondary mb-0">매물 거래 타입 r_kind</h2>
            </div>
            <!-- End Title -->

            <!-- Radio Checkbox Group -->
            <div class="row mx-gutters-2">
              <div class="col-6 col-md-3 mb-3 mb-md-0">
                <div class="custom-control custom-radio custom-control-inline checkbox-outline text-center">
                  <input type="radio" id="Radio1" name="r_kind" value="RT" ${(dto.r_kind == "RT")? "checked" : "" } class="custom-control-input checkbox-outline__input">
                  <label class="checkbox-outline__label rounded py-3 px-1 mb-0" for="Radio1">
                    <img class="js-svg-injector w-50 mb-3" src="${resourceImg}/room/officeworker.png" alt="SVG"
                         data-parent="#uploadForm">
                    <span class="d-block">사무실</span>
                  </label>
                </div>
              </div>
              <div class="col-6 col-md-3 mb-3 mb-md-0">
                <div class="custom-control custom-radio custom-control-inline checkbox-outline text-center">
                  <input type="radio" id="Radio2" name="r_kind" value="RR" ${(dto.r_kind == "RR")? "checked" : ""} class="custom-control-input checkbox-outline__input" >
                  <label class="checkbox-outline__label rounded py-3 px-1 mb-0" for="Radio2">
                    <img class="js-svg-injector w-50 mb-3" src="${resourceImg}/room/partners.png" alt="SVG"
                         data-parent="#uploadForm">
                    <span class="d-block">회의실</span>
                  </label>
                </div>
              </div>
              <div class="col-6 col-md-3 mb-3 mb-md-0">
                <div class="custom-control custom-radio custom-control-inline checkbox-outline text-center">
                  <input type="radio" id="Radio3" name="r_kind" ${(dto.r_kind == "ST")? "checked" : "" } value="ST" class="custom-control-input checkbox-outline__input" >
                  <label class="checkbox-outline__label rounded py-3 px-1 mb-0" for="Radio3">
                    <img class="js-svg-injector w-50 mb-3" src="${resourceImg}/room/mall.png" alt="SVG"
                         data-parent="#uploadForm">
                    <span class="d-block">상가</span>
                  </label>
                </div>
              </div>
              
            </div>
            <!-- End Radio Checkbox Group -->
          </div>
          <!-- End Type of Listing -->
          

          <!-- Type of Listing -->
          <div class="mb-10">
            <!-- Title -->
            <div class="border-bottom pb-3 mb-5">
              <h2 class="h6 text-secondary mb-0">전세/월세 r_type</h2>
            </div>
            <!-- End Title -->

            <!-- Radio Checkbox Group -->
            <div class="row mx-gutters-2">
              <div class="col-6 col-md-3 mb-3 mb-md-0">
                <div class="custom-control custom-radio custom-control-inline checkbox-outline text-center">
                  <input type="radio" id="Radio5" name="r_type" value="월세" ${(dto.r_type == "월세")? "checked" : ""} class="custom-control-input checkbox-outline__input">
                  <label class="checkbox-outline__label rounded py-3 px-1 mb-0" for="Radio5">
                    <img class="js-svg-injector w-50 mb-3" src="${resourceImg}/room/calendar.png" alt="SVG">
                    <span class="d-block">월세</span>
                  </label>
                </div>
              </div>
              <div class="col-6 col-md-3 mb-3 mb-md-0">
                <div class="custom-control custom-radio custom-control-inline checkbox-outline text-center">
                  <input type="radio" id="Radio6" name="r_type" value="전세" ${(dto.r_type == "전세")? "checked" : ""} class="custom-control-input checkbox-outline__input" >
                  <label class="checkbox-outline__label rounded py-3 px-1 mb-0" for="Radio6">
                    <img class="js-svg-injector w-50 mb-3" src="${resourceImg}/room/charter.png" alt="SVG"
                         data-parent="#uploadForm">
                    <span class="d-block">전세</span>
                  </label>
                </div>
              </div>
              
            </div>
            <!-- End Radio Checkbox Group -->
          </div>
          <!-- End Type of Listing -->
          
          

          <!-- Listing Information -->
          <div class="mb-7">
            <!-- Title -->
            <div class="border-bottom pb-3 mb-5">
              <h2 class="h6 text-secondary mb-0">상세 정보</h2>
            </div>
            <!-- End Title -->

            <!-- Input -->
            <div class="form-group mb-5">
              <div class="js-focus-state">
                <label class="form-label" for="listingPrice">전세/월세 금액</label>
                <div class="input-group">
                  <div class="input-group-prepend">
                    <span class="input-group-text" id="listingPriceLabel">
                      <img  src="${resourceImg}/room/coin.png" width=15px; height=15px;
                         data-parent="#uploadForm">
                    </span>
                  </div>
                  <input type="text" class="form-control" name="r_price" id="listingPrice" value="${dto.r_price}" placeholder="r_price" aria-label="Price" aria-describedby="listingPriceLabel">
                </div>
              </div>
            </div>
            <!-- End Input -->

            <div class="row">
              <div class="col-lg-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-focus-state">
                    <label class="form-label" for="listingAddress">권리금(상가만적어주세요)</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingAddressLabel">
                          <img  src="${resourceImg}/room/premium.png" width=15px; height=15px;
                         data-parent="#uploadForm">	
                        </span>
                      </div>
                      <input type="text" class="form-control" name="r_premium" id="listingAddress" value="${dto.r_premium}" placeholder="r_premium" aria-label="Address" aria-describedby="listingAddressLabel" autocomplete="off">
                    </div>
                  </div>
                </div>
                <!-- End Input -->
              </div>

              <div class="col-lg-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-focus-state">
                    <label class="form-label" for="listingCityProvince">보증금</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingCityProvinceLabel">
                          <img  src="${resourceImg}/room/deposit.png" width=15px; height=15px;
                         data-parent="#uploadForm">
                        </span>
                      </div>
                      <input type="text" class="form-control" name="r_deposit" id="listingCityProvince" value="${dto.r_deposit}" placeholder="r_deposit" aria-label="City, Province" aria-describedby="listingCityProvinceLabel">
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
                    <label class="form-label" for="listingLotSize">평수 (㎡ 기준)</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingLotSizeLabel">
                          <img  src="${resourceImg}/room/ruler.png" width=15px; height=15px;
                         data-parent="#uploadForm">
                        </span>
                      </div>
                      <input type="text" class="form-control" name="r_area" id="listingLotSize" value="${dto.r_area}" placeholder="r_area" aria-label="Lot size" aria-describedby="listingLotSizeLabel" autocomplete="off">
                    </div>
                  </div>
                </div>
                <!-- End Input -->
              </div>

              <div class="col-lg-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-focus-state">
                    <label class="form-label" for="listingPostalCode">호 수</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingPostalCodeLabel">
                          <img  src="${resourceImg}/room/door.png" width=15px; height=15px;
                         data-parent="#uploadForm">
                        </span>
                      </div>
                      <input type="text" class="form-control" name="r_name" id="listingPostalCode" value="${dto.r_name}" placeholder="r_name" aria-label="Postal code" aria-describedby="listingPostalCodeLabel" autocomplete="off">
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
                    <label class="form-label" for="listingBedroom">화장실</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingBedroomLabel">
                          <img  src="${resourceImg}/room/toilet1.png" width=15px; height=15px;
                         data-parent="#uploadForm">
                        </span>
                      </div>
                      
                      <select class="custom-select" name="r_toilet" id="listingBedroom"  aria-describedby="listingBedroomLabel">
                        <option >r_toilet</option>
                        <option value="1" ${(dto.r_toilet == "1")? "selected" : "" }>1</option>
                        <option value="2" ${(dto.r_toilet == "2")? "selected" : "" }>2</option>
                        <option value="3" ${(dto.r_toilet == "3")? "selected" : "" }>3</option>
                        <option value="4" ${(dto.r_toilet == "4")? "selected" : "" }>4</option>
                        <option value="5+" ${(dto.r_toilet == "5+")? "selected" : "" }>5+</option>
                      </select>
                    </div>
                  </div>
                </div>
                <!-- End Input -->
              </div>

              <div class="col-lg-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-focus-state">
                    <label class="form-label" for="listingPostalCode">층 수</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingPostalCodeLabel">
                          <img  src="${resourceImg}/room/floor.png" width=15px; height=15px;
                         data-parent="#uploadForm">
                        </span>
                      </div>
                      <input type="text" class="form-control" name="r_floor" id="listingPostalCode" value="${dto.r_floor}" placeholder="r_floor" aria-label="Postal code" aria-describedby="listingPostalCodeLabel" autocomplete="off">
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
                    <label class="form-label" for="listingLotSize">입주가능일</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingLotSizeLabel">
                          <img  src="${resourceImg}/room/moving.png" width=15px; height=15px;
                         data-parent="#uploadForm">
                        </span>
                      </div>
                      <input type="text" class="form-control" name="r_able_date" id="listingLotSize" value="${dto.r_able_date}" placeholder="r_able_date" aria-label="Lot size" aria-describedby="listingLotSizeLabel" autocomplete="off">
                    </div>
                  </div>
                </div>
                <!-- End Input -->
              </div>

              <div class="col-lg-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-focus-state">
                    <label class="form-label" for="listingPostalCode">독립 공간</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingPostalCodeLabel">
                          <img  src="${resourceImg}/room/retiring_room.png" width=15px; height=15px;
                         data-parent="#uploadForm">
                        </span>
                      </div>
                      <input type="text" class="form-control" name="r_indi_space" id="listingPostalCode" value="${dto.r_indi_space}" placeholder="r_indi_space" aria-label="Postal code" aria-describedby="listingPostalCodeLabel" autocomplete="off">
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
                    <label class="form-label" for="listingPostalCode">관리비</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingPostalCodeLabel">
                          <img  src="${resourceImg}/room/gear.png" width=15px; height=15px;
                         data-parent="#uploadForm">
                        </span>
                      </div>
                      <input type="text" class="form-control" name="r_ofer_fee" id="listingPostalCode" value="${dto.r_ofer_fee}" placeholder="r_ofer_fee" aria-label="Postal code" aria-describedby="listingPostalCodeLabel" autocomplete="off">
                    </div>
                  </div>
                </div>
                <!-- End Input -->
              </div>

              <div class="col-lg-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-focus-state">
                    <label class="form-label" for="listingPostalCode">비공개메모</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingPostalCodeLabel">
                          <img  src="${resourceImg}/room/confidential.png" width=15px; height=15px;
                         data-parent="#uploadForm">
                        </span>
                      </div>
                      <input type="text" class="form-control" name="r_pmemo" id="listingPostalCode" value="${dto.r_pmemo}" placeholder="r_pmemo" aria-label="Postal code" aria-describedby="listingPostalCodeLabel" autocomplete="off">
                    </div>
                  </div>
                </div>
                <!-- End Input -->
              </div>
            </div>

            <div class="row">
              <div class="col-lg-7 mb-3">
                <!-- Input -->
                <div class="js-form-message mb-3">
                  <label class="form-label">
                    	상세 설명
                   </label>

                  <div class="input-group">
                    <textarea class="form-control" rows="6" name="r_desc"  placeholder="r_desc" aria-label="Listing description" 
                              >${dto.r_desc}</textarea>
                  </div>
                </div>
                <!-- End Input -->
              </div>

              

         
			
          <!-- 이미지등록 -->
          <div class="mb-7">
            <!-- Title -->
            <div class="border-bottom pb-3 mb-5">
              <!-- <h2 class="h6 text-secondary mb-0">이미지 등록</h2> -->
            </div>
            <!-- End Title -->

            <!-- File Attachment Input -->
            <div class="u-dropzone">
              <div class="dz-message">
                <%-- <img class="js-svg-injector max-width-10 mb-3" src="${resourceImg}/room/add-file.svg" alt="SVG"
                     data-parent="#uploadForm"> --%>
                      <input type="button" class="img-button">
                <span class="d-block mb-2">대표이미지를 등록해주세요</span>
                <small class="d-block text-muted">Maximum file size is 2MB</small>
              </div>
            </div>
            <!-- End File Attachment Input -->
          </div>
          <!-- End Upload Images -->
          


			

          <button type="submit" id="editBtn" class="btn btn-primary btn-block transition-3d-hover">${(mode == 'insert')? "등록" : "수정"}</button> 
          
        </form>
      </div>
    </div>
    <!-- End Upload Form Section -->
  </main>
  <!-- ========== END MAIN CONTENT ========== -->
<%@ include file="../../common/footer.jsp" %>
