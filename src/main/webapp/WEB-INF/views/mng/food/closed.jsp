<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp" %>
<%@ include file="../../common/header.jsp" %>
<%@ include file="../../common/foodMiddleHeaderManage.jsp" %>
<body>

<div class="bg-light">
	<div class="col-sm-6 col-lg-4 order-sm-1 container space-2">
         <h2 class="h1 text-primary font-weight-semi-bold">매장이름</h2>
         <small class="d-block text-muted">tel: 매장 전화번호</small>
      </div>
      <div class="col-sm-6 col-lg-4 order-sm-4 container space-2">
        <form id="changePasswordForm" class="js-validate" novalidate="novalidate">
          <div class="js-form-message mb-4">
          <label class="form-label">
            	휴무 시작
          </label>

          <div class="row">
            <!-- Input -->
            <div class="col-md-4 mb-4 mb-sm-4">
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
            <div class="col-sm-4 col-md-4 mb-3 mb-sm-4">
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
            <div class="col-sm-4 col-md-4 mb-3 mb-sm-4">
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
            	휴무 종료
          	</label>
          	<div class="row">
            <!-- Input -->
            <div class="col-md-4 mb-4 mb-sm-4">
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
            <div class="col-sm-4 col-md-4 mb-3 mb-sm-4">
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
            <div class="col-md-4 mb-4 mb-sm-4">
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

          <div class="w-lg-50">
            <!-- Buttons -->
            <button type="submit" class="btn btn-sm btn-primary transition-3d-hover mr-1">등록</button>
            <button type="submit" class="btn btn-sm btn-soft-secondary transition-3d-hover">수정</button>
            <!-- End Buttons -->
          </div>
        </form>
      </div>
    </div>
<!-- footer start -->
<%@ include file="../../common/footer.jsp" %>
<!-- footer end -->
</body>
</html>