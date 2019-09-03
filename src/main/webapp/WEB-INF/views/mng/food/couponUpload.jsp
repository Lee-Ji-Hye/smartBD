<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp" %>
<%@ include file="../../common/header.jsp" %>
<%@ include file="../../common/foodMiddleHeaderManage.jsp" %>
<body>
<div class="bg-light">
      <div class="container space-2">
        <form id="changePasswordForm" class="js-validate" novalidate="novalidate" action="${path}/cp_manager/cpmn/instPro?${_csrf.parameterName}=${_csrf.token}">
          <!-- Input -->
          <div class="js-form-message mb-4">
            <label class="form-label">
              	매장명
            </label>

            <div class="form-group">
              <input type="text" class="form-control" name="comp_org" placeholder="매장명 가져오고" readonly="readonly">
            </div>
          </div>
          <!-- End Input -->

          <!-- Input -->
          <div class="row">
        	<div class="col-md-6 mb-3 mb-sm-4"> 
            <div class="js-form-message">
              <label class="form-label">
                	쿠폰명
              </label>

              <div class="form-group">
                <input id="newPassword" type="text" class="form-control" name="f_coupon_name" placeholder="쿠폰명 입력하세요.">
              </div>
           </div>
          </div>
          <!-- End Input -->
          
          <!-- Input -->
          <div class="col-md-6 mb-3 mb-sm-4">
            <div class="js-form-message">
              <label class="form-label">
                	발급수
              </label>

              <div class="form-group">
                <input id="newPassword" type="text" class="form-control" name="f_coupon_count" placeholder="발급장수를 입력하세요." onkeydown="return inNumber();">
              </div>
            </div>
          </div>
          </div>
          <!-- End Input -->

          <!-- Input -->
          <div class="js-form-message mb-4">
            <label class="form-label">
             	쿠폰가격
            </label>

            <div class="form-group">
              <input type="text" class="form-control" name="f_coupon_price" placeholder="가격을 입력하세요.">
            </div>
          </div>
          <!-- End Input -->
          <div class="js-form-message mb-4">
          <label class="form-label">
            	사용기한
          </label>
          
          <div class="row">
          
            <!-- Input -->
            <div class="col-md-2 mb-3 mb-sm-4">
              <div class="js-form-message">
                <div class="form-group">
                  <select class="form-control custom-select" required
                          data-msg="Please select month."
                          data-error-class="u-has-error"
                          data-success-class="u-has-success"
                          name="f_start1">
                    <option value="2017">2017년</option>
                    <option value="2018">2018년</option>
                    <option value="2019" selected="selected">2019년</option>
                  </select>
                </div>
              </div>
            </div>
            <!-- End Input -->

            <!-- Input -->
            <div class="col-sm-4 col-md-2 mb-3 mb-sm-4">
              <div class="js-form-message">
                <div class="form-group">
                  <select class="form-control custom-select" required
                          data-msg="Please select date."
                          data-error-class="u-has-error"
                          data-success-class="u-has-success"
                          name="f_start2">
                    <option value="">Select month</option>
                    <option value="1">1월</option>
                    <option value="2">2월</option>
                    <option value="3">3월</option>
                    <option value="4" selected="selected">4월</option>
                    <option value="5">5월</option>
                    <option value="6">6월</option>
                    <option value="7">7월</option>
                    <option value="8">8월</option>
                    <option value="9">9월</option>
                    <option value="10">10월</option>
                    <option value="11">11월</option>
                    <option value="12">12월</option>
                  </select>
                </div>
              </div>
            </div>
            <!-- End Input -->
            
            <!-- Input -->
            <div class="col-sm-4 col-md-2 mb-3 mb-sm-4">
              <div class="js-form-message">
                <div class="form-group">
                  <select class="form-control custom-select" required
                          data-msg="Please select year."
                          data-error-class="u-has-error"
                          data-success-class="u-has-success"
                           name="f_start3">
                   <option value="">Select date</option>
                    <option value="1">1일</option>
                    <option value="2">2일</option>
                    <option value="3">3일</option>
                    <option value="4">4일</option>
                    <option value="5">5일</option>
                    <option value="6">6일</option>
                    <option value="7">7일</option>
                    <option value="8">8일</option>
                    <option value="9">9일</option>
                    <option value="10">10일</option>
                    <option value="11">11일</option>
                    <option value="12" selected="selected">12일</option>
                    <option value="13">13일</option>
                    <option value="14">14일</option>
                    <option value="15">15일</option>
                    <option value="16">16일</option>
                    <option value="17">17일</option>
                    <option value="18">18일</option>
                    <option value="19">19일</option>
                    <option value="20">20일</option>
                    <option value="21">21일</option>
                    <option value="22">22일</option>
                    <option value="23">23일</option>
                    <option value="24">24일</option>
                    <option value="25">25일</option>
                    <option value="26">26일</option>
                    <option value="27">27일</option>
                    <option value="28">28일</option>
                    <option value="29">29일</option>
                    <option value="30">30일</option>
                    <option value="31">31일</option>
                  </select>
                </div>
              </div>
            </div>
            </div>
            <!-- End Input -->

            <div class="js-form-message mb-4">
            <label class="form-label">
            	만료기한
          	</label>
          	<div class="row">
            <!-- Input -->
            <div class="col-md-2 mb-3 mb-sm-4">
              <div class="js-form-message">
                <div class="form-group">
                  <select class="form-control custom-select" required
                          data-msg="Please select month."
                          data-error-class="u-has-error"
                          data-success-class="u-has-success"
                          name="f_end1">
                    <option value="2017">2017년</option>
                    <option value="2018">2018년</option>
                    <option value="2019" selected="selected">2019년</option>
                  </select>
                </div>
              </div>
            </div>
            <!-- End Input -->

            <!-- Input -->
            <div class="col-sm-4 col-md-2 mb-3 mb-sm-4">
              <div class="js-form-message">
                <div class="form-group">
                  <select class="form-control custom-select" required
                          data-msg="Please select date."
                          data-error-class="u-has-error"
                          data-success-class="u-has-success"
                          name="f_end2">
                     <option value="">Select month</option>
                    <option value="1">1월</option>
                    <option value="2">2월</option>
                    <option value="3">3월</option>
                    <option value="4" selected="selected">4월</option>
                    <option value="5">5월</option>
                    <option value="6">6월</option>
                    <option value="7">7월</option>
                    <option value="8">8월</option>
                    <option value="9">9월</option>
                    <option value="10">10월</option>
                    <option value="11">11월</option>
                    <option value="12">12월</option>
                  </select>
                </div>
              </div>
            </div>
            <!-- End Input -->

             <!-- Input -->
            <div class="col-sm-4 col-md-2 mb-3 mb-sm-4">
              <div class="js-form-message">
                <div class="form-group">
                  <select class="form-control custom-select" required
                          data-msg="Please select year."
                          data-error-class="u-has-error"
                          data-success-class="u-has-success">
                    <option value="">Select date</option>
                    <option value="1">1일</option>
                    <option value="2">2일</option>
                    <option value="3">3일</option>
                    <option value="4">4일</option>
                    <option value="5">5일</option>
                    <option value="6">6일</option>
                    <option value="7">7일</option>
                    <option value="8">8일</option>
                    <option value="9">9일</option>
                    <option value="10">10일</option>
                    <option value="11">11일</option>
                    <option value="12" selected="selected">12일</option>
                    <option value="13">13일</option>
                    <option value="14">14일</option>
                    <option value="15">15일</option>
                    <option value="16">16일</option>
                    <option value="17">17일</option>
                    <option value="18">18일</option>
                    <option value="19">19일</option>
                    <option value="20">20일</option>
                    <option value="21">21일</option>
                    <option value="22">22일</option>
                    <option value="23">23일</option>
                    <option value="24">24일</option>
                    <option value="25">25일</option>
                    <option value="26">26일</option>
                    <option value="27">27일</option>
                    <option value="28">28일</option>
                    <option value="29">29일</option>
                    <option value="30">30일</option>
                    <option value="31">31일</option>
                  </select>
                </div>
              </div>
            </div>
            </div>
            <!-- End Input -->

			<br><br>
          <div class="w-lg-100">
            <!-- Buttons -->
            <div style="text-align:center">
	            <button type="submit" class="btn btn-sm btn-primary transition-3d-hover mr-1">등록</button>
	            <button type="submit" class="btn btn-sm btn-soft-secondary transition-3d-hover">수정</button>
            </div>
            <!-- End Buttons -->
          </div>
        </form>
      </div>
    </div>
 
 
 <script type="text/javascript">
  
//넘버체크
 function inNumber(){ // 0~48 , 58~
     if((event.keyCode<48 || event.keyCode>57) && event.keyCode!=8){
    	 event.returnValue=false;
     }
 }
 </script>
 <%@ include file="../../common/footer.jsp" %>
</body>
</html>