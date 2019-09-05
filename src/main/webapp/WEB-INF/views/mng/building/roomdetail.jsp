<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp" %>
<%@ include file="../../common/header.jsp" %>
<link href="/smart/resources/css/bxslider/bxslider.css" rel="stylesheet" />
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bxslider/4.2.15/jquery.bxslider.min.js"></script>
	
	<ul class="bxslider" style="width:300px;height:150px">
	 
              <c:if test="${icnt >0}">
              	<c:forEach var="img" items="${image}" varStatus="status">
              		<li><img src="/smart/resources/images/slide/${img.r_img}" /></li>
              	</c:forEach>
              </c:if>
		
		<!-- <li><img src="/smart/resources/images/room/img1.jpg" /></li>
		<li><img src="/smart/resources/images/room/charter.png" /></li> -->
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
      <%-- <div class="row mx-gutters-1">
        <div class="col-md-8 col-lg-6">
          <!-- Gallery -->
          <a class="js-fancybox u-media-viewer" href="javascript:;"
             data-src="../../assets/img/1920x1080/img36.jpg"
             data-fancybox="fancyboxGallery6"
             data-caption="Front in frames - image #01"
             data-speed="700"
             data-is-infinite="true">
            <img class="img-fluid" src="${resourceImg}/room/img1.jpg" alt="Image Description">

            <div class="position-absolute bottom-0 right-0 pb-3 pr-3">
              <span class="d-md-none btn btn-sm btn-white">
                <span class="fas fa-expand mr-2"></span>
                View Photos
              </span>
            </div>
          </a>
          <!-- End Gallery -->
        </div>

        <div class="col-md-4 col-lg-3 d-none d-md-inline-block">
          <!-- Gallery -->
          <a class="js-fancybox u-media-viewer mb-2" href="javascript:;"
             data-src="../../assets/img/1920x1080/img37.jpg"
             data-fancybox="fancyboxGallery6"
             data-caption="Front in frames - image #02"
             data-speed="700"
             data-is-infinite="true">
            <img class="img-fluid" src="${resourceImg}/room/img11.jpg" alt="Image Description">
          </a>
          <!-- End Gallery -->

          <!-- Gallery -->
          <a class="js-fancybox u-media-viewer" href="javascript:;"
             data-src="../../assets/img/1920x1080/img38.jpg"
             data-fancybox="fancyboxGallery6"
             data-caption="Front in frames - image #03"
             data-speed="700"
             data-is-infinite="true">
            <img class="img-fluid" src="${resourceImg}/room/img2.jpg" alt="Image Description">

            <div class="position-absolute bottom-0 right-0 pb-3 pr-3">
              <span class="d-sm-inline-block d-lg-none btn btn-sm btn-white">
                <span class="fas fa-expand mr-2"></span>
                View Photos
              </span>
            </div>
          </a>
          <!-- End Gallery -->
        </div>

        <div class="col-lg-3 d-none d-lg-inline-block">
          <!-- Gallery -->
          <a class="js-fancybox u-media-viewer mb-2" href="javascript:;"
             data-src="../../assets/img/1920x1080/img39.jpg"
             data-fancybox="fancyboxGallery6"
             data-caption="Front in frames - image #04"
             data-speed="700"
             data-is-infinite="true">
            <img class="img-fluid" src="${resourceImg}/room/img3.jpg" alt="Image Description">
          </a>
          <!-- End Gallery -->

          <!-- Gallery -->
          <a class="js-fancybox u-media-viewer" href="javascript:;"
             data-src="../../assets/img/1920x1080/img40.jpg"
             data-fancybox="fancyboxGallery6"
             data-caption="Front in frames - image #04"
             data-speed="700"
             data-is-infinite="true">
            <img class="img-fluid" src="${resourceImg}/room/img4.jpg" alt="Image Description">

            <div class="position-absolute bottom-0 right-0 pb-3 pr-3">
              <span class="d-none d-lg-inline-block btn btn-sm btn-white">
                <span class="fas fa-expand mr-2"></span>
                View Photos
              </span>
            </div>
          </a>
          <!-- End Gallery -->

          <img class="js-fancybox d-none" alt="Image Description"
               data-fancybox="fancyboxGallery6"
               data-src="../../assets/img/1920x1080/img41.jpg"
               data-caption="Front in frames - image #05"
               data-speed="700"
               data-is-infinite="true">
          <img class="js-fancybox d-none" alt="Image Description"
               data-caption="Front in frames - image #06"
               data-src="../../assets/img/1920x1080/img42.jpg"
               data-fancybox="fancyboxGallery6"
               data-speed="700"
               data-is-infinite="true">
        </div>
      </div> --%>
    </div>
    <!-- End Gallery Section -->

    <!-- Property Description Section -->
    <div class="container space-bottom-2">
      <!-- Additional Functions -->
      <div class="d-md-flex justify-content-md-start align-items-md-center text-center mb-7">
        <div class="mr-md-auto mb-2 mb-md-0">
          <span class="font-size-1 font-weight-medium">Published:</span>
          <span class="text-secondary font-size-1">December 27, 2018</span>
        </div>

        <a class="btn btn-sm btn-outline-secondary border-white" href="/smart/mng/roomlist"
           data-target="#calculatorSection"
           data-type="static">
          <img src="${resourceImg}/room/search.png" width=15px; height=15px">
          	매물 목록으로 
        </a>

        <a class="btn btn-sm btn-outline-secondary border-white" href="/smart/mng/roomupload/?mode=edit&r_code=${dto.r_code}">
          <img src="${resourceImg}/room/writing.png" width=15px; height=15px">
          	 매물 수정하기 
        </a>

        <a class="btn btn-sm btn-outline-secondary border-white" href="/smart/mng/deletePro/?r_code=${dto.r_code}">
          <img src="${resourceImg}/room/trash.png" width=15px; height=15px">
          	매물 삭제하기
        </a>
      </div>
      <!-- End Additional Functions -->

      <!-- Title -->
      <div class="row justify-content-lg-between">
        <div class="col-lg-8">
          <!-- Breadcrumb -->
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb breadcrumb-no-gutter bg-transparent font-size-1">
              <li class="breadcrumb-item"><a href="#">For Sale</a></li>
              <li class="breadcrumb-item"><a href="#">England</a></li>
              <li class="breadcrumb-item"><a href="#">London</a></li>
              <li class="breadcrumb-item"><a href="#">Studio</a></li>
              <li class="breadcrumb-item active" aria-current="page">470 Lucy Forks, Patriciafurt, YC7B</li>
            </ol>
          </nav>
          <!-- End Breadcrumb -->

          <h1 class="h3 font-weight-medium">${dto.r_price}만</h1>
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
            <li class="nav-item">
              <a class="nav-link font-weight-medium" id="pills-two-tab" data-toggle="pill" href="#pills-two" role="tab" aria-controls="pills-two" aria-selected="false">
                <div class="d-md-flex justify-content-md-center align-items-md-center">
                  <figure class="ie-height-40 d-none d-md-block w-100 max-width-6 mr-3">
                    <img class="js-svg-injector" src="${resourceImg}/room/icon-63.svg" alt="SVG"
                         data-parent="#SVGnavIcons">
                  </figure>
                  	등록한매물사진
                </div>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link font-weight-medium" id="pills-three-tab" data-toggle="pill" href="#pills-three" role="tab" aria-controls="pills-three" aria-selected="false">
                <div class="d-md-flex justify-content-md-center align-items-md-center">
                  <figure class="ie-height-40 d-none d-md-block w-100 max-width-6 mr-3">
                    <img class="js-svg-injector" src="${resourceImg}/room/icon-5.svg" alt="SVG"
                         data-parent="#SVGnavIcons">
                  </figure>
                  	시장 통계
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
                      <span class="text-secondary">${dto.r_premium}만</span>
                    </li>

                    <li class="d-sm-flex justify-content-sm-between py-1">
                      <span class="font-weight-medium">보증금:</span>
                      <span class="text-secondary">${dto.r_deposit}만</span>
                    </li>

                    <li class="d-sm-flex justify-content-sm-between py-1">
                      <span class="font-weight-medium">관리비:</span>
                      <span class="text-secondary">${dto.r_ofer_fee}만</span>
                    </li>
                    
                  </ul>
                  <!-- End Fact List -->
                </div>
              </div>
              <!-- End Key Facts -->
              
              

              <!-- View Info -->
              <!-- <div class="border-top border-bottom py-4 my-6">
                <div class="row justify-content-sm-between">
                  <div class="col-sm-6 text-sm-right u-ver-divider u-ver-divider--none-sm mb-2 mb-sm-0">
                    <div class="pr-md-4">
                      <span class="text-secondary">Last 30 days:</span>
                      <strong class="text-dark">920 page views</strong>
                    </div>
                  </div>
                  <div class="col-sm-6 ">
                    <div class="pl-md-4">
                      <span class="text-secondary">Since listed:</span>
                      <strong class="text-dark">471 page views</strong>
                    </div>
                  </div>
                </div>
              </div> -->
              <!-- End View Info -->

              <!-- Title -->
             <!--  <div class="mb-3">
                <h3 class="h5">Property description</h3>
              </div> -->
              <!-- End Title -->

             <!--  <p>This extremely spacious two/three bedroom duplex apartment occupies a desirable position to the South-West of Harrogate's town centre and offers a huge amount of scope to update and re-model to suit the individual including a large eaves storage room ripe for conversion into a second bathroom.</p>

              <p>Accessed via a communal hall up to the first floor, the apartment opens into a split level hall. To the front elevation there is a lovely, light and airy lounge with far reaching views towards the town centre and countryside beyond. Adjoining there is a well proportioned double bedroom with a fitted wardrobe.</p>
 -->
              <!-- Collapse Link - Content -->
              <div class="collapse" id="collapseLinkExample">
                <h4 class="h6">추가 설명</h4>

                <p>${dto.r_desc}</p>

                <!-- <h4 class="h6">Strictly by appointment through Front House</h4>

                <p>You may download, store and use the material for your own personal use and research. You may not republish, retransmit, redistribute or otherwise make the material available to any party or make the same available on any website, online service or bulletin board of your own or of any other party or make the same available in hard copy or in any other media without the website owner's express prior written consent. The website owner's copyright must remain on all reproductions of material taken from this website.</p> -->
              </div>
              <!-- End Collapse Link - Content -->

              <!-- Collapse Link -->
              <a class="link-collapse" data-toggle="collapse" href="#collapseLinkExample" role="button" aria-expanded="false" aria-controls="collapseLinkExample">
                <span class="link-collapse__default">추가 설명</span>
                <span class="link-collapse__active">접기</span>
              </a>
              <!-- End Collapse Link -->

              <hr class="my-6">

              <!-- Title -->
             <!--  <div class="mb-3">
                <h3 class="h5">Accessibility</h3>
              </div> -->
              <!-- End Title -->

              <!-- Estimated Costs -->
             <!--  <div class="row">
                <div class="col-md-6">
                  Accessibility List
                  <ul class="list-unstyled font-size-1 mb-0">
                    <li class="d-flex align-items-center py-1">
                      <span class="font-weight-medium">Location</span>
                      <div class="ml-auto">
                        <span class="fas fa-star text-warning ml-1"></span>
                        <span class="fas fa-star text-warning ml-1"></span>
                        <span class="fas fa-star text-warning ml-1"></span>
                        <span class="fas fa-star text-warning ml-1"></span>
                        <span class="fas fa-star text-warning ml-1"></span>
                      </div>
                    </li>

                    <li class="d-flex align-items-center py-1">
                      <span class="font-weight-medium">Area safety</span>
                      <div class="ml-auto">
                        <span class="fas fa-star text-warning ml-1"></span>
                        <span class="fas fa-star text-warning ml-1"></span>
                        <span class="fas fa-star text-warning ml-1"></span>
                        <span class="fas fa-star text-warning ml-1"></span>
                        <span class="fas fa-star text-warning ml-1"></span>
                      </div>
                    </li>

                    <li class="d-flex align-items-center py-1">
                      <span class="font-weight-medium">Close to schools</span>
                      <div class="ml-auto">
                        <span class="fas fa-star text-warning ml-1"></span>
                        <span class="fas fa-star text-warning ml-1"></span>
                        <span class="fas fa-star text-warning ml-1"></span>
                        <span class="fas fa-star text-warning ml-1"></span>
                        <span class="fas fa-star text-warning ml-1"></span>
                      </div>
                    </li>
                  </ul>
                  End Accessibility List
                </div>

                <div class="col-md-6">
                  Accessibility List
                  <ul class="list-unstyled font-size-1 mb-0">
                    <li class="d-flex align-items-center py-1">
                      <span class="font-weight-medium">Low cost</span>
                      <div class="ml-auto">
                        <span class="fas fa-star text-warning ml-1"></span>
                        <span class="fas fa-star text-warning ml-1"></span>
                        <span class="fas fa-star text-warning ml-1"></span>
                        <span class="fas fa-star text-warning ml-1"></span>
                        <span class="fas fa-star text-warning ml-1"></span>
                      </div>
                    </li>

                    <li class="d-flex align-items-center py-1">
                      <span class="font-weight-medium">Built around</span>
                      <div class="ml-auto">
                        <span class="fas fa-star text-warning ml-1"></span>
                        <span class="fas fa-star text-warning ml-1"></span>
                        <span class="fas fa-star text-warning ml-1"></span>
                        <span class="fas fa-star text-warning ml-1"></span>
                        <span class="far fa-star text-warning ml-1"></span>
                      </div>
                    </li>

                    <li class="d-flex align-items-center py-1">
                      <span class="font-weight-medium">Value</span>
                      <div class="ml-auto">
                        <span class="fas fa-star text-warning ml-1"></span>
                        <span class="fas fa-star text-warning ml-1"></span>
                        <span class="fas fa-star text-warning ml-1"></span>
                        <span class="far fa-star text-warning ml-1"></span>
                        <span class="far fa-star text-warning ml-1"></span>
                      </div>
                    </li>
                  </ul>
                  End Accessibility List
                </div>
              </div> -->
              <!-- End Estimated Costs -->

             <!--  <hr class="my-6"> -->

              <!-- Title -->
             <!--  <div class="mb-3">
                <h3 class="h5 mb-1">Estimated running costs</h3>
                <p class="small">Based on available 3rd party data</p>
              </div> -->
              <!-- End Title -->

              <!-- Estimated Costs -->
              <!-- <div class="row">
                <div class="col-md-6">
                  <span class="h1 font-weight-medium mb-0">$810</span>
                  <p>Approximate costs per month</p>
                </div>

                <div class="col-md-6">
                  Costs List
                  <ul class="list-unstyled font-size-1 mb-0">
                    <li class="d-flex align-items-center py-1">
                      <span class="fas fa-hand-holding-usd min-width-4 text-secondary text-center mr-2"></span>
                      <span class="font-weight-medium">Mortgage</span>
                      <div class="ml-auto">
                        <span class="text-secondary">$700 p/m</span>
                      </div>
                    </li>

                    <li class="d-flex align-items-center py-1">
                      <span class="fas fa-burn min-width-4 text-secondary text-center mr-2"></span>
                      <span class="font-weight-medium">Energy</span>
                      <div class="ml-auto">
                        <span class="text-secondary">from $72 p/m</span>
                      </div>
                    </li>

                    <li class="d-flex align-items-center py-1">
                      <span class="fas fa-tint min-width-4 text-secondary text-center mr-2"></span>
                      <span class="font-weight-medium">Water</span>
                      <div class="ml-auto">
                        <span class="text-secondary">from $38 p/m</span>
                      </div>
                    </li>

                    <li class="d-flex align-items-center py-1">
                      <span class="fas fa-shield-alt min-width-4 text-secondary text-center mr-2"></span>
                      <span class="font-weight-medium">Home insurance</span>
                      <div class="ml-auto">
                        <span class="text-secondary">not known</span>
                      </div>
                    </li>
                  </ul>
                  End Costs List
                </div>
              </div> -->
              <!-- End Estimated Costs -->
            </div>

            <div class="tab-pane fade pt-6" id="pills-two" role="tabpanel" aria-labelledby="pills-two-tab">
              <!-- Gallery -->
              <a class="js-fancybox u-media-viewer" href="/smart/mng/imageadd?r_code=${dto.r_code}"
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

          <!-- Title -->
          <!-- <div class="mb-3">
            <h3 class="h5">Listing agents</h3>
          </div> -->
          <!-- End Title -->

          <!-- Agents List -->
         <%--  <div class="row">
            <div class="col-sm-6 col-md-5 mb-4 mb-sm-0">
              <!-- Agent -->
              <div class="media">
                <div class="u-lg-avatar mr-3">
                  <img class="img-fluid rounded-circle" src="${resourceImg}/room/img8.jpg" alt="Image Description">
                </div>
                <div class="media-body">
                  <h4 class="h6 mb-1">O'Brian Cox</h4>
                  <p class="font-size-1 mb-2">
                    <span class="fas fa-phone mr-1"></span>
                    +1 416 346 8780
                  </p>
                  <a class="btn btn-xs btn-soft-primary" href="#">Contact agent</a>
                </div>
              </div>
              <!-- End Agent -->
            </div>

            <div class="col-sm-6 col-md-5">
              <!-- Agent -->
              <div class="media">
                <span class="btn btn-icon btn-lg btn-soft-danger rounded-circle mr-3">
                  <span class="btn-icon__inner">KP</span>
                </span>
                <div class="media-body">
                  <h4 class="h6 mb-1">Keystones Property</h4>
                  <p class="font-size-1 mb-2">
                    <span class="fas fa-phone mr-1"></span>
                    +1 822 012 3281
                  </p>
                  <a class="btn btn-xs btn-soft-primary" href="#">Contact agent</a>
                </div>
              </div>
              <!-- End Agent -->
            </div>
          </div>
          <!-- End Agents List --> --%>
        </div>

        <div class="col-lg-4">
          <div id="stickyBlockStartPoint" class="pl-lg-4">
            <!-- Contact Form -->
            <%-- <div class="js-sticky-block card shadow-sm p-4"
                 data-parent="#stickyBlockStartPoint"
                 data-sticky-view="lg"
                 data-start-point="#stickyBlockStartPoint"
                 data-end-point="#stickyBlockEndPoint"
                 data-offset-top="24"
                 data-offset-bottom="0">
              <!-- Header -->
              <div class="media align-items-center mb-4">
                <div class="u-avatar mr-3">
                  <img class="img-fluid rounded-circle" src="${resourceImg}/room/img8.jpg" alt="Image Description">
                </div>
                <div class="media-body">
                  <h4 class="h6 mb-0">궁금한게 있으면 물어보세요</h4>
                </div>
              </div>
              <!-- End Header -->

              <!-- Form -->
              <!-- <form>
                <select class="custom-select custom-select-sm mb-2">
                  <option selected>Tell me more about this property</option>
                  <option value="aboutProperty1">Request a showing</option>
                  <option value="aboutProperty2">Request neighborhood information</option>
                  <option value="aboutProperty3">Request recent area sales</option>
                </select>

                <div class="mb-2">
                  <label class="sr-only" for="firstNameSr">First Name</label>
                  <input type="text" class="form-control form-control-sm" name="text" id="firstNameSr" placeholder="First Name" aria-label="First Name">
                </div>

                <div class="mb-2">
                  <label class="sr-only" for="lastNameSr">Last Name</label>
                  <input type="text" class="form-control form-control-sm" name="text" id="lastNameSr" placeholder="Last Name" aria-label="Last Name">
                </div>

                <div class="mb-2">
                  <label class="sr-only" for="emailSr">Email</label>
                  <input type="email" class="form-control form-control-sm" name="text" id="emailSr" placeholder="Email" aria-label="Email">
                </div>

                <div class="mb-2">
                  <label class="sr-only" for="phoneNumberSr">Phone number</label>
                  <input type="tel" class="form-control form-control-sm" name="tel" id="phoneNumberSr" placeholder="Phone number" aria-label="Phone number">
                </div>

                <div class="mb-2">
                  <label class="sr-only" for="propertyQuestionSr">Property question</label>
                  <textarea class="form-control form-control-sm" rows="4" name="answer" id="propertyQuestionSr" placeholder="I would like more information about ..." aria-label="I would like more information about ..."></textarea>
                </div>

                <button type="button" class="btn btn-block btn-sm btn-primary btn-wide transition-3d-hover">Submit</button>
              </form> -->
              <!-- End Form -->
            </div> --%>
            <!-- End Contact Form -->
          </div>
        </div>
      </div>

      <!-- Sticky Block End Point -->
      <div id="stickyBlockEndPoint"></div>

      <!-- Calculator Section -->
      <!-- <div id="calculatorSection" class="border-top border-bottom py-8 my-8">
        Title
        <div class="mb-3">
          <h2 class="h5">Payment calculator</h2>
        </div>
        End Title

        <div class="card bg-light p-5">
          Total Price
          <div class="mb-4">
            <span class="h4 font-weight-medium">$37,469</span>
            <span class="h6 font-weight-medium">monthly.</span>
            <span class="h6 text-secondary font-weight-normal ml-3">In association with:</span>
          </div>
          End Total Price

          Stats
          <div class="row mb-2 mb-lg-0">
            <div class="col-lg-7 mb-2 mb-lg-0">
              Calculator Form
              <form class="row">
                <div class="col-md-6 mb-4">
                  Input
                  <label class="form-label">Price of property</label>

                  <div class="js-focus-state input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">$</span>
                    </div>
                    <input class="form-control" type="text" value="$8,999,000" disabled>
                  </div>
                  End Input
                </div>

                <div class="col-md-6 mb-4">
                  Input
                  <label class="form-label">Deposit</label>

                  <div class="js-focus-state input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">$</span>
                    </div>
                    <input class="form-control" type="text" value="1,799,800">
                  </div>
                  End Input
                </div>

                <div class="w-100"></div>

                <div class="col-md-6 mb-4">
                  Input
                  <label class="form-label">Interest rate</label>

                  <div class="js-focus-state input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">%</span>
                    </div>
                    <input class="form-control" type="text" value="3.5">
                  </div>
                  End Input
                </div>

                <div class="col-md-6 mb-4">
                  Input
                  <label class="form-label">Amortization</label>

                  <select class="custom-select">
                    <option value="amortization1">30 years</option>
                    <option selected>25 years</option>
                    <option value="amortization2">20 years</option>
                    <option value="amortization3">15 years</option>
                    <option value="amortization4">10 years</option>
                  </select>
                  End Input
                </div>
              </form>
              End Calculator Form
            </div>

            <div class="col-lg-5">
              Progress
              <div class="progress mb-3" style="height: .5rem;">
                <div class="progress-bar" role="progressbar" style="width: 60%;" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
                <div class="progress-bar bg-success" role="progressbar" style="width: 30%;" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
                <div class="progress-bar bg-info" role="progressbar" style="width: 10%;" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
              </div>
              End Progress

              Fact List
              <ul class="list-unstyled font-size-1 mb-0">
                <li class="d-flex align-items-center py-1">
                  <small class="far fa-circle text-primary mr-2"></small>
                  <span class="font-weight-medium">Principal and Interest</span>
                  <div class="ml-auto">
                    <span class="text-secondary">$35,943 /mo</span>
                  </div>
                </li>

                <li class="d-flex align-items-center py-1">
                  <small class="far fa-circle text-success mr-2"></small>
                  <span class="font-weight-medium">Property Taxes</span>
                  <div class="ml-auto">
                    <span class="text-secondary">$1,526 /mo</span>
                  </div>
                </li>

                <li class="d-flex align-items-center py-1">
                  <small class="far fa-circle text-info mr-2"></small>
                  <span class="font-weight-medium">Yearly Condo Fees</span>
                  <div class="ml-auto">
                    <span class="text-secondary">n/a</span>
                  </div>
                </li>
              </ul>
              End Fact List
            </div>
          </div>
          End Stats

          <p class="small">* These results are not provided by Front House and are only indicative based on a repayment mortgage product. Repayments will be subject to the product provided and your circumstances.</p>
        </div>
      </div> -->
      <!-- End Calculator Section -->

      <!-- Google Map Section -->
      <div id="GMapCustomized-light" class="js-g-map embed-responsive embed-responsive-21by9"
           data-type="custom"
           data-lat="40.674"
           data-lng="-73.946"
           data-zoom="12"
           data-title="Front"
           data-pin="true"
           data-pin-icon="../../assets/img/map-markers/map-marker6.png"
           data-styles='[
             ["", "", [{"saturation":-100},{"lightness":51},{"visibility":"simplified"}]],
             ["", "labels", [{"visibility":"on"}]],
             ["water", "", [{"color":"#bac6cb"}]]
           ]'></div>
      <!-- End Google Map Section -->

      <!-- Similar Properties Section -->
      <%-- <div class="border-top pt-8 mt-8">
        <!-- Title -->
        <div class="mb-3">
          <h2 class="h5">Similar properties</h2>
        </div>
        <!-- End Title -->

        <!-- Slick Carousel -->
        <div class="js-slick-carousel u-slick u-slick-zoom u-slick--gutters-3"
             data-slides-show="3"
           data-arrows-classes="d-none d-lg-inline-block u-slick__arrow u-slick__arrow--flat u-slick__arrow-centered--y rounded-circle"
             data-arrow-left-classes="fas fa-arrow-left u-slick__arrow-inner u-slick__arrow-inner--left ml-n2"
             data-arrow-right-classes="fas fa-arrow-right u-slick__arrow-inner u-slick__arrow-inner--right mr-n2"
             data-pagi-classes="d-lg-none text-center u-slick__pagination mt-5 mb-0"
             data-responsive='[{
               "breakpoint": 992,
               "settings": {
                 "slidesToShow": 2
               }
             }, {
               "breakpoint": 768,
               "settings": {
                 "slidesToShow": 1
               }
             }]'>
          <div class="js-slide card border-0 shadow-sm mb-3">
            <!-- House Items -->
            <div class="position-relative">
              <img class="card-img-top" src="${resourceImg}/room/img8.jpg" alt="Image Description">
              <header class="position-absolute top-0 right-0 left-0 p-5">
                <a class="media align-items-center text-white" href="#">
                  <div class="u-avatar mr-2">
                    <img class="img-fluid rounded-circle" src="${resourceImg}/room/img12.jpg" alt="Image Description">
                  </div>
                  <div class="media-body">
                    <span>Maria Muszynska</span>
                  </div>
                </a>
              </header>
              <div class="position-absolute right-0 bottom-0 left-0 p-5">
                <span class="h4 text-white">$455,000</span>
              </div>
            </div>

            <div class="card-body p-5">
              <h4 class="h6">
                <a href="#">Abbots Way, North Shields</a>
              </h4>
              <span class="fas fa-map-marker-alt text-danger mr-2"></span>
              <a class="text-secondary" href="#">London, England</a>
            </div>
            <!-- End House Items -->
          </div>

          <div class="js-slide card border-0 shadow-sm mb-3">
            <!-- House Items -->
            <div class="position-relative">
              <img class="card-img-top" src="${resourceImg}/room/img15.jpg" alt="Image Description">
              <header class="position-absolute top-0 right-0 left-0 p-5">
                <a class="media align-items-center text-white" href="#">
                  <div class="u-avatar mr-2">
                    <img class="img-fluid rounded-circle" src="${resourceImg}/room/img21.jpg" alt="Image Description">
                  </div>
                  <div class="media-body">
                    <span>Casy Williams</span>
                  </div>
                </a>
              </header>
              <div class="position-absolute right-0 bottom-0 left-0 p-5">
                <span class="h4 text-white">$750,000</span>
              </div>
            </div>

            <div class="card-body p-5">
              <h4 class="h6">
                <a href="#">Secluded Intown Treehouse</a>
              </h4>
              <span class="fas fa-map-marker-alt text-danger mr-2"></span>
              <a class="text-secondary" href="#">New York, US</a>
            </div>
            <!-- End House Items -->
          </div>

          <div class="js-slide card border-0 shadow-sm mb-3">
            <!-- House Items -->
            <div class="position-relative">
              <img class="card-img-top" src="${resourceImg}/room/img16.jpg" alt="Image Description">
              <header class="position-absolute top-0 right-0 left-0 p-5">
                <a class="media align-items-center text-white" href="#">
                  <div class="u-avatar mr-2">
                    <img class="img-fluid rounded-circle" src="${resourceImg}/room/img31.jpg" alt="Image Description">
                  </div>
                  <div class="media-body">
                    <span>Chris Johnson</span>
                  </div>
                </a>
              </header>
              <div class="position-absolute right-0 bottom-0 left-0 p-5">
                <span class="h4 text-white">$173,000</span>
              </div>
            </div>

            <div class="card-body p-5">
              <h4 class="h6">
                <a href="#">Malibu Dream Airstream</a>
              </h4>
              <span class="fas fa-map-marker-alt text-danger mr-2"></span>
              <a class="text-secondary" href="#">Manhattan, US</a>
            </div>
            <!-- End House Items -->
          </div>

          <div class="js-slide card border-0 shadow-sm mb-3">
            <!-- House Items -->
            <div class="position-relative">
              <img class="card-img-top" src="${resourceImg}/room/img17.jpg" alt="Image Description">
              <header class="position-absolute top-0 right-0 left-0 p-5">
                <a class="media align-items-center text-white" href="#">
                  <div class="u-avatar mr-2">
                    <img class="img-fluid rounded-circle" src="${resourceImg}/room/img41.jpg" alt="Image Description">
                  </div>
                  <div class="media-body">
                    <span>Elon Fisher</span>
                  </div>
                </a>
              </header>
              <div class="position-absolute right-0 bottom-0 left-0 p-5">
                <span class="h4 text-white">$199,000</span>
              </div>
            </div>

            <div class="card-body p-5">
              <h4 class="h6">
                <a href="#">Tintern Crescent</a>
              </h4>
              <span class="fas fa-map-marker-alt text-danger mr-2"></span>
              <a class="text-secondary" href="#">Toronto, Canada</a>
            </div>
            <!-- End House Items -->
          </div>

          <div class="js-slide card border-0 shadow-sm mb-3">
            <!-- House Items -->
            <div class="position-relative">
              <img class="card-img-top" src="${resourceImg}/room/img18.jpg" alt="Image Description">
              <header class="position-absolute top-0 right-0 left-0 p-5">
                <a class="media align-items-center text-white" href="#">
                  <div class="u-avatar mr-2">
                    <img class="img-fluid rounded-circle" src="${resourceImg}/room/img12.jpg" alt="Image Description">
                  </div>
                  <div class="media-body">
                    <span>Maria Muszynska</span>
                  </div>
                </a>
              </header>
              <div class="position-absolute right-0 bottom-0 left-0 p-5">
                <span class="h4 text-white">$376,000</span>
              </div>
            </div>

            <div class="card-body p-5">
              <h4 class="h6">
                <a href="#">Tiverton Avenue</a>
              </h4>
              <span class="fas fa-map-marker-alt text-danger mr-2"></span>
              <a class="text-secondary" href="#">Beijing, China</a>
            </div>
            <!-- End House Items -->
          </div>
        </div>
        <!-- End Slick Carousel -->
      </div> --%>
      <!-- End Similar Properties Section -->
    </div>
    <!-- End Property Description Section -->
  </main>
  <!-- ========== END MAIN CONTENT ========== -->
  	<!-- ========== END MAIN ========== -->
<%@ include file="../../common/footer_roomDetail.jsp" %>