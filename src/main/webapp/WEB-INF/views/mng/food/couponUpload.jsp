<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp" %>
<%@ include file="../../common/header.jsp" %>
<%@ include file="../../common/foodMiddleHeaderManage.jsp" %>
<body>
<div class="bg-light">
      <div class="container space-2">
        <form id="changePasswordForm" class="js-validate" novalidate="novalidate">
          <!-- Input -->
          <div class="js-form-message mb-4">
            <label class="form-label">
              	매장명
            </label>

            <div class="form-group">
              <input type="text" class="form-control" name="currentPassword" placeholder="매장명 가져오고" readonly="readonly">
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
                <input id="newPassword" type="text" class="form-control" name="newPassword" placeholder="쿠폰명 입력하세요.">
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
              <input type="text" class="form-control" name="confirmNewPassword" placeholder="가격을 입력하세요.">
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
                          data-success-class="u-has-success">
                    <option value="">Select month</option>
                    <option value="birthMonthSelect1">1월</option>
                    <option value="birthMonthSelect2">2월</option>
                    <option value="birthMonthSelect3">3월</option>
                    <option value="birthMonthSelect4" selected="selected">4월</option>
                    <option value="birthMonthSelect5">5월</option>
                    <option value="birthMonthSelect6">6월</option>
                    <option value="birthMonthSelect7">7월</option>
                    <option value="birthMonthSelect8">8월</option>
                    <option value="birthMonthSelect9">9월</option>
                    <option value="birthMonthSelect10">10월</option>
                    <option value="birthMonthSelect11">11월</option>
                    <option value="birthMonthSelect12">12월</option>
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
                          data-success-class="u-has-success">
                    <option value="">Select date</option>
                    <option value="birthDateSelect1">1</option>
                    <option value="birthDateSelect2">2</option>
                    <option value="birthDateSelect3">3</option>
                    <option value="birthDateSelect4">4</option>
                    <option value="birthDateSelect5">5</option>
                    <option value="birthDateSelect6">6</option>
                    <option value="birthDateSelect7">7</option>
                    <option value="birthDateSelect8">8</option>
                    <option value="birthDateSelect9">9</option>
                    <option value="birthDateSelect10">10</option>
                    <option value="birthDateSelect11">11</option>
                    <option value="birthDateSelect12" selected="selected">12</option>
                    <option value="birthDateSelect13">13</option>
                    <option value="birthDateSelect14">14</option>
                    <option value="birthDateSelect15">15</option>
                    <option value="birthDateSelect16">16</option>
                    <option value="birthDateSelect17">17</option>
                    <option value="birthDateSelect18">18</option>
                    <option value="birthDateSelect19">19</option>
                    <option value="birthDateSelect20">20</option>
                    <option value="birthDateSelect21">21</option>
                    <option value="birthDateSelect22">22</option>
                    <option value="birthDateSelect23">23</option>
                    <option value="birthDateSelect24">24</option>
                    <option value="birthDateSelect25">25</option>
                    <option value="birthDateSelect26">26</option>
                    <option value="birthDateSelect27">27</option>
                    <option value="birthDateSelect28">28</option>
                    <option value="birthDateSelect29">29</option>
                    <option value="birthDateSelect30">30</option>
                    <option value="birthDateSelect31">31</option>
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
                          data-success-class="u-has-success">
                    <option value="birthYearSelect2015">2015</option>
                    <option value="birthYearSelect2016">2016</option>
                    <option value="birthYearSelect2017">2017</option>
                    <option value="birthYearSelect2016">2018</option>
                    <option value="birthYearSelect2017" selected="selected">2019</option>
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
                          data-success-class="u-has-success">
                    <option value="">Select month</option>
                    <option value="birthMonthSelect1">1월</option>
                    <option value="birthMonthSelect2">2월</option>
                    <option value="birthMonthSelect3">3월</option>
                    <option value="birthMonthSelect4" selected="selected">4월</option>
                    <option value="birthMonthSelect5">5월</option>
                    <option value="birthMonthSelect6">6월</option>
                    <option value="birthMonthSelect7">7월</option>
                    <option value="birthMonthSelect8">8월</option>
                    <option value="birthMonthSelect9">9월</option>
                    <option value="birthMonthSelect10">10월</option>
                    <option value="birthMonthSelect11">11월</option>
                    <option value="birthMonthSelect12">12월</option>
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
                          data-success-class="u-has-success">
                    <option value="">Select date</option>
                    <option value="birthDateSelect1">1</option>
                    <option value="birthDateSelect2">2</option>
                    <option value="birthDateSelect3">3</option>
                    <option value="birthDateSelect4">4</option>
                    <option value="birthDateSelect5">5</option>
                    <option value="birthDateSelect6">6</option>
                    <option value="birthDateSelect7">7</option>
                    <option value="birthDateSelect8">8</option>
                    <option value="birthDateSelect9">9</option>
                    <option value="birthDateSelect10">10</option>
                    <option value="birthDateSelect11">11</option>
                    <option value="birthDateSelect12" selected="selected">12</option>
                    <option value="birthDateSelect13">13</option>
                    <option value="birthDateSelect14">14</option>
                    <option value="birthDateSelect15">15</option>
                    <option value="birthDateSelect16">16</option>
                    <option value="birthDateSelect17">17</option>
                    <option value="birthDateSelect18">18</option>
                    <option value="birthDateSelect19">19</option>
                    <option value="birthDateSelect20">20</option>
                    <option value="birthDateSelect21">21</option>
                    <option value="birthDateSelect22">22</option>
                    <option value="birthDateSelect23">23</option>
                    <option value="birthDateSelect24">24</option>
                    <option value="birthDateSelect25">25</option>
                    <option value="birthDateSelect26">26</option>
                    <option value="birthDateSelect27">27</option>
                    <option value="birthDateSelect28">28</option>
                    <option value="birthDateSelect29">29</option>
                    <option value="birthDateSelect30">30</option>
                    <option value="birthDateSelect31">31</option>
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
                    <option value="birthYearSelect2015">2015</option>
                    <option value="birthYearSelect2016">2016</option>
                    <option value="birthYearSelect2017">2017</option>
                    <option value="birthYearSelect2016">2018</option>
                    <option value="birthYearSelect2017" selected="selected">2019</option>
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