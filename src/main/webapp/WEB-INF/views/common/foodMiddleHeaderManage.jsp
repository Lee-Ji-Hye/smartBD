<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Breadcrumb Section -->
    <div class="bg-primary">
      <div class="container space-top-1 pb-3">
        <div class="row">
          <div class="col-lg-5 order-lg-2 text-lg-right mb-4 mb-lg-0">
            <div class="d-flex d-lg-inline-block justify-content-between justify-content-lg-end align-items-center align-items-lg-start">
              <!-- Breadcrumb -->
              <!-- <ol class="breadcrumb breadcrumb-white breadcrumb-no-gutter mb-0">
                <li class="breadcrumb-item"><a class="breadcrumb-link" href="https://htmlstream.com/preview/front-v2.9.0/html/home/index.html">Home</a></li>
                <li class="breadcrumb-item"><a class="breadcrumb-link" href="https://htmlstream.com/preview/front-v2.9.0/html/account/dashboard.html">Account</a></li>
                <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
              </ol> -->
              <!-- End Breadcrumb -->

              <!-- Breadcrumb Nav Toggle Button -->
              <div class="d-lg-none">
                <button type="button" class="navbar-toggler btn u-hamburger u-hamburger--white" aria-label="Toggle navigation" aria-expanded="false" aria-controls="breadcrumbNavBar" data-toggle="collapse" data-target="#breadcrumbNavBar">
                  <span id="breadcrumbHamburgerTrigger" class="u-hamburger__box">
                    <span class="u-hamburger__inner"></span>
                  </span>
                </button>
              </div>
              <!-- End Breadcrumb Nav Toggle Button -->
            </div>
          </div>

          <div class="col-lg-7 order-lg-1">
            <!-- User Info -->
            <div class="media d-block d-sm-flex align-items-sm-center">
              <div class="u-lg-avatar position-relative mb-3 mb-sm-0 mr-3">
                <img class="img-fluid rounded-circle"  src="${sessionScope.comp_image}"  onerror='this.src="${resourceImg}/common/noimage_1.jpg"'  alt="Image Description">
                <span class="badge badge-md badge-outline-success badge-pos badge-pos--bottom-right rounded-circle">
                  <!-- <span class="fas fa-check"></span> -->
                  <img src="${resourceImg}/icon/checkicon.PNG"  style="width: 10px;"/>
                </span>
              </div>
              <div class="media-body">
                <h1 class="h3 text-white font-weight-medium mb-1">${sessionScope.comp_org}</h1>
                <span class="d-block text-white">${sessionScope.comp_hp}</span>
              </div>
            </div>
            <!-- End User Info -->
          </div>
        </div>
      </div>

      <div class="container space-bottom-1 space-bottom-lg-0">
        <div class="d-lg-flex justify-content-lg-between align-items-lg-center">
          <!-- Navbar -->
          <div class="u-header u-header-left-aligned-nav u-header--bg-transparent-lg u-header--white-nav-links z-index-4">
            <div class="u-header__section bg-transparent">
              <nav class="js-breadcrumb-menu navbar navbar-expand-lg u-header__navbar u-header__navbar--no-space hs-menu-initialized hs-menu-horizontal">
                <div id="breadcrumbNavBar" class="collapse navbar-collapse u-header__navbar-collapse">
                  <ul class="navbar-nav u-header__navbar-nav">
                    <!-- General -->
                    <%-- <li class="nav-item hs-has-sub-menu u-header__nav-item" data-event="hover" data-animation-in="slideInUp" data-animation-out="fadeOut">
                      <a id="generalDropdown" class="nav-link u-header__nav-link u-header__nav-link-toggle" href="javascript:;" aria-haspopup="true" aria-expanded="false" aria-labelledby="generalDropdownMenu">
                        	업체
                      </a>

                      <ul id="generalDropdownMenu" class="hs-sub-menu u-header__sub-menu u-header__sub-menu--spacer" style="min-width: 230px; display: none;" aria-labelledby="generalDropdown">
                        <li><a class="nav-link u-header__sub-menu-nav-link" href="${path}/cp_manager/intromn">업체 소개</a></li>
                        <li><a class="nav-link u-header__sub-menu-nav-link" href="${path}/cp_manager/closed">휴무일 등록</a></li>
                      </ul>
                    </li> --%>
                    <!-- General -->

                    <!-- Account Settings -->
                   <%--  <li class="nav-item hs-has-sub-menu u-header__nav-item" data-event="hover" data-animation-in="slideInUp" data-animation-out="fadeOut">
                      <a id="accountSettingsDropdown" class="nav-link u-header__nav-link u-header__nav-link-toggle" href="javascript:;" aria-haspopup="true" aria-expanded="false" aria-labelledby="accountSettingsDropdownMenu">
                        	상품
                      </a>

                      <ul id="accountSettingsDropdownMenu" class="hs-sub-menu u-header__sub-menu u-header__sub-menu--spacer" style="min-width: 230px; display: none;" aria-labelledby="accountSettingsDropdown">
                        <li><a class="nav-link u-header__sub-menu-nav-link" href="${path}/cp_manager/menumn/list">상품 목록</a></li>
                        <li><a class="nav-link u-header__sub-menu-nav-link" href="${path}/cp_manager/menumn/inst">상품 등록</a></li>
                      </ul>
                    </li> --%>
                    <!-- Account Settings -->

                    <!-- Billing -->
                    <%-- <li class="nav-item hs-has-sub-menu u-header__nav-item" data-event="hover" data-animation-in="slideInUp" data-animation-out="fadeOut">
                      <a id="billingDropdown" class="nav-link u-header__nav-link u-header__nav-link-toggle" href="javascript:;" aria-haspopup="true" aria-expanded="false" aria-labelledby="billingDropdownMenu">
                        	주문
                      </a>

                      <ul id="billingDropdownMenu" class="hs-sub-menu u-header__sub-menu u-header__sub-menu--spacer" style="min-width: 230px; display: none;" aria-labelledby="billingDropdown">
                        <li><a class="nav-link u-header__sub-menu-nav-link" href="${path}/cp_employee/odmn/amd">주문 목록</a></li>
                        <li><a class="nav-link u-header__sub-menu-nav-link" href="${path}/cp_employee/odmn/list">지난 주문</a></li>
                      </ul>
                    </li> --%>
                    <!-- Billing -->

                    <!-- Accessibility -->
                    <%-- <li class="nav-item hs-has-sub-menu u-header__nav-item" data-event="hover" data-animation-in="slideInUp" data-animation-out="fadeOut">
                      <a id="accessibilityDropdown" class="nav-link u-header__nav-link u-header__nav-link-toggle" href="javascript:;" aria-haspopup="true" aria-expanded="false" aria-labelledby="accessibilityDropdownMenu">
                        	쿠폰
                      </a>

                      <ul id="accessibilityDropdownMenu" class="hs-sub-menu u-header__sub-menu u-header__sub-menu--spacer" style="min-width: 230px; display: none;" aria-labelledby="accessibilityDropdown">
                        <li><a class="nav-link u-header__sub-menu-nav-link" href="${path}/cp_manager/cpmn/list">쿠폰 목록</a></li>
                        <li><a class="nav-link u-header__sub-menu-nav-link" href="${path}/cp_manager/cpmn/inst">쿠폰 등록</a></li>
                      </ul>
                    </li> --%>
                    <!-- Accessibility -->
                    <!-- Others -->
                    <%-- <li class="nav-item hs-has-sub-menu u-header__nav-item" data-event="hover" data-animation-in="slideInUp" data-animation-out="fadeOut">
                      <a id="accessibilityDropdown" class="nav-link u-header__nav-link u-header__nav-link-toggle" href="javascript:;" aria-haspopup="true" aria-expanded="false" aria-labelledby="accessibilityDropdownMenu">
                        	결산
                      </a>

                      <ul id="accessibilityDropdownMenu" class="hs-sub-menu u-header__sub-menu u-header__sub-menu--spacer" style="min-width: 230px; display: none;" aria-labelledby="accessibilityDropdown">
                        <li><a class="nav-link u-header__sub-menu-nav-link" href="${path}/cp_manager/">당일 결산</a></li>
                        <li><a class="nav-link u-header__sub-menu-nav-link" href="${path}/cp_manager/">주간 결산</a></li>
                        <li><a class="nav-link u-header__sub-menu-nav-link" href="${path}/cp_manager/">월간 결산</a></li>
                      </ul>
                    </li> --%>
                    <!-- Others -->
                  </ul>
                </div>
              </nav>
            </div>
          </div>
          <!-- End Navbar -->

          <div class="ml-lg-auto">
            <!-- Button -->
            <a class="btn btn-sm btn-soft-white text-nowrap transition-3d-hover" href="https://htmlstream.com/preview/front-v2.9.0/html/account/dashboard.html#requestPaymentModal" data-modal-target="#requestPaymentModal">
              <span style="font-size: 18px;margin-right: 5px;font-weight: bold;">+</span>
              Request a Payment 
            </a>
            <!-- End Button -->
          </div>
        </div>
      </div>
    </div>
    <!-- End Breadcrumb Section -->