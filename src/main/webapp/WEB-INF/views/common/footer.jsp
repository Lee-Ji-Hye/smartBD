<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!-- ========== FOOTER ========== -->
  <footer style="background: #fff;">

    <!-- Copyright -->
    <div class="container text-center space-1">
      <!-- Logo -->
      <a class="d-inline-flex align-items-center mb-2" href="${path}" aria-label="Front">
        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="36px" height="36px" viewBox="0 0 46 46" xml:space="preserve" style="margin-bottom: 0;">
          <path fill="#3F7DE0" opacity=".65" d="M23,41L23,41c-9.9,0-18-8-18-18v0c0-9.9,8-18,18-18h11.3C38,5,41,8,41,11.7V23C41,32.9,32.9,41,23,41z"></path>
          <path class="fill-info" opacity=".5" d="M28,35.9L28,35.9c-9.9,0-18-8-18-18v0c0-9.9,8-18,18-18l11.3,0C43,0,46,3,46,6.6V18C46,27.9,38,35.9,28,35.9z"></path>
          <path class="fill-primary" opacity=".7" d="M18,46L18,46C8,46,0,38,0,28v0c0-9.9,8-18,18-18h11.3c3.7,0,6.6,3,6.6,6.6V28C35.9,38,27.9,46,18,46z"></path>
          <path class="fill-white" d="M17.4,34V18.3h10.2v2.9h-6.4v3.4h4.8v2.9h-4.8V34H17.4z"></path>
        </svg>
        <span class="brand brand-primary">Smart</span>
      </a>
      <!-- End Logo -->
      <p class="small text-muted">Smart. 2019 Htmlstream. All rights reserved.</p>
    </div>
    <!-- End Copyright -->
  </footer>
  <!-- ========== END FOOTER ========== -->
   
  <!-- ========== SECONDARY CONTENTS ========== -->
  <!-- Account Sidebar Navigation -->
	  <aside id="sidebarContent" class="u-sidebar u-unfold--css-animation u-unfold--hidden fadeOutRight" aria-labelledby="sidebarNavToggler" style="animation-duration: 500ms;">
	    <div class="u-sidebar__scroller">
	      <div class="u-sidebar__container">
	        <div class="">
	 <!-- Toggle Button -->
	          <div class="d-flex justify-content-between align-items-center pt-4 px-7">
	            <h3 class="h6 mb-0">My Account</h3>
	          </div>
	          <!-- End Toggle Button -->
	          <!-- Content -->
	          <div class="js-scrollbar u-sidebar__body mCustomScrollbar _mCS_2 mCS-autoHide mCS_no_scrollbar" style="position: relative; overflow: visible;"><div id="mCSB_2" class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside" style="max-height: none;" tabindex="0"><div id="mCSB_2_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
	            <!-- Holder Info -->
	            <header class="d-flex align-items-center u-sidebar--account__holder mt-3">
	              <div class="position-relative">
	                <img class="u-sidebar--account__holder-img mCS_img_loaded" src="${resourceBoot}/image/img1.jpg" alt="Image Description">
	                <span class="badge badge-xs badge-outline-success badge-pos rounded-circle"></span>
	              </div>
	              <div class="ml-3">
	                <span class="font-weight-semi-bold"><sec:authorize access="isAuthenticated()">${principal.username}</sec:authorize> <sec:authorize access="!hasRole('ROLE_DEFAULT')"><span class="badge badge-success ml-1">Pro</span></sec:authorize></span>
	                <!-- <span class="u-sidebar--account__holder-text">Lead Support Adviser</span> -->
	              </div>
	
	              <!-- Settings -->
	              <div class="btn-group position-relative ml-auto mb-auto">
	                <a id="sidebar-account-settings-invoker" class="btn btn-xs btn-icon btn-text-secondary rounded" href="javascript:;" role="button" aria-controls="sidebar-account-settings" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown" data-unfold-event="click" data-unfold-target="#sidebar-account-settings" data-unfold-type="css-animation" data-unfold-duration="300" data-unfold-delay="300" data-unfold-animation-in="slideInUp" data-unfold-animation-out="fadeOut">
	                  <span class="fas fa-ellipsis-v btn-icon__inner"></span>
	                </a>
	
	                <div id="sidebar-account-settings" class="dropdown-menu dropdown-unfold dropdown-menu-right u-unfold--css-animation u-unfold--hidden fadeOut" aria-labelledby="sidebar-account-settings-invoker" style="animation-duration: 300ms;">
	                  <a class="dropdown-item" href="https://htmlstream.com/preview/front-v2.9.0/html/account/dashboard.html#">Settings</a>
	                  <a class="dropdown-item" href="https://htmlstream.com/preview/front-v2.9.0/html/account/dashboard.html#">History</a>
	                  <div class="dropdown-divider"></div>
	                  <a class="dropdown-item" href="/smart/logout">Sign Out</a>
	                </div>
	              </div>
	              <!-- End Settings -->
	            </header>
	            <!-- End Holder Info -->
	
	          <div class="d-flex justify-content-between align-items-center pt-4 px-7">
	            <h3 class="h6 mb-0">ADS</h3>
	          </div>
	            <div class="u-sidebar__content--account">
	              <!-- List Links -->
	              <ul class="list-unstyled u-sidebar--account__list">
	                <li class="u-sidebar--account__list-item">
	                  <a class="u-sidebar--account__list-link" href="https://github.com/Lee-Ji-Hye/">
	                    <span class="fas fa-home u-sidebar--account__list-icon mr-2"></span>
	                    	Lee Jihye Github
	                  </a>
	                </li>
	                <li class="u-sidebar--account__list-item">
	                  <a class="u-sidebar--account__list-link" href="https://github.com/ukkmk0905/">
	                    <span class="fas fa-user-circle u-sidebar--account__list-icon mr-2"></span>
	                    	Kim Myeongkeun Github
	                  </a>
	                </li>
	                <li class="u-sidebar--account__list-item">
	                  <a class="u-sidebar--account__list-link" href="https://github.com/dmdkrjems/">
	                    <span class="fas fa-tasks u-sidebar--account__list-icon mr-2"></span>
	                    	Kim Yeongjung Github
	                  </a>
	                </li>
	                <li class="u-sidebar--account__list-item">
	                  <a class="u-sidebar--account__list-link" href="https://github.com/min-mr/">
	                    <span class="fas fa-layer-group u-sidebar--account__list-icon mr-2"></span>
	                    	Kim Minkyeong Github
	                  </a>
	                </li>
	                <li class="u-sidebar--account__list-item">
	                  <a class="u-sidebar--account__list-link" href="https://github.com/eunjimimi22/">
	                    <span class="fas fa-users u-sidebar--account__list-icon mr-2"></span>
	                    	Yang Eunji Github
	                  </a>
	                </li>
	                <li class="u-sidebar--account__list-item">
	                  <a class="u-sidebar--account__list-link" href="https://github.com/sskzld/">
	                    <span class="fas fa-exchange-alt u-sidebar--account__list-icon mr-2"></span>
	                    	Jung ByeonKwon Github
	                  </a>
	                </li>
	                <li class="u-sidebar--account__list-item">
	                  <a class="u-sidebar--account__list-link" href="https://github.com/Beep-cl/">
	                    <span class="fas fa-wallet u-sidebar--account__list-icon mr-2"></span>
	                    	Jung Seunghoon Github
	                  </a>
	                </li>
	              </ul>
	
	            </div>
	          </div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 50px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 50px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div>
	        </div>
	      </div>
	    </div>
	  </aside>
  
  <!-- End Account Sidebar Navigation -->

  <!-- ========== END SECONDARY CONTENTS ========== -->

  <!-- Go to Top -->
  <a class="js-go-to u-go-to animated" href="https://htmlstream.com/preview/front-v2.9.0/html/account/dashboard.html#" data-position="{&quot;bottom&quot;: 15, &quot;right&quot;: 15 }" data-type="fixed" data-offset-top="400" data-compensation="#header" data-show-effect="slideInUp" data-hide-effect="slideOutDown" style="display: none; position: fixed; bottom: 15px; right: 15px; opacity: 0;">
    <span class="fas fa-arrow-up u-go-to__inner"></span>
  </a>
  <!-- End Go to Top -->

  <!-- JS Global Compulsory -->
  <script src="${resourceBoot}/js/jquery.min.js"></script>
  <script src="${resourceBoot}/js/jquery-migrate.min.js"></script>
  <script src="${resourceBoot}/js/popper.min.js"></script>
  <script src="${resourceBoot}/js/bootstrap.min.js"></script>

  <!-- JS Implementing Plugins -->
  <script src="${resourceBoot}/js/hs.megamenu.js"></script>
  <script src="${resourceBoot}/js/svg-injector.min.js"></script>
  <script src="${resourceBoot}/js/jquery.mCustomScrollbar.concat.min.js"></script>
  <script src="${resourceBoot}/js/jquery.validate.min.js"></script>
  <script src="${resourceBoot}/js/custombox.min.js"></script>
  <script src="${resourceBoot}/js/custombox.legacy.min.js"></script>
  <script src="${resourceBoot}/js/flatpickr.min.js"></script>
  <script src="${resourceBoot}/js/appear.js"></script>
  <script src="${resourceBoot}/js/circles.min.js"></script>

  <!-- JS Front -->
  <script src="${resourceBoot}/js/hs.core.js"></script>
  <script src="${resourceBoot}/js/hs.header.js"></script>
  <script src="${resourceBoot}/js/hs.unfold.js"></script>
  <script src="${resourceBoot}/js/hs.malihu-scrollbar.js"></script>
  <script src="${resourceBoot}/js/hs.focus-state.js"></script>
  <script src="${resourceBoot}/js/hs.validation.js"></script>
  <script src="${resourceBoot}/js/hs.modal-window.js"></script>
  <script src="${resourceBoot}/js/hs.step-form.js"></script>
  <script src="${resourceBoot}/js/hs.show-animation.js"></script>
  <script src="${resourceBoot}/js/hs.range-datepicker.js"></script>
  <script src="${resourceBoot}/js/hs.chart-pie.js"></script>
  <script src="${resourceBoot}/js/hs.progress-bar.js"></script>
  <script src="${resourceBoot}/js/hs.svg-injector.js"></script>
  <script src="${resourceBoot}/js/hs.go-to.js"></script>

  <!-- JS Plugins Init. -->
  <script>
  	//로딩창 테스트 3초동안 껏다켜짐
  	function test(imageName) {
	    LoadingWithMask();
	    setTimeout("closeLoadingWithMask()", 3000);
	}
	//로딩창 회색화면만듬
	function LoadingWithMask() {
	    //화면의 높이와 너비를 구합니다.
	    var maskHeight = $(document).height();
	    var maskWidth  = window.document.body.clientWidth;
	    //화면에 출력할 마스크를 설정해줍니다.
	    var mask = "<div id='mask' style='position:absolute; z-index:9000; background-color:#000000; display:none; left:0; top:0;'></div>";
	    //화면에 레이어 추가
	    $('body').append(mask)
	    //마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채웁니다.
	    $('#mask').css({
	            'width' : maskWidth,
	            'height': maskHeight,
	            'opacity' : '0.5'
	    });
	    //마스크 표시
	    $('#mask').show();
	  
	}
	//로딩창 회색화면만든거 풀어줌
	function closeLoadingWithMask() {
	    $('#mask').hide();
	    $('#mask').empty(); 
	}


  
    $(window).on('load', function () {
      $('.js-mega-menu').HSMegaMenu({
        event: 'hover',
        pageContainer: $('.container'),
        breakpoint: 767.98,
        hideTimeOut: 0
      });

      // initialization of HSMegaMenu component
      $('.js-breadcrumb-menu').HSMegaMenu({
        event: 'hover',
        pageContainer: $('.container'),
        breakpoint: 991.98,
        hideTimeOut: 0
      });

      // initialization of svg injector module
      $.HSCore.components.HSSVGIngector.init('.js-svg-injector');
    });

    $(document).on('ready', function () {
      // initialization of header
      $.HSCore.components.HSHeader.init($('#header'));

      
      // initialization of unfold component
  <sec:authorize access="isAuthenticated()">
	  $.HSCore.components.HSUnfold.init($('[data-unfold-target]'), {
        afterOpen: function () {
          $(this).find('input[type="search"]').focus();
        }
      });
  </sec:authorize>

  <sec:authorize access="isAnonymous()">
	  $.HSCore.components.HSUnfold.init($('[data-unfold-target]'), {
        afterOpen: function () {
          $(this).onclick = window.location = '/smart/login';
        }
      });
  </sec:authorize>

      // initialization of malihu scrollbar
      $.HSCore.components.HSMalihuScrollBar.init($('.js-scrollbar'));

      // initialization of forms
      $.HSCore.components.HSFocusState.init();

      // initialization of form validation
      $.HSCore.components.HSValidation.init('.js-validate');

      // initialization of autonomous popups
      $.HSCore.components.HSModalWindow.init('[data-modal-target]', '.js-modal-window', {
        autonomous: true
      });

      // initialization of step form
      $.HSCore.components.HSStepForm.init('.js-step-form');

      // initialization of show animations
      $.HSCore.components.HSShowAnimation.init('.js-animation-link');

      // initialization of range datepicker
      $.HSCore.components.HSRangeDatepicker.init('.js-range-datepicker');

      // initialization of chart pies
      var items = $.HSCore.components.HSChartPie.init('.js-pie');

      // initialization of horizontal progress bars
      var horizontalProgressBars = $.HSCore.components.HSProgressBar.init('.js-hr-progress', {
        direction: 'horizontal',
        indicatorSelector: '.js-hr-progress-bar'
      });

      var verticalProgressBars = $.HSCore.components.HSProgressBar.init('.js-vr-progress', {
        direction: 'vertical',
        indicatorSelector: '.js-vr-progress-bar'
      });

      // initialization of go to
      $.HSCore.components.HSGoTo.init('.js-go-to');
      

    });
  </script>

</body></html>