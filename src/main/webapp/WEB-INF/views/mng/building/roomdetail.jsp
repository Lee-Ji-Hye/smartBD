<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp" %>
<%-- <%@ include file="../../common/header.jsp" %> --%>
<%@ include file="../../common/headerAdmin.jsp" %>
<link href="/smart/resources/css/bxslider/bxslider.css" rel="stylesheet" />
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bxslider/4.2.15/jquery.bxslider.min.js"></script>
	
	<ul class="bxslider" style="width:300px;height:150px">
			  
			  <c:if test="${icnt == 0}">
			  	<li><img src="/smart/resources/images/room/noimage.png" /></li>
			  </c:if>
	 
              <c:if test="${icnt >0}">
              	<c:forEach var="img" items="${image}" varStatus="status">
              		<li><img src="/smart/resources/images/room/${img.r_img}" /></li>
              	</c:forEach>
              </c:if>
		
	</ul>
	<script type="text/javascript">
		$(document).ready(function() {

				$('.bxslider').bxSlider({
					auto : false,
					speed : 500,
					pause : 4000,
					mode : 'fade',
					autoControls : true,
					pager : true,
				});

		});
	</script>
	<!-- ========== MAIN ========== -->
<!-- ========== MAIN CONTENT ========== -->
  <main id="content" role="main">
    <!-- Gallery Section -->
    <div class="container-fluid position-relative p-2 mb-3">
      
    </div>
    <!-- End Gallery Section -->

    <!-- Property Description Section -->
    <div class="container space-bottom-2">
      <!-- Additional Functions -->
      <div class="d-md-flex justify-content-md-start align-items-md-center text-center mb-7">
        <div class="mr-md-auto mb-2 mb-md-0">
          <!-- <span class="font-size-1 font-weight-medium"></span> -->
         <!--  <span class="text-secondary font-size-1">December 27, 2018</span> -->
        </div>

        <a class="btn btn-sm btn-outline-secondary border-white" href="${path_r_mng}/roomlist"
           data-target="#calculatorSection"
           data-type="static">
          <img src="${resourceImg}/room/search.png" width=15px; height=15px">
          	매물 목록으로 
        </a>

        <a class="btn btn-sm btn-outline-secondary border-white" href="${path_r_mng}/roomupload/?mode=edit&r_code=${dto.r_code}">
          <img src="${resourceImg}/room/writing.png" width=15px; height=15px">
          	 매물 수정하기 
        </a>
        
        <a class="btn btn-sm btn-outline-secondary border-white"href="${path_r_mng}/imageadd?r_code=${dto.r_code}">
          <img src="${resourceImg}/room/imgup.png" width=15px; height=15px">
          	 슬라이드 이미지 등록 
        </a>	

        <a class="btn btn-sm btn-outline-secondary border-white" href="${path_r_mng}/deletePro/?r_code=${dto.r_code}&r_delete=${dto.r_delete}">
          <img src="${resourceImg}/room/recycle.png" width=15px; height=15px">
          	<c:if test="${dto.r_delete eq 0}">
          		매물 비공개로 전환
          	</c:if>
          	<c:if test="${dto.r_delete eq 1}">
          		매물 공개로 전환
          	</c:if>
        </a>
      </div>
      <!-- End Additional Functions -->

      <!-- Title -->
      <div class="row justify-content-lg-between">
        <div class="col-lg-8">
          <!-- Breadcrumb -->
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb breadcrumb-no-gutter bg-transparent font-size-1">
              <li class="breadcrumb-item">매물종류:
          <c:if test="${dto.r_kind eq 'RT'}">사무실</c:if>
          <c:if test="${dto.r_kind eq 'ST'}">상가</c:if>
              </li>
              <li class="breadcrumb-item">거래유형 :${dto.r_type}</li>
              <li class="breadcrumb-item active" aria-current="page">보증금:${dto.r_deposit} ETH</li>
              <li class="breadcrumb-item active" aria-current="page">권리금:${dto.r_premium} ETH</li>
              <li class="breadcrumb-item active" aria-current="page">관리비:${dto.r_ofer_fee} ETH</li>
            </ol>
          </nav>
          <!-- End Breadcrumb -->

          <h1 class="h3 font-weight-medium">매물가 :${dto.r_price} ETH</h1>
          <h1 class="h3 font-weight-medium">등록 상태:
         	 <c:if test="${dto.r_delete eq 0}">
          		공개
          	</c:if>
          	<c:if test="${dto.r_delete eq 1}">
          		비공개
          	</c:if>
          </h1>
        </div>

        <%-- <div class="col-lg-4 align-self-lg-end text-lg-right mb-5 mb-lg-0">
          <span class="h3 text-primary font-weight-medium">${dto.r_price}만</span>
        </div> --%>
      </div>
      <!-- End Title -->

      <div class="row space-top-2">
        <div class="col-lg-8 mb-9 mb-lg-0">
          <!-- Nav Classic -->
          <ul id="SVGnavIcons" class="svg-preloader nav nav-classic nav-rounded nav-shadow nav-justified border" role="tablist">
            <li class="nav-item">
              <a class="nav-link font-weight-medium active" id="pills-one-tab" data-toggle="pill" href="#pills-one" role="tab" aria-controls="pills-one" aria-selected="true">
                <div class="d-md-flex justify-content-md-center align-items-md-center">
                  <figure class="ie-height-40 d-none d-md-block w-100 max-width-6 mr-3">
                    <img class="js-svg-injector" src="${resourceImg}/room/icon-13.svg" alt="SVG"
                         data-parent="#SVGnavIcons">
                  </figure>
                  	속성 세부사항
                </div>
              </a>
            </li>
            
          </ul>
          <!-- End Nav Classic -->

          <!-- Tab Content -->
          <div class="tab-content">
            <div class="tab-pane fade pt-6 show active" id="pills-one" role="tabpanel" aria-labelledby="pills-one-tab">
              <!-- Title -->
              <div class="mb-3">
                <h2 class="h5">매물명 : ${dto.r_name}호</h2>
              </div>
              <!-- End Title -->

              <!-- Key Facts -->
              <div class="row">
                <div class="col-md-6">
                  <!-- Fact List -->
                  <ul class="list-unstyled font-size-1 mb-0">
                    <li class="d-sm-flex justify-content-sm-between py-1">
                      <span class="font-weight-medium">매물 코드:</span>
                      <span class="text-secondary">${dto.r_code}</span>
                    </li>

                    <li class="d-sm-flex justify-content-sm-between py-1">
                      <span class="font-weight-medium">거래 유형:</span>
                      <span class="text-secondary">${dto.r_type}</span>
                    </li>

                    <li class="d-sm-flex justify-content-sm-between py-1">
                      <span class="font-weight-medium">층 수:</span>
                      <span class="text-secondary">${dto.r_floor}층</span>
                    </li>

                    <li class="d-sm-flex justify-content-sm-between py-1">
                      <span class="font-weight-medium">평 수:</span>
                      <span class="text-secondary">${dto.r_area} ㎡</span>
                    </li>
                  </ul>
                  <!-- End Fact List -->
                </div>

                <div class="col-md-6">
                  <!-- Fact List -->
                  <ul class="list-unstyled font-size-1 mb-0">
                    <li class="d-sm-flex justify-content-sm-between py-1">
                      <span class="font-weight-medium">기타 시설:</span>
                      <span class="text-secondary">${dto.r_indi_space}</span>
                    </li>

                    <li class="d-sm-flex justify-content-sm-between py-1">
                      <span class="font-weight-medium">권리금(상가만):</span>
                      <span class="text-secondary">${dto.r_premium} ETH</span>
                    </li>

                    <li class="d-sm-flex justify-content-sm-between py-1">
                      <span class="font-weight-medium">보증금:</span>
                      <span class="text-secondary">${dto.r_deposit} ETH</span>
                    </li>

                    <li class="d-sm-flex justify-content-sm-between py-1">
                      <span class="font-weight-medium">관리비:</span>
                      <span class="text-secondary">${dto.r_ofer_fee} ETH</span>
                    </li>
                    
                  </ul>
                  <!-- End Fact List -->
                </div>
              </div>
              <!-- End Key Facts -->
              
              

              
              <!-- Collapse Link - Content -->
              <div class="collapse" id="collapseLinkExample">
                <h4 class="h6">추가 설명</h4>

                <p>${dto.r_desc}</p>


                
              </div>
              <!-- End Collapse Link - Content -->

              <!-- Collapse Link -->
              <a class="link-collapse" data-toggle="collapse" href="#collapseLinkExample" role="button" aria-expanded="false" aria-controls="collapseLinkExample">
                <span class="link-collapse__default">추가 설명</span>
                <span class="link-collapse__active">접기</span>
              </a>
              <!-- End Collapse Link -->

              <hr class="my-6">

            
            </div>

            <div class="tab-pane fade pt-6" id="pills-two" role="tabpanel" aria-labelledby="pills-two-tab">
              <!-- Gallery -->
              <a class="js-fancybox u-media-viewer" href="${path_r_mng}/imageadd?r_code=${dto.r_code}"
                 data-src="../../assets/img/others/img1.png"
                 data-fancybox="fancyboxGalleryFloorPlan"
                 data-caption="Floorplan image #01"
                 data-speed="700"
                 data-is-infinite="true">
                
                <img class="img-fluid" src="${resourceImg}/room/photo.png" alt="이미지 등록하러가기" width="125px" height="125px">
              </a>
              <!-- End Gallery -->

              <div class="mt-2">
           	    <p class="small">이미지 등록하기</p>
                <p class="small">만약 당신이 평면도를 원한다면 <a href="https://floorplanner.com/" target="_blank">floorplanner.com</a></p>
              </div>
            </div>

            <div class="tab-pane fade pt-6" id="pills-three" role="tabpanel" aria-labelledby="pills-three-tab">
              <!-- Stats -->
              <div class="mb-5">
                <h2 class="h5">Sale activity</h2>
                <p>Average estimated value for a flat in HG2:</p>

                <span class="text-primary font-size-2 font-weight-medium">$271,401</span>
                <span class="fas fa-angle-down text-danger"></span>
                <span class="text-secondary">$7,710  (-2.762%)</span>
                <small class="text-muted ml-1">Over the last 12 months</small>
              </div>
              <!-- End Stats -->

              <!-- Stats -->
              <div class="mb-5">
                <h2 class="h5">In the last 12 months</h2>
                <div class="row justify-content-sm-between">
                  <div class="col-sm-6">
                    <p class="mb-0">Average sale price</p>
                    <span class="text-primary font-size-2 font-weight-medium">$267,606</span>
                  </div>
                  <div class="col-sm-6">
                    <p class="mb-0">Properties sold</p>
                    <span class="text-primary font-size-2 font-weight-medium">51</span>
                  </div>
                </div>
              </div>
              <!-- End Stats -->
            </div>
          </div>
          <!-- End Tab Content -->

          <hr class="my-6">

         
        </div>

       
      </div>

      <!-- Sticky Block End Point -->
      <div id="stickyBlockEndPoint"></div>

      
     
      <!-- End Similar Properties Section -->
    </div>
    <!-- End Property Description Section -->
  </main>
  <!-- ========== END MAIN CONTENT ========== -->
  	<!-- ========== END MAIN ========== -->
<%@ include file="../../common/footer_roomDetail.jsp" %>