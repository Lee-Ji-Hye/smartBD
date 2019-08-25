<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder"%>   
<%@ page import="com.team.smart.security.config.UserGrantedAuthority"%> 
<%@ page import="org.springframework.security.core.GrantedAuthority" %>
<%@ page import="org.springframework.security.core.authority.SimpleGrantedAuthority" %>
<%@ page import="java.util.List"%>    
<%@ page import="java.util.Collection" %>

<!DOCTYPE html>
<!-- saved from url=(0071)https://htmlstream.com/preview/front-v2.9.0/html/account/dashboard.html -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- Title -->
  <title>Dashboard | Front - Responsive Website Template</title>

  <!-- Required Meta Tags Always Come First -->
  
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Favicon -->
  <link rel="shortcut icon" href="https://htmlstream.com/preview/front-v2.9.0/favicon.ico">

  <!-- Google Fonts -->
  <link href="${resourceBoot}/css/css(1).css" rel="stylesheet">

  <!-- CSS Implementing Plugins -->
  <link rel="stylesheet" href="${resourceBoot}/css/fontawesome-all.min.css">
  <link rel="stylesheet" href="${resourceBoot}/css/custombox.min.css">
  <link rel="stylesheet" href="${resourceBoot}/css/animate.min.css">
  <link rel="stylesheet" href="${resourceBoot}/css/hs.megamenu.css">
  <link rel="stylesheet" href="${resourceBoot}/css/jquery.mCustomScrollbar.css">
  <link rel="stylesheet" href="${resourceBoot}/css/flatpickr.min.css">

  <!-- CSS Front Template -->
  <link rel="stylesheet" href="${resourceBoot}/css/theme.css">
  <style>
  	.u-header__product-pink {
	  display: block;
	  color: #fa466e;
	  font-size: 1.5625rem;
	  font-weight: 500;
	  margin-bottom: .5rem;
	}
  </style>
  
  <%
	//현재들어있는 세션값이 인가된 값이면 userGrantedAuth가 들어가야됨.. 형변환 하기전 체크함 아래EL태그 사용위해 request객체에 삽입
	if(!SecurityContextHolder.getContext().getAuthentication().getAuthorities().contains(new SimpleGrantedAuthority("ROLE_ANONYMOUS"))){
		List<UserGrantedAuthority> securityAuth = (List<UserGrantedAuthority>) SecurityContextHolder.getContext().getAuthentication().getAuthorities();
		request.setAttribute("securityAuth", securityAuth);
	}
  %>
<script src="${resourceBoot}/js/jquery.mousewheel.min.js"></script></head>
<body >
  
  <!-- ========== HEADER ========== -->
  <header id="header" class="u-header u-scrolled">
    <!-- Search -->
    <div id="searchPushTop" class="u-search-push-top u-unfold--jquery-slide u-unfold--hidden" style="display: none;">
      <div class="container position-relative">
        <div class="u-search-push-top__content">
          <!-- Close Button -->
          <button type="button" class="close u-search-push-top__close-btn target-of-invoker-has-unfolds" aria-haspopup="true" aria-expanded="false" aria-controls="searchPushTop" data-unfold-type="jquery-slide" data-unfold-target="#searchPushTop">
            <span aria-hidden="true">×</span>
          </button>
          <!-- End Close Button -->

          <!-- Input --> <!--  -->
          <form class="js-focus-state input-group">
            <input type="search" class="form-control" placeholder="Search Front" aria-label="Search Front">
            <div class="input-group-append">
              <button type="button" class="btn btn-primary">Search</button>
            </div>
          </form>
          <!-- End Input -->

          <!-- Content -->
          <div class="row d-none d-md-flex mt-7">
            <div class="col-sm-6">
              <strong class="d-block mb-2">Quick Links</strong>

              <div class="row">
                <!-- List Group -->
                <div class="col-6">
                  <div class="list-group list-group-transparent list-group-flush list-group-borderless">
                    <a class="list-group-item list-group-item-action" href="https://htmlstream.com/preview/front-v2.9.0/html/account/dashboard.html#">
                      <img src="${resourceImg}/icon/moreicon2.PNG">
                      Search Results List
                    </a>
                    <a class="list-group-item list-group-item-action" href="https://htmlstream.com/preview/front-v2.9.0/html/account/dashboard.html#">
                      <img src="${resourceImg}/icon/moreicon2.PNG">
                      Search Results Grid
                    </a>
                    <a class="list-group-item list-group-item-action" href="https://htmlstream.com/preview/front-v2.9.0/html/account/dashboard.html#">
                      <img src="${resourceImg}/icon/moreicon2.PNG">
                      About
                    </a>
                    <a class="list-group-item list-group-item-action" href="https://htmlstream.com/preview/front-v2.9.0/html/account/dashboard.html#">
                      <img src="${resourceImg}/icon/moreicon2.PNG">
                      Services
                    </a>
                    <a class="list-group-item list-group-item-action" href="https://htmlstream.com/preview/front-v2.9.0/html/account/dashboard.html#">
                      <img src="${resourceImg}/icon/moreicon2.PNG">
                      Invoice
                    </a>
                  </div>
                </div>
                <!-- End List Group -->

                <!-- List Group -->
                <div class="col-6">
                  <div class="list-group list-group-transparent list-group-flush list-group-borderless">
                    <a class="list-group-item list-group-item-action" href="https://htmlstream.com/preview/front-v2.9.0/html/account/dashboard.html#">
                      <img src="${resourceImg}/icon/moreicon2.PNG">
                      Profile
                    </a>
                    <a class="list-group-item list-group-item-action" href="https://htmlstream.com/preview/front-v2.9.0/html/account/dashboard.html#">
                      <img src="${resourceImg}/icon/moreicon2.PNG">
                      User Contacts
                    </a>
                    <a class="list-group-item list-group-item-action" href="https://htmlstream.com/preview/front-v2.9.0/html/account/dashboard.html#">
                      <img src="${resourceImg}/icon/moreicon2.PNG">
                      Reviews
                    </a>
                    <a class="list-group-item list-group-item-action" href="https://htmlstream.com/preview/front-v2.9.0/html/account/dashboard.html#">
                      <img src="${resourceImg}/icon/moreicon2.PNG">
                      Settings
                    </a>
                  </div>
                </div>
                <!-- End List Group -->
              </div>
            </div>

            <div class="col-sm-6">
              <!-- Banner -->
              <div class="rounded u-search-push-top__banner">
                <div class="d-flex align-items-center">
                  <div class="u-search-push-top__banner-container">
                    <img class="img-fluid u-search-push-top__banner-img" src="${resourceBoot}/image/img3.png" alt="Image Description">
                    <img class="img-fluid u-search-push-top__banner-img" src="${resourceBoot}/image/img2.png" alt="Image Description">
                  </div>

                  <div>
                    <div class="mb-4">
                      <strong class="d-block mb-2">Featured Item</strong>
                      <p>Create astonishing web sites and pages.</p>
                    </div>
                    <a class="btn btn-xs btn-soft-success transition-3d-hover" href="https://htmlstream.com/preview/front-v2.9.0/html/account/index.html">Apply Now <span class="fas fa-angle-right ml-2"></span></a>
                  </div>
                </div>
              </div>
              <!-- End Banner -->
            </div>
          </div>
          <!-- End Content -->
        </div>
      </div>
    </div>
    <!-- End Search -->

    <div class="u-header__section">
      <!-- Topbar -->
      <div class="container u-header__hide-content pt-2">
        <div class="d-flex align-items-center">
          <div class="ml-auto">
            <!-- Jump To -->
            <div class="d-inline-block d-sm-none position-relative mr-2">
              <a id="jumpToDropdownInvoker" class="dropdown-nav-link dropdown-toggle d-flex align-items-center" href="javascript:;" role="button" aria-controls="jumpToDropdown" aria-haspopup="true" aria-expanded="false" data-unfold-event="hover" data-unfold-target="#jumpToDropdown" data-unfold-type="css-animation" data-unfold-duration="300" data-unfold-delay="300" data-unfold-hide-on-scroll="true" data-unfold-animation-in="slideInUp" data-unfold-animation-out="fadeOut">
                Jump to
              </a>

              <div id="jumpToDropdown" class="dropdown-menu dropdown-unfold u-unfold--css-animation u-unfold--hidden fadeOut" aria-labelledby="jumpToDropdownInvoker" style="animation-duration: 300ms;">
                <a class="dropdown-item" href="https://htmlstream.com/preview/front-v2.9.0/html/pages/faq.html">Help</a>
                <a class="dropdown-item" href="https://htmlstream.com/preview/front-v2.9.0/html/pages/contacts-agency.html">Contacts</a>
              </div>
            </div>
            <!-- End Jump To -->

            <!-- Links -->
            <div class="d-none d-sm-inline-block ml-sm-auto">
              <ul class="list-inline mb-0">
                <li class="list-inline-item mr-0">
                  <a class="u-header__navbar-link" href="https://htmlstream.com/preview/front-v2.9.0/html/pages/faq.html">Help</a>
                </li>
                <li class="list-inline-item mr-0">
                  <a class="u-header__navbar-link" href="https://htmlstream.com/preview/front-v2.9.0/html/pages/contacts-agency.html">Contacts</a>
                </li>
              </ul>
            </div>
            <!-- End Links -->
          </div>

          <ul class="list-inline ml-2 mb-0">
            <!-- Search -->
            <li class="list-inline-item">
              <a class="btn btn-xs btn-icon btn-text-secondary target-of-invoker-has-unfolds" href="javascript:;" role="button" aria-haspopup="true" aria-expanded="false" aria-controls="searchPushTop" data-unfold-type="jquery-slide" data-unfold-target="#searchPushTop">
                <!-- <span class="fas fa-search btn-icon__inner"></span> -->
                <img src="${resourceImg}/icon/topIcon1.PNG" onerror='this.src="${resourceImg}/common/noimage_1.jpg"' style="width: 100%;height: 90%;margin-top: 2.5px;"/>
              </a>
            </li>
            <!-- End Search -->

            <!-- Shopping Cart -->
            <li class="list-inline-item position-relative">
              <a id="shoppingCartDropdownInvoker" class="btn btn-xs btn-icon btn-text-secondary" href="javascript:;" role="button" aria-controls="shoppingCartDropdown" aria-haspopup="true" aria-expanded="false" data-unfold-event="hover" data-unfold-target="#shoppingCartDropdown" data-unfold-type="css-animation" data-unfold-duration="300" data-unfold-delay="300" data-unfold-hide-on-scroll="true" data-unfold-animation-in="slideInUp" data-unfold-animation-out="fadeOut">
                <img src="${resourceImg}/icon/topIcon2_cart.PNG" onerror='this.src="${resourceImg}/common/noimage_1.jpg"' style="width: 100%;height: 90%;margin-top: 3px;"/>
              </a>

              <div id="shoppingCartDropdown" class="dropdown-menu dropdown-unfold dropdown-menu-right text-center p-7 u-unfold--css-animation u-unfold--hidden fadeOut" aria-labelledby="shoppingCartDropdownInvoker" style="min-width: 250px; animation-duration: 300ms;">
                <span class="btn btn-icon btn-soft-primary rounded-circle mb-3">
                  <span class="fas fa-shopping-basket btn-icon__inner"></span>
                </span>
                <span class="d-block">Your Cart is Empty</span>
              </div>
            </li>
            <!-- End Shopping Cart -->

            <!-- Account Login -->
            <li class="list-inline-item">
              <!-- Account Sidebar Toggle Button -->
              <!-- 로그아웃 -->
              <c:if test="${true}">
	              <a id="sidebarNavToggler" class="btn btn-xs btn-icon btn-text-secondary target-of-invoker-has-unfolds" href="javascript:;" role="button" aria-controls="sidebarContent" aria-haspopup="true" aria-expanded="false" data-unfold-event="click" data-unfold-hide-on-scroll="false" data-unfold-target="#sidebarContent" data-unfold-type="css-animation" data-unfold-animation-in="fadeInRight" data-unfold-animation-out="fadeOutRight" data-unfold-duration="500">
	                <img src="${resourceImg}/icon/topIcon3_user.PNG" onerror='this.src="${resourceImg}/common/noimage_1.jpg"' style="width: 100%;height: 90%;margin-top: 1.8px;" />
	              </a>
              </c:if>
              <c:if test="${false}">
	              <a id="sidebarNavToggler" class="btn btn-xs btn-text-secondary u-sidebar--account__toggle-bg ml-1 target-of-invoker-has-unfolds" href="javascript:;" role="button" aria-controls="sidebarContent" aria-haspopup="true" aria-expanded="false" data-unfold-event="click" data-unfold-hide-on-scroll="false" data-unfold-target="#sidebarContent" data-unfold-type="css-animation" data-unfold-animation-in="fadeInRight" data-unfold-animation-out="fadeOutRight" data-unfold-duration="500">
	                <span class="position-relative">
	                  <span class="u-sidebar--account__toggle-text">Natalie Curtis</span>
	                  <img class="u-sidebar--account__toggle-img" src="${resourceBoot}/image/img1.jpg" alt="Image Description">
	                  <span class="badge badge-sm badge-success badge-pos rounded-circle">3</span>
	                </span>
	              </a>
              </c:if>
              <!-- End Account Sidebar Toggle Button -->
            </li>
            <!-- End Account Login -->
          </ul>
        </div>
      </div>
      <!-- End Topbar -->

      <div id="logoAndNav" class="container">
        <!-- Nav -->
        <nav class="js-mega-menu navbar navbar-expand-md u-header__navbar u-header__navbar--no-space hs-menu-initialized hs-menu-horizontal">
          <!-- Logo -->
          <a class="navbar-brand u-header__navbar-brand u-header__navbar-brand-center" href="${path}" aria-label="Front">
            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="46px" height="46px" viewBox="0 0 46 46" xml:space="preserve" style="margin-bottom: 0;">
              <path fill="#3F7DE0" opacity=".65" d="M23,41L23,41c-9.9,0-18-8-18-18v0c0-9.9,8-18,18-18h11.3C38,5,41,8,41,11.7V23C41,32.9,32.9,41,23,41z"></path>
              <path class="fill-info" opacity=".5" d="M28,35.9L28,35.9c-9.9,0-18-8-18-18v0c0-9.9,8-18,18-18l11.3,0C43,0,46,3,46,6.6V18C46,27.9,38,35.9,28,35.9z"></path>
              <path class="fill-primary" opacity=".7" d="M18,46L18,46C8,46,0,38,0,28v0c0-9.9,8-18,18-18h11.3c3.7,0,6.6,3,6.6,6.6V28C35.9,38,27.9,46,18,46z"></path>
              <path class="fill-white" d="M17.4,34V18.3h10.2v2.9h-6.4v3.4h4.8v2.9h-4.8V34H17.4z"></path>
            </svg>
            <span class="u-header__navbar-brand-text">Smart</span>
          </a>
          <!-- End Logo -->

          <!-- Responsive Toggle Button -->
          <button type="button" class="navbar-toggler btn u-hamburger" aria-label="Toggle navigation" aria-expanded="false" aria-controls="navBar" data-toggle="collapse" data-target="#navBar">
            <span id="hamburgerTrigger" class="u-hamburger__box">
              <span class="u-hamburger__inner"></span>
            </span>
          </button>
          <!-- End Responsive Toggle Button -->

          <!-- Navigation -->
          <div id="navBar" class="collapse navbar-collapse u-header__navbar-collapse">
            <ul class="navbar-nav u-header__navbar-nav">
            <li class="nav-item hs-has-sub-menu u-header__nav-item" data-event="hover" data-animation-in="slideInUp" data-animation-out="fadeOut">
            	<div class="u-header__product-banner">
            	<form>
				    	<select class="form-control" id='securityAuth'>
				    		<option value="">현재 권한을 변경하려면 선택하세요</option>
							<c:forEach  var="dto" items="${securityAuth}">
							    <option value="${dto}">${dto.authority}, ${dto.comp_org}, ${dto.r_code}, ${dto.b_code}</option>
				    		</c:forEach>
				    	</select>
				 </form>
				    </div>
            </li>
            
              <!-- Pages -->
              <li class="nav-item hs-has-sub-menu u-header__nav-item" data-event="hover" data-animation-in="slideInUp" data-animation-out="fadeOut">
                <a id="pagesMegaMenu" class="nav-link u-header__nav-link u-header__nav-link-toggle" href="javascript:;" aria-haspopup="true" aria-expanded="false" aria-labelledby="pagesSubMenu">Building<span></span></a>

                <!-- Pages - Submenu -->
                <ul id="blogSubMenu" class="hs-sub-menu u-header__sub-menu" aria-labelledby="blogMegaMenu" style="min-width: 230px; display: none;">
                  <li class="hs-has-sub-menu"><a id="navLinkPagesAccount" class="nav-link u-header__sub-menu-nav-link u-header__sub-menu-nav-link-toggle" href="${path_m}/roomlist" aria-haspopup="true" aria-expanded="false" aria-controls="navSubmenuPagesAccount">매물 관리</a></li>
                  <li class="hs-has-sub-menu"><a id="navLinkPagesCompany" class="nav-link u-header__sub-menu-nav-link u-header__sub-menu-nav-link-toggle" href="${path_m}/meetingroom" aria-haspopup="true" aria-expanded="false" aria-controls="navSubmenuPagesCompany">회의실 관리</a></li>
                  <li class="hs-has-sub-menu"><a id="navLinkPagesCompany" class="nav-link u-header__sub-menu-nav-link u-header__sub-menu-nav-link-toggle" href="${path_m}/billing" aria-haspopup="true" aria-expanded="false" aria-controls="navSubmenuPagesCompany">납부 관리</a></li>
                 
					<!--                    <ul id="navSubmenuPagesCompany" class="hs-sub-menu u-header__sub-menu" aria-labelledby="navLinkPagesCompany" style="min-width: 230px; display: none;">
                    		테스트용
                      <li><a class="nav-link u-header__sub-menu-nav-link" href="/smart/sysmaster/">시스템 관리자</a></li>
                      <li><a class="nav-link u-header__sub-menu-nav-link" href="/smart/bd_admin/">건물주</a></li>
                      <li><a class="nav-link u-header__sub-menu-nav-link" href="/smart/member/">회원</a></li>
                      <li><a class="nav-link u-header__sub-menu-nav-link" href="https://htmlstream.com/preview/front-v2.9.0/html/pages/about-agency.html">About Agency</a></li>
                      <li><a class="nav-link u-header__sub-menu-nav-link" href="https://htmlstream.com/preview/front-v2.9.0/html/pages/services-agency.html">Services Agency</a></li>
                    </ul> -->
                  
                  <!-- Company -->
                  
                </ul>
                <!-- End Pages - Submenu -->
              </li>
              <!-- End Pages -->

              <!-- Blog -->
              <li class="nav-item hs-has-sub-menu u-header__nav-item" data-event="hover" data-animation-in="slideInUp" data-animation-out="fadeOut">
                <a id="blogMegaMenu" class="nav-link u-header__nav-link u-header__nav-link-toggle" href="javascript:;" aria-haspopup="true" aria-expanded="false" aria-labelledby="blogSubMenu">Parking<span></span></a>

                <!-- Blog - Submenu -->
                <ul id="blogSubMenu" class="hs-sub-menu u-header__sub-menu" aria-labelledby="blogMegaMenu" style="min-width: 230px; display: none;">
                <li><a class="nav-link u-header__sub-menu-nav-link" href="${path}/incar">입차 / 출차 관리</a></li>
                  <li><a class="nav-link u-header__sub-menu-nav-link" href="${path}/parkinglist">주차권 관리</a></li>
                  <li><a class="nav-link u-header__sub-menu-nav-link" href="${path}/ticketmanager">주차장 현황관리</a></li>
                  <li><a class="nav-link u-header__sub-menu-nav-link" href="${path}/total">주차장 정산</a></li>
                </ul>
                <!-- End Submenu -->
              </li>
              <!-- End Blog -->

              <!-- Shop -->
              <li class="nav-item hs-has-mega-menu u-header__nav-item" data-event="hover" data-animation-in="slideInUp" data-animation-out="fadeOut" data-max-width="440px" data-position="right">
                <a id="shopMegaMenu" class="nav-link u-header__nav-link u-header__nav-link-toggle" href="javascript:;" aria-haspopup="true" aria-expanded="false">Restaurant</a>

                <!-- Shop - Mega Menu -->
                <div class="hs-mega-menu u-header__sub-menu u-header__mega-menu-position-right-fix--md" aria-labelledby="shopMegaMenu" style="display: none;">
                  <div class="u-header__mega-menu-wrapper">
                    <span class="u-header__sub-menu-title">Shop Elements</span>

                    <div class="row">
                      <div class="col-sm-6">
                        <ul class="u-header__sub-menu-nav-group">
                          <li><a class="nav-link u-header__sub-menu-nav-link" href="/smart/mng/food/main">업체 정보</a></li>
                           <li><a class="nav-link u-header__sub-menu-nav-link" href="/smart/mng/food/closed">휴무 등록</a></li>

                          <li><a class="nav-link u-header__sub-menu-nav-link" href="/smart/mng/food/menuUpload">상품 등록</a></li>
                          <li><a class="nav-link u-header__sub-menu-nav-link" href="/smart/mng/food/couponUpload">쿠폰 등록</a></li>
                        </ul>
                      </div>

                      <div class="col-sm-6">
                        <ul class="u-header__sub-menu-nav-group">
                          <li><a class="nav-link u-header__sub-menu-nav-link" href="/smart/mng/food/goodsList">상품 목록</a></li>
                          <li><a class="nav-link u-header__sub-menu-nav-link" href="/smart/mng/food/couponList">쿠폰 목록</a></li>
                          <li><a class="nav-link u-header__sub-menu-nav-link" href="/smart/mng/food/orderList">주문 목록</a></li>
                           <li><a class="nav-link u-header__sub-menu-nav-link" href="/smart/mng/food/oldOrderList">지난 주문</a></li>
                        </ul>
                      </div>
                    </div>
                  </div>

                  <!-- Mega Menu Banner -->
                  <div class="u-header__product-banner">
                    <div class="d-flex align-items-end">
                      <img class="img-fluid mr-4" src="${resourceImg}/image5.PNG" style="width:170px;height:180px;" alt="Image Description">
                      <div class="u-header__product-banner-content">
                        <div class="mb-4">
                          <span class="u-header__product-pink">StrowBarry</span>
                          <p class="u-header__product-banner-text">Best-recommend</p>
                        </div>
                        <!-- <a class="btn btn-sm btn-soft-primary transition-3d-hover" href="https://htmlstream.com/preview/front-v2.9.0/html/shop/classic.html">Learn More <span class="fas fa-angle-right ml-2"></span></a> -->
                      </div>
                    </div>
                  </div>
                  <!-- End Mega Menu Banner -->
                  
				    
                </div>
                <!-- End Shop - Mega Menu -->
              </li>
              <!-- End Shop -->

              <!-- Button -->
              <%-- <li class="nav-item u-header__nav-last-item">
                <a class="btn btn-sm btn-primary transition-3d-hover" style="width: 105px;font-size: 12px;" href="${path_m}" target="_blank">
                  	매니저 전환
                </a>
              </li> --%>
              <!-- End Button -->
            </ul>
          </div>
          <!-- End Navigation -->
        </nav>
        <!-- End Nav -->
      </div>
    </div>
    <script type="text/javascript">
    document.getElementById('securityAuth').addEventListener("change", function(){
    	if(this.value!=="")
  		window.location = '${path}/selectAuth?auth=' + this.value +'&curl=' + window.location.pathname;
    });
    </script>
  </header>
  <!-- ========== END HEADER ========== -->