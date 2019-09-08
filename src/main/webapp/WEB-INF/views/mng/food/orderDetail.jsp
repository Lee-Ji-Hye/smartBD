<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp" %>
<%@ include file="../../common/header.jsp" %> 
<%@ include file="../../common/foodMiddleHeaderManage.jsp" %>

<!-- Main -->
<div class="container space-2 px-md-7 px-lg-11">
      <div class="card bg-img-hero" style="background-image: url(../../assets/svg/components/bg-elements-6.svg);">
        <div class="card-body p-5 p-md-7 p-lg-11">
          <div class="row justify-content-lg-between align-items-sm-center mb-11">
            <div class="col-sm-6 col-lg-4 order-sm-2 text-sm-right mb-5 mb-sm-0">
              <h1 class="h2 font-weight-medium mb-0">
                	주문상세코드
                <small class="d-block">${dvo.f_odetail_code}</small>
              </h1>
            </div>

            <div class="col-sm-6 col-lg-4 order-sm-1">
              <!-- Logo -->
             <!--  <img class="mb-2" src="../../assets/svg/logos/logo-short.svg" alt="Logo"> -->
              <h2 class="h1 text-primary font-weight-semi-bold">매장이름</h2>
              <!-- End Logo -->

              <!-- Address -->
              <address>
                	매장주소
              </address>
              <small class="d-block text-muted">tel: 매장 전화번호</small>
              <!-- End Address -->
            </div>
          </div>

          <!-- Bill To -->
          <div class="row justify-content-md-between mb-7">
            <div class="col-md-5 col-lg-4">
              <h3 class="h5">주문 내역</h3>
              <span class="d-block">주문자 </span>
              <address class="text-secondary mb-0">
               		${dvo.userid}
              </address>
            </div>

            <div class="col-md-5 col-lg-4 mt-6">
              <dl class="row mb-0">
                <dt class="col-5 col-md-6 font-weight-normal text-secondary">테이크아웃</dt>
                <dd class="col-7 col-md-6 font-weight-medium">${dvo.f_takeout}</dd>
              </dl>
              <dl class="row mb-0">
                <dt class="col-5 col-md-6 font-weight-normal text-secondary">픽업시간</dt>
                <dd class="col-7 col-md-6 font-weight-medium">${dvo.f_receive_time}</dd>
              </dl>
            </div>
          </div>
          <!-- End Bill To -->

          <!-- Table -->
          <table class="table table-heighlighted font-size-1 mb-9">
            <thead>
              <tr class="text-uppercase text-secondary">
                <th scope="col" class="font-weight-medium">메뉴명</th>
                <th scope="col" class="font-weight-medium">수량</th>
                <th scope="col" class="font-weight-medium">가격</th>
                <th scope="col" class="font-weight-medium text-right">요청사항</th>
              </tr>
            </thead>
            <c:forEach var="dvo" items=""  varStatus="status">
            <tbody>
              <tr>
                <th scope="row" class="font-weight-normal">${dvo.f_name}</th>
                <td>${dvo.f_cnt}</td>
                <td>${dvo.f_price}</td>
                <td class="text-right">${dvo.f_message}</td>
              </tr>
            </tbody>
              <tr class="h6">
                <td scope="row">Total</td>
                <td colspan="3" class="text-right">${dvo.f_amount}</td>
              </tr>
            </c:forEach>
          </table>
          <!-- End Table -->

          <!-- Contacts -->
          <div class="row justify-content-lg-between">
            <div class="col-md-8 col-lg-4 order-md-2 mb-5 mb-md-0">
              <h4 class="h6">Thank you!</h4>
              <p class="font-size-1">시스템을 이용해주셔서 감사합니다!!</p>
              <span class="d-block">
                <small class="font-weight-medium">email:</small>
                <small class="text-muted">시스템관리자정보?</small>
              </span>
              <small class="font-weight-medium">telephone:</small>
              <small class="text-muted">+1 (062) 109-9222</small>
            </div>

            <div class="col-md-4 col-lg-3 order-md-1 align-self-end">
              <p class="small text-muted mb-0">© 2019 Smart.</p>
            </div>
          </div>
          <!-- End Contacts -->
        </div>
      </div>

      <div class="text-right mt-5">
        <button type="button" class="btn btn-primary btn-sm-wide transition-3d-hover" onclick="window.print();return false;">
          <span class="fas fa-print mr-2"></span>
          	주문승인
        </button>
      </div>
    </div>
 <!-- footer start -->
<%@ include file="../../common/footer.jsp" %>
<!-- footer end -->
