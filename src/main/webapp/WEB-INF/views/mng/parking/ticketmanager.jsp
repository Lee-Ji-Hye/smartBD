<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp" %>
<%@ include file="../../common/headerAdmin.jsp" %>   


<html>
<style type="text/css">
/*input 클릭시, label 스타일*/
        input:checked + label {
              border: 1px solid #ddd;
              border-top: 2px solid #2e9cdf;
              border-bottom: 1px solid #ffffff;}
              * { padding: 0; margin: 0; }
              canvas {background-image: url("/smart/resources/images/B1.jpg");
              background-size: 100% 100%; display: block;
              width:100%; margin: 0 auto;}
.box{
	/* background-color: #f90; */
}              
      
</style>

<meta charset="UTF-8">
<title>주차장 현황</title>
<body>
<form>
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
<c:set var="num" value="-1"></c:set>
<c:forEach var="carnum" items="${curpark}">
<c:set var="num" value="${num + 1}"></c:set>
<input type="hidden" id="A${num}" value="${num}">
<input type="hidden" id="F${num}" value="${carnum.p_floor}">
<input type="hidden" id="X${num}" value="${carnum.location_x}">
<input type="hidden" id="Y${num}" value="${carnum.location_y}">
<input type="hidden" id="P${num}" value="${carnum.park_state}">

</c:forEach>
<div class="bg-primary">
      <div class="container space-top-1 pb-3">
        <div class="row">
          <div class="col-lg-5 order-lg-2 text-lg-right mb-4 mb-lg-0">
            <div class="d-flex d-lg-inline-block justify-content-between justify-content-lg-end align-items-center align-items-lg-start">
              <!-- Breadcrumb -->
              <ol class="breadcrumb breadcrumb-white breadcrumb-no-gutter mb-0">
                <li class="breadcrumb-item"><a class="breadcrumb-link" href="https://htmlstream.com/preview/front-v2.9.0/html/home/index.html">Home</a></li>
                <li class="breadcrumb-item"><a class="breadcrumb-link" href="https://htmlstream.com/preview/front-v2.9.0/html/account/dashboard.html">Account</a></li>
                <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
              </ol>
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
                <img class="img-fluid rounded-circle" src="/smart/resources/bootstrap/image/img2.jpg" alt="Image Description">
                <span class="badge badge-md badge-outline-success badge-pos badge-pos--bottom-right rounded-circle">
                  <!-- <span class="fas fa-check"></span> -->
                  <img src="/smart/resources/images/icon/checkicon.PNG" style="width: 10px;">
                </span>
              </div>
              <div class="media-body">
                <h1 class="h3 text-white font-weight-medium mb-1">Howdy, Natalie!</h1>
                <span class="d-block text-white">natalie.curtis@gmail.com</span>
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
                    <li class="nav-item hs-has-sub-menu u-header__nav-item" data-event="hover" data-animation-in="slideInUp" data-animation-out="fadeOut">
                      <a id="generalDropdown" class="nav-link u-header__nav-link u-header__nav-link-toggle" href="javascript:;" aria-haspopup="true" aria-expanded="false" aria-labelledby="generalDropdownMenu">
                        	전체
                      </a>
                    </li>
                    <!-- General -->

                    <!-- Account Settings -->
                    <li class="nav-item hs-has-sub-menu u-header__nav-item" data-event="hover" data-animation-in="slideInUp" data-animation-out="fadeOut">
                      <a id="accountSettingsDropdown" class="nav-link u-header__nav-link u-header__nav-link-toggle" href="javascript:;" aria-haspopup="true" aria-expanded="false" aria-labelledby="accountSettingsDropdownMenu">
                        	B1
                      </a>
                    </li>
                    <!-- Account Settings -->

                    <!-- Billing -->
                    <li class="nav-item hs-has-sub-menu u-header__nav-item" data-event="hover" data-animation-in="slideInUp" data-animation-out="fadeOut">
                      <a id="billingDropdown" class="nav-link u-header__nav-link u-header__nav-link-toggle" href="javascript:;" aria-haspopup="true" aria-expanded="false" aria-labelledby="billingDropdownMenu">
                        	B2
                      </a>
                    </li>
                    <!-- Billing -->
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
 

   
<canvas id="B1"></canvas>
<!-- <script src="../jQuery/jquery-1.3.2-vsdoc2.js" type="text/javascript"></script> -->
<script type="text/javascript">
 $(function(){
	init();
});
function init(){
	var canvas = document.getElementById("B1");
	var ctx = canvas.getContext("2d");
	var i = 0;
	var count = 0;
	for(; i<28;i++){
		if($("#P"+i).val() == 0){
			ctx.fillStyle = "#000000";
			ctx.fillRect($("#X"+i).val(), $("#Y"+i).val(), 2, 4);
		}else{
			ctx.fillStyle = "#FF0000";
			ctx.fillRect($("#X"+i).val(), $("#Y"+i).val(), 2, 4);
			count = count +1;
		}

	}
	for(; i<240;i++){
		if($("#P"+i).val() == 0){
			ctx.fillStyle = "#000000";
				ctx.fillRect($("#X"+i).val(), $("#Y"+i).val(), 4, 2);
			}else{
				ctx.fillStyle = "#FF0000";
				ctx.fillRect($("#X"+i).val(), $("#Y"+i).val(), 4, 2);
				count = count +1;
			}
	}
	if(count >= 0){
	ctx.font = "3px";
	ctx.fillText("주차 공간 :" + 240, 200, 20);
	ctx.fillText("주차가능 공간 :" + (240-count), 200, 40);
	ctx.fillText("주차된 차량 :" + count, 200, 60);
	ctx.fillStyle = "#333";
	}
	}	 
</script>
</form>
</body>
<%@ include file="../../common/footer.jsp" %>
</html> 