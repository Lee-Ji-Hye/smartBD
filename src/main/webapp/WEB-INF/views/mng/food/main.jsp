<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp" %>
<%@ include file="../../common/header.jsp" %>
<%@ include file="../../common/foodMiddleHeaderManage.jsp" %>
<body>

<div class="overflow-hidden">
      <div class="container space-2 space-md-3">
        <div class="row justify-content-between align-items-center">
          <div class="col-lg-5 mb-7 mb-lg-0">
            <div class="pr-md-4">
              <!-- Title -->
              <div class="mb-7">
                <span class="btn btn-xs btn-soft-success btn-pill mb-2">About</span>
                <h2 class="text-primary">식당명
                	<span class="font-weight-semi-bold"></span></h2>
                <p>식당 휴무일</p>
                <p>식당 소개가 뜨는 곳</p>
              </div>
              <!-- End Title -->

              <a class="btn btn-sm btn-primary btn-wide transition-3d-hover" href="intorduction">소개 수정<span class="fas fa-angle-right ml-2"></span></a>
            </div>
          </div>

          <div class="col-lg-6 position-relative">
            <!-- Image Gallery -->
            <div class="row mx-gutters-2">
              <div class="col-5 align-self-end px-2 mb-3">
                <!-- Fancybox -->
                <a class="js-fancybox u-media-viewer" href="javascript:;" data-src="../../assets/img/1920x1080/img2.jpg" data-fancybox="lightbox-gallery-hidden" data-caption="Front in frames - image #01" data-speed="700">
                  <img class="img-fluid rounded" src="../../assets/img/320x320/img1.jpg" alt="Image Description">

                  <span class="u-media-viewer__container">
                    <span class="u-media-viewer__icon">
                      <span class="fas fa-plus u-media-viewer__icon-inner"></span>
                    </span>
                  </span>
                </a>
                <!-- End Fancybox -->
              </div>

              <div class="col-7 px-2 mb-3">
                <!-- Fancybox -->
                <a class="js-fancybox u-media-viewer" href="javascript:;" data-src="../../assets/img/1920x1080/img4.jpg" data-fancybox="lightbox-gallery-hidden" data-caption="Front in frames - image #02" data-speed="700">
                  <img class="img-fluid rounded" src="../../assets/img/450x450/img1.jpg" alt="Image Description">

                  <span class="u-media-viewer__container">
                    <span class="u-media-viewer__icon">
                      <span class="fas fa-plus u-media-viewer__icon-inner"></span>
                    </span>
                  </span>
                </a>
                <!-- End Fancybox -->
              </div>

              <div class="col-5 offset-1 px-2 mb-3">
                <!-- Fancybox -->
                <a class="js-fancybox u-media-viewer" href="javascript:;" data-src="../../assets/img/1920x1920/img1.jpg" data-fancybox="lightbox-gallery-hidden" data-caption="Front in frames - image #03" data-speed="700">
                  <img class="img-fluid rounded" src="../../assets/img/280x310/img1.jpg" alt="Image Description">

                  <span class="u-media-viewer__container">
                    <span class="u-media-viewer__icon">
                      <span class="fas fa-plus u-media-viewer__icon-inner"></span>
                    </span>
                  </span>
                </a>
                <!-- End Fancybox -->
              </div>

              <div class="col-5 px-2 mb-3">
                <!-- Fancybox -->
                <a class="js-fancybox u-media-viewer" href="javascript:;" data-src="../../assets/img/1920x1080/img3.jpg" data-fancybox="lightbox-gallery-hidden" data-caption="Front in frames - image #04" data-speed="700">
                  <img class="img-fluid rounded" src="../../assets/img/300x180/img1.jpg" alt="Image Description">

                  <span class="u-media-viewer__container">
                    <span class="u-media-viewer__icon">
                      <span class="fas fa-plus u-media-viewer__icon-inner"></span>
                    </span>
                  </span>
                </a>
                <!-- End Fancybox -->
              </div>
            </div>
            <!-- End Image Gallery -->

            <!-- SVG Background Shape -->
            <div id="SVGbgShapeID1" class="w-100 content-centered-y z-index-n1" style="">
              <figure class="ie-soft-triangle-shape">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 1109.8 797.1" style="enable-background:new 0 0 1109.8 797.1;" xml:space="preserve" class="injected-svg js-svg-injector" data-parent="#SVGbgShapeID1">
					<style type="text/css">
						.soft-triangle-shape-0{fill:#377DFF;}
					</style>
					<path class="soft-triangle-shape-0 fill-primary" opacity=".1" d="M105.1,267.1C35.5,331.5-3.5,423,0.3,517.7C6.1,663,111,831.9,588.3,790.8c753-64.7,481.3-358.3,440.4-398.3  c-4-3.9-7.9-7.9-11.7-12L761.9,104.8C639.4-27.6,432.5-35.6,299.9,87L105.1,267.1z"></path>
					</svg>
              </figure>
            </div>
            <!-- End SVG Background Shape -->
          </div>
        </div>
      </div>
    </div>
<!-- footer start -->
<%@ include file="../../common/footer.jsp" %>
<!-- footer end -->
</body>
</html>