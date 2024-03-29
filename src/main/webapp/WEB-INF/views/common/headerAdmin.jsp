<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder"%>   
<%@ page import="com.team.smart.security.config.UserGrantedAuthority"%> 
<%@ page import="org.springframework.security.core.GrantedAuthority" %>
<%@ page import="org.springframework.security.core.authority.SimpleGrantedAuthority" %>
<%@ page import="java.util.List"%>    
<%@ page import="java.util.ArrayList"%>  

<!DOCTYPE html>
<!-- saved from url=(0071)https://htmlstream.com/preview/front-v2.9.0/html/account/dashboard.html -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- Title -->
  <title>Smart Billding Project Kosmo 50 Welcome</title>

  <!-- Required Meta Tags Always Come First -->
  
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Favicon -->
  <!-- <link rel="shortcut icon" href="https://htmlstream.com/preview/front-v2.9.0/favicon.ico"> -->
  <link rel="shortcut icon" href="${resourceImg}/common/s_logo.png">

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
  
  <!-- 공통 css -->
  <link rel="stylesheet" href="${resource}/css/common.css">
  
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
		List<String> choice = new ArrayList<>();
		//업체 정보를 꺼내서 중복되지 않게 담음
		for(UserGrantedAuthority secu : securityAuth){
			if(secu.getB_code()!=null){
				String option = secu.getB_code()+"::"+secu.getB_name();
				if(!choice.contains(option)) {
					choice.add(option);
				}
			}
		}
		request.setAttribute("choiceB", choice);
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
        </div>
      </div>
    </div>
    <!-- End Search -->

    <div class="u-header__section">
      <!-- Topbar -->
      <div class="container u-header__hide-content pt-2">
        <div class="d-flex align-items-center">
          <div class="ml-auto">
          
            <!-- Links -->
            <div class="d-none d-sm-inline-block ml-sm-auto">
              <ul class="list-inline mb-0">
                <li class="list-inline-item mr-0">
                  <a class="u-header__navbar-link" href="${path}/admin">매니저 페이지</a>
                </li>
                <li class="list-inline-item mr-0">
                  <a class="u-header__navbar-link" href="${path}/">사업자 멤버 페이지</a>
                </li>
              </ul>
            </div>
            <!-- End Links -->
          </div>

          <ul class="list-inline ml-2 mb-0">
            <!-- Search -->
            <%-- <li class="list-inline-item">
              <a class="btn btn-xs btn-icon btn-text-secondary target-of-invoker-has-unfolds" href="javascript:;" role="button" aria-haspopup="true" aria-expanded="false" aria-controls="searchPushTop" data-unfold-type="jquery-slide" data-unfold-target="#searchPushTop">
                <!-- <span class="fas fa-search btn-icon__inner"></span> -->
                <img src="${resourceImg}/icon/topIcon1.PNG" onerror='this.src="${resourceImg}/common/noimage_1.jpg"' style="width: 100%;height: 90%;margin-top: 2.5px;"/>
              </a>
            </li> --%>
            <!-- End Search -->
            
            
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
            <!-- <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="46px" height="46px" viewBox="0 0 46 46" xml:space="preserve" style="margin-bottom: 0;">
              <path fill="#3F7DE0" opacity=".65" d="M23,41L23,41c-9.9,0-18-8-18-18v0c0-9.9,8-18,18-18h11.3C38,5,41,8,41,11.7V23C41,32.9,32.9,41,23,41z"></path>
              <path class="fill-info" opacity=".5" d="M28,35.9L28,35.9c-9.9,0-18-8-18-18v0c0-9.9,8-18,18-18l11.3,0C43,0,46,3,46,6.6V18C46,27.9,38,35.9,28,35.9z"></path>
              <path class="fill-primary" opacity=".7" d="M18,46L18,46C8,46,0,38,0,28v0c0-9.9,8-18,18-18h11.3c3.7,0,6.6,3,6.6,6.6V28C35.9,38,27.9,46,18,46z"></path>
              <path class="fill-white" d="M17.4,34V18.3h10.2v2.9h-6.4v3.4h4.8v2.9h-4.8V34H17.4z"></path>
            </svg> -->
        	<img src="${resourceImg}/common/s_logo.png" style="width:30px;height:30px;"/>
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
          <!-- 네비게이션 ul 시작 -->
            <ul class="navbar-nav u-header__navbar-nav">
            <li class="nav-item hs-has-sub-menu u-header__nav-item" data-event="hover" data-animation-in="slideInUp" data-animation-out="fadeOut">
              <div class="u-header__product-banner">
            	<!-- 권한 선택 selectbox -->
            	<form>
				  <select class="form-control" id='bdSession'>
				    <option value="">관리할 빌딩을 선택해주세요</option>
					<c:forEach  var="dto" items="${choiceB}">
					  <option value="${dto}">${dto}</option>
				    </c:forEach>
				  </select>
				</form>
            	<!-- 권한 선택 selectbox 끝 -->
			  </div>
            </li>
            
            <!-- 표시되는 큰메뉴 시스템 관리자 권한 -->
            <li class="nav-item hs-has-sub-menu u-header__nav-item" data-event="hover" data-animation-in="slideInUp" data-animation-out="fadeOut">
              <a id="pagesMegaMenu" class="nav-link u-header__nav-link u-header__nav-link-toggle" href="javascript:;" aria-haspopup="true" aria-expanded="false" aria-labelledby="pagesSubMenu">System management<span></span></a>
              <ul id="blogSubMenu" class="hs-sub-menu u-header__sub-menu" aria-labelledby="blogMegaMenu" style="min-width: 230px; display: none;">
                <li class="hs-has-sub-menu"><a id="navLinkPagesAccount" class="nav-link u-header__sub-menu-nav-link u-header__sub-menu-nav-link-toggle" href="${path}/sysmaster/bdmn" aria-haspopup="true" aria-expanded="false" aria-controls="navSubmenuPagesAccount">빌딩 관리</a></li>
                <li class="hs-has-sub-menu"><a id="navLinkPagesCompany" class="nav-link u-header__sub-menu-nav-link u-header__sub-menu-nav-link-toggle" href="${path}/sysmaster/memmn" aria-haspopup="true" aria-expanded="false" aria-controls="navSubmenuPagesCompany">회원 관리</a></li>
              </ul>
            </li>
            <!-- /표시되는 큰메뉴 끝 -->
            
            <!-- 표시되는 큰메뉴 시스템 관리자 권한 -->
            <li class="nav-item hs-has-sub-menu u-header__nav-item" data-event="hover" data-animation-in="slideInUp" data-animation-out="fadeOut">
              <a id="pagesMegaMenu" class="nav-link u-header__nav-link u-header__nav-link-toggle" href="javascript:;" aria-haspopup="true" aria-expanded="false" aria-labelledby="pagesSubMenu">Billding management<span></span></a>
              <ul id="blogSubMenu" class="hs-sub-menu u-header__sub-menu" aria-labelledby="blogMegaMenu" style="min-width: 230px; display: none;">
                <li class="hs-has-sub-menu"><a id="navLinkPagesAccount" class="nav-link u-header__sub-menu-nav-link u-header__sub-menu-nav-link-toggle" href="${path}/bd_admin/bdmnermn" aria-haspopup="true" aria-expanded="false" aria-controls="navSubmenuPagesAccount">빌딩 관리자 관리</a></li>
                <%-- <li class="hs-has-sub-menu"><a id="navLinkPagesCompany" class="nav-link u-header__sub-menu-nav-link u-header__sub-menu-nav-link-toggle" href="${path}/bd_manager/bdstat" aria-haspopup="true" aria-expanded="false" aria-controls="navSubmenuPagesCompany">빌딩 현황</a></li> --%>
              </ul>
            </li>
            <!-- /표시되는 큰메뉴 끝 -->
            
            
            <!-- 표시되는 큰메뉴 시스템 관리자 권한 파트별 관리자 2안-->
            <li class="nav-item hs-has-sub-menu u-header__nav-item"
                data-event="hover"
                data-animation-in="slideInUp"
                data-animation-out="fadeOut">
              <a id="pagesMegaMenu" class="nav-link u-header__nav-link u-header__nav-link-toggle" href="javascript:;" aria-haspopup="true" aria-expanded="false" aria-labelledby="pagesSubMenu">Part area management</a>

              <!-- Pages - Submenu -->
              <ul id="pagesSubMenu" class="hs-sub-menu u-header__sub-menu" aria-labelledby="pagesMegaMenu" style="min-width: 230px;">
                <!-- 임대관리 -->
                <li class="hs-has-sub-menu">
                  <a id="navLinkPagesPortfolio" class="nav-link u-header__sub-menu-nav-link u-header__sub-menu-nav-link-toggle" href="javascript:;" aria-haspopup="true" aria-expanded="false" aria-controls="navSubmenuPagesPortfolio">임대 파트 관리</a>

                  <ul id="navSubmenuPagesPortfolio" class="hs-sub-menu u-header__sub-menu" aria-labelledby="navLinkPagesPortfolio" style="min-width: 230px;">
                  <li><a class="nav-link u-header__sub-menu-nav-link" href="${path}/bd_office/roomlist">매물 정보</a></li>
                    <li><a class="nav-link u-header__sub-menu-nav-link" href="${path}/bd_office/roomcontract">계약 관리</a></li>
                    <li><a class="nav-link u-header__sub-menu-nav-link" href="${path}/bd_office/paylist">납부 관리</a></li>
                      <li class="dropdown-divider"></li>
                    <li><a class="nav-link u-header__sub-menu-nav-link" href="${path}/bd_office/total">결산</a></li>
                  </ul>
                </li>
                <!-- End 임대관리 -->
                
                <!-- 주차장 관리 -->
                <li class="hs-has-sub-menu">
                  <a id="navLinkContactsServices" class="nav-link u-header__sub-menu-nav-link u-header__sub-menu-nav-link-toggle" href="${path}/bd_park/" aria-haspopup="true" aria-expanded="false" aria-controls="navSubmenuContactsServices">주차장 파트 관리</a>

                  <ul id="navSubmenuContactsServices" class="hs-sub-menu u-header__sub-menu" aria-labelledby="navLinkContactsServices" style="min-width: 230px;">
                    <li><a class="nav-link u-header__sub-menu-nav-link" href="${path}/bd_park/inoutcar">입출차 관리</a></li>
                    <li><a class="nav-link u-header__sub-menu-nav-link" href="${path}/bd_park/uselist">주차권 관리</a></li>
                    <li><a class="nav-link u-header__sub-menu-nav-link" href="${path}/bd_park/ticketmanager">주차장 현황</a></li>
                    <li><a class="nav-link u-header__sub-menu-nav-link" href="${path}/bd_park/insertplace">주차장 등록</a></li>
                      <li class="dropdown-divider"></li>
                    <li><a class="nav-link u-header__sub-menu-nav-link" href="${path}/bd_park/total">결산</a></li>
                  </ul>
                </li>
                <!-- End 주차장 관리 -->

                <!-- 식당 관리 -->
                <li class="hs-has-sub-menu">
                  <a id="navLinkPagesUtilities" class="nav-link u-header__sub-menu-nav-link u-header__sub-menu-nav-link-toggle" href="${path}/bd_food/" aria-haspopup="true" aria-expanded="false" aria-controls="navSubmenuPagesUtilities">식당 파트 관리</a>
                  <ul id="navSubmenuPagesUtilities" class="hs-sub-menu u-header__sub-menu" aria-labelledby="navLinkPagesUtilities" style="min-width: 230px;">
                    <li><a class="nav-link u-header__sub-menu-nav-link" href="${path}/bd_food/cormn">음식점 관리</a></li>
                  </ul>
                </li>
                <!-- End 식당 관리 -->
                
              </ul>
              <!-- End Pages - Submenu -->
            </li>
            <!-- End 표시되는 큰메뉴 시스템 관리자 권한 파트별 관리자 2안-->
            
            
            </ul>
            <!-- /네비게이션 ul 끝 -->
          </div>
          <!-- End Navigation -->
        </nav>
        <!-- End Nav -->
      </div>
    </div>
<!--     <script type="text/javascript">
    document.getElementById('bdSession').addEventListener("change", function(){
    	if(this.value!=="")
  		window.location = '${path}/member/bdSession?auth=' + this.value +'&curl=' + window.location.pathname;
    });
    </script> -->
    <script type="text/javascript">
    document.getElementById('bdSession').addEventListener("change", function(){
    	if(this.value!=="")
  		window.location = '${path}/member/bdSession?auth=' + this.value +'&curl=' + window.location.pathname;
    });
    
    //onload 이벤트
    window.onload = function(){
    	//업체정보선택하는 select문 id값으로 객체획득
    	var bdSession = document.getElementById("bdSession");
    	//세션에 저장된 값과 일치하는 값이 있으면 선택하는 pure js code
        for(var i=0; i<bdSession.length; i++){
            if(bdSession[i].value===('${sessionScope.b_code}'+'::'+'${sessionScope.b_name}')){
            	bdSession[i].selected = true;
            }
        }
    }
    </script>
  </header>
  <!-- ========== END HEADER ========== -->