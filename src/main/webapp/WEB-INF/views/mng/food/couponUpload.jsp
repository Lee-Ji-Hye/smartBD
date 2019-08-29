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
                    <option value="2017년">2017년</option>
                    <option value="2018년">2018년</option>
                    <option value="2019년" selected="selected">2019년</option>
                  </select>
                </div>
              </div>
            </div>
            <!-- End Input -->

            <!-- Input -->
            <div class="col-sm-3 col-md-2 mb-3 mb-sm-4">
              <div class="js-form-message">
                <div class="form-group">
                  <select class="form-control custom-select" required
                          data-msg="Please select date."
                          data-error-class="u-has-error"
                          data-success-class="u-has-success"
                          name="f_start2">
                    <option value="">Select month</option>
                    <option value="1월">1월</option>
                    <option value="2월">2월</option>
                    <option value="3월">3월</option>
                    <option value="4월" selected="selected">4월</option>
                    <option value="5월">5월</option>
                    <option value="6월">6월</option>
                    <option value="7월">7월</option>
                    <option value="8월">8월</option>
                    <option value="9월">9월</option>
                    <option value="10월">10월</option>
                    <option value="11월">11월</option>
                    <option value="12월">12월</option>
                  </select>
                </div>
              </div>
            </div>
            <!-- End Input -->
            
            <!-- Input -->
            <div class="col-sm-3 col-md-2 mb-3 mb-sm-4">
              <div class="js-form-message">
                <div class="form-group">
                  <select class="form-control custom-select" required
                          data-msg="Please select year."
                          data-error-class="u-has-error"
                          data-success-class="u-has-success"
                           name="f_start3">
                   <option value="">Select date</option>
                    <option value="1일">1일</option>
                    <option value="2일">2일</option>
                    <option value="3일">3일</option>
                    <option value="4일">4일</option>
                    <option value="5일">5일</option>
                    <option value="6일">6일</option>
                    <option value="7일">7일</option>
                    <option value="8일">8일</option>
                    <option value="9일">9일</option>
                    <option value="10일">10일</option>
                    <option value="11일">11일</option>
                    <option value="12일" selected="selected">12일</option>
                    <option value="13일">13일</option>
                    <option value="14일">14일</option>
                    <option value="15일">15일</option>
                    <option value="16일">16일</option>
                    <option value="17일">17일</option>
                    <option value="18일">18일</option>
                    <option value="19일">19일</option>
                    <option value="20일">20일</option>
                    <option value="21일">21일</option>
                    <option value="22일">22일</option>
                    <option value="23일">23일</option>
                    <option value="24일">24일</option>
                    <option value="25일">25일</option>
                    <option value="26일">26일</option>
                    <option value="27일">27일</option>
                    <option value="28일">28일</option>
                    <option value="29일">29일</option>
                    <option value="30일">30일</option>
                    <option value="31일">31일</option>
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
                    <option value="2017년">2017년</option>
                    <option value="2018년">2018년</option>
                    <option value="2019년" selected="selected">2019년</option>
                    
                   
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
                    <option value="1월">1월</option>
                    <option value="2월">2월</option>
                    <option value="3월">3월</option>
                    <option value="4월" selected="selected">4월</option>
                    <option value="5월">5월</option>
                    <option value="6월">6월</option>
                    <option value="7월">7월</option>
                    <option value="8월">8월</option>
                    <option value="9월">9월</option>
                    <option value="10월">10월</option>
                    <option value="11월">11월</option>
                    <option value="12월">12월</option>
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
                    <option value="1일">1일</option>
                    <option value="2일">2일</option>
                    <option value="3일">3일</option>
                    <option value="4일">4일</option>
                    <option value="5일">5일</option>
                    <option value="6일">6일</option>
                    <option value="7일">7일</option>
                    <option value="8일">8일</option>
                    <option value="9일">9일</option>
                    <option value="10일">10일</option>
                    <option value="11일">11일</option>
                    <option value="12일" selected="selected">12일</option>
                    <option value="13일">13일</option>
                    <option value="14일">14일</option>
                    <option value="15일">15일</option>
                    <option value="16일">16일</option>
                    <option value="17일">17일</option>
                    <option value="18일">18일</option>
                    <option value="19일">19일</option>
                    <option value="20일">20일</option>
                    <option value="21일">21일</option>
                    <option value="22일">22일</option>
                    <option value="23일">23일</option>
                    <option value="24일">24일</option>
                    <option value="25일">25일</option>
                    <option value="26일">26일</option>
                    <option value="27일">27일</option>
                    <option value="28일">28일</option>
                    <option value="29일">29일</option>
                    <option value="30일">30일</option>
                    <option value="31일">31일</option>
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
 function inNumber(){
     if(event.keyCode<48 || event.keyCode>57){
    	 event.returnValue=false;
     }
 }
 </script>
 <%@ include file="../../common/footer.jsp" %>
</body>
</html>