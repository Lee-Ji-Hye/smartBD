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
          <div class="mb-4">
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
                    <option value="2017">2017</option>
                    <option value="2018">2018</option>
                    <option value="2019" selected="selected">2019</option>
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
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12" selected="selected">12</option>
                    <option value="13">13</option>
                    <option value="14">14</option>
                    <option value="15">15</option>
                    <option value="16">16</option>
                    <option value="17">17</option>
                    <option value="18">18</option>
                    <option value="19">19</option>
                    <option value="20">20</option>
                    <option value="21">21</option>
                    <option value="22">22</option>
                    <option value="23">23</option>
                    <option value="24">24</option>
                    <option value="25">25</option>
                    <option value="26">26</option>
                    <option value="27">27</option>
                    <option value="28">28</option>
                    <option value="29">29</option>
                    <option value="30">30</option>
                    <option value="31">31</option>
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
                    <option value="2017">2017</option>
                    <option value="2018">2018</option>
                    <option value="2019" selected="selected">2019</option>
                    
                   
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
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12" selected="selected">12</option>
                    <option value="13">13</option>
                    <option value="14">14</option>
                    <option value="15">15</option>
                    <option value="16">16</option>
                    <option value="17">17</option>
                    <option value="18">18</option>
                    <option value="19">19</option>
                    <option value="20">20</option>
                    <option value="21">21</option>
                    <option value="22">22</option>
                    <option value="23">23</option>
                    <option value="24">24</option>
                    <option value="25">25</option>
                    <option value="26">26</option>
                    <option value="27">27</option>
                    <option value="28">28</option>
                    <option value="29">29</option>
                    <option value="30">30</option>
                    <option value="31">31</option>
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
 <%@ include file="../../common/footer.jsp" %>
</body>
</html>