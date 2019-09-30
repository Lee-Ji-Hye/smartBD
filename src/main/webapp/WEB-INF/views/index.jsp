<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common/setting.jsp" %>
<%@ include file="./common/header.jsp"%>

  <!-- ========== MAIN CONTENT ========== -->
  <main id="content" role="main">
    <!-- Hero Section -->
    <div class="d-lg-flex position-relative">
      <div class="container d-lg-flex align-items-lg-center space-top-2 space-top-md-5 space-lg-0 min-height-lg-100vh">
        <!-- Content -->
        <div class="row w-100">
          <div class="col-lg-5">
            <h1 class="display-4 font-size-md-down-5 mb-3">Introducing Smart</h1>
            <p>
              Your company will look
              <span class="text-primary">
                <strong class="u-text-animation u-text-animation--typing">perfect in ever</strong><span class="typed-cursor">|</span>
              </span>
              <br>
              Attract more visitors, and win more business with Front template.
            </p>
          </div>
        </div>
        <!-- End Content -->

        <!-- SVG Background -->
        <div id="SVGMainHero" class="col-lg-9 col-xl-7 d-none d-lg-block position-absolute top-0 right-0 pr-0" style="margin-top: 105.6px;">
          <figure class="ie-main-hero">
     		<img style="width:60%;height:350px;margin-left: 20%;" src="${resourceImg}/img4.png" onerror='this.src="${resourceImg}/common/noimage_1.jpg"' >
          </figure>
        </div>
        <!-- End SVG Background -->
      </div>
    </div>
    <!-- End Hero Section -->

    <!-- Icon Blocks Section -->
    <div class="container space-top-3 space-bottom-md-3 space-bottom-2" style="padding-top:0rem !important;">
      <!-- Title -->
      <div class="w-md-80 w-lg-50 text-center mx-md-auto mb-9">
        <span class="btn btn-xs btn-soft-success btn-pill mb-2">What we do?</span>
        <h2>Smart makes designing easy and performance fast</h2>
      </div>
      <!-- End Title -->

      <div class="row">
        <div class="col-md-4 mb-7">
          <div class="text-center px-lg-3">
            <span class="btn btn-icon btn-lg btn-soft-danger rounded-circle mb-5">
              <span class="fab fa-2x btn-icon__inner btn-icon__inner-bottom-minus"></span>
            </span>
            <h3 class="h5">주차 관리 시스템</h3>
            <p class="mb-md-0">입출차 자동관리</p>
            <p class="mb-md-0">주차권 결제</p>
          </div>
        </div>

        <div class="col-md-4 mb-7">
          <div class="text-center px-lg-3">
            <span class="btn btn-icon btn-lg btn-soft-primary rounded-circle mb-5">
              <span class="fas fa-2x btn-icon__inner btn-icon__inner-bottom-minus"></span>
            </span>
            <h3 class="h5">상가 임대 & 회의실 예약</h3>
            <p class="mb-md-0">중개인을 거치지 않는 스마트컨트랙트</p>
            <p class="mb-md-0">사무실 & 상가 신속 계약</p>
          </div>
        </div>

        <div class="col-md-4 mb-7">
          <div class="text-center px-lg-3">
            <span class="btn btn-icon btn-lg btn-soft-success rounded-circle mb-5">
              <!-- <span class="fab fa-whmcs fa-2x btn-icon__inner btn-icon__inner-bottom-minus"></span> -->
              <%-- <img src="${resourceImg}/icon/restaurant_icon.png"/> --%>
            </span>
            <h3 class="h5">식당 예약</h3>
            <p class="mb-md-0">선주문 결제 시스템</p>
            <p class="mb-md-0">자동 쿠폰발송 기능</p>
          </div>
        </div>
      </div>


      <!-- Mockup Browser -->
      <div class="u-browser-v1 mx-auto mb-4">
        <!-- SVG Background Shape -->
   
        <!-- End SVG Background Shape -->

        <!-- Mockup Browser -->
        
        <!-- End Mockup Browser -->
      </div>
      <!-- End Mockup Browser -->

      <div class="w-50 w-md-40 w-lg-30 text-center mx-auto">
        <p class="small">We are launching soon. Join the priority list for information and early access.</p>
      </div>
    </div>
    <!-- End Icon Blocks Section -->
    
  </main>
  <!-- ========== END MAIN CONTENT ========== -->


<%@ include file="./common/footer.jsp"%>