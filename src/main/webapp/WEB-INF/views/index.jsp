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
            <h1 class="display-4 font-size-md-down-5 mb-3">Introducing Front</h1>
            <p>
              Your company will look
              <span class="text-primary">
                <strong class="u-text-animation u-text-animation--typing">perfect in ever</strong><span class="typed-cursor">|</span>
              </span>
              <br>
              Attract more visitors, and win more business with Front template.
            </p>

            <div class="d-flex align-items-center flex-wrap" style="width:500px">
              <a class="btn btn-soft-primary btn-wide transition-3d-hover" href="javascript:void(0);">쓸거 있음 넣고 </a>
              <span style="margin-right:8px;"></span>
              <a class="btn btn-soft-primary btn-wide transition-3d-hover" href="javascript:void(0);">없으면</a>
			  <span style="margin-right:8px;"></span>
			  <a class="btn btn-soft-primary btn-wide transition-3d-hover" href="javascript:void(0);">삭제</a>
              <!-- Fancybox -->
              <!-- <a class="js-fancybox media align-items-center u-media-player min-width-21 ml-3" href="javascript:;" data-src="//vimeo.com/167434033" data-speed="700" data-animate-in="zoomIn" data-animate-out="zoomOut" data-caption="Front - Responsive Website Template">
                <span class="u-media-player__icon u-media-player__icon--success mr-3">
                  <span class="fas fa-play u-media-player__icon-inner"></span>
                </span>
                <span class="media-body">
                  Play video
                </span>
              </a> -->
              <!-- End Fancybox -->
            </div>
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
    <div class="container space-top-3 space-bottom-md-3 space-bottom-2">
      <!-- Title -->
      <div class="w-md-80 w-lg-50 text-center mx-md-auto mb-9">
        <span class="btn btn-xs btn-soft-success btn-pill mb-2">What we do?</span>
        <h2>Front makes designing easy and performance fast</h2>
      </div>
      <!-- End Title -->

      <div class="row">
        <div class="col-md-4 mb-7">
          <div class="text-center px-lg-3">
            <span class="btn btn-icon btn-lg btn-soft-danger rounded-circle mb-5">
              <span class="fab fa-yelp fa-2x btn-icon__inner btn-icon__inner-bottom-minus"></span>
            </span>
            <h3 class="h5">Professional Design</h3>
            <p class="mb-md-0">Achieve virtually any design and layout from within the one template.</p>
          </div>
        </div>

        <div class="col-md-4 mb-7">
          <div class="text-center px-lg-3">
            <span class="btn btn-icon btn-lg btn-soft-primary rounded-circle mb-5">
              <span class="fas fa-fire fa-2x btn-icon__inner btn-icon__inner-bottom-minus"></span>
            </span>
            <h3 class="h5">Front Strategy</h3>
            <p class="mb-md-0">We strive to figure out ways to help your business grow through all platforms.</p>
          </div>
        </div>

        <div class="col-md-4 mb-7">
          <div class="text-center px-lg-3">
            <span class="btn btn-icon btn-lg btn-soft-success rounded-circle mb-5">
              <span class="fab fa-whmcs fa-2x btn-icon__inner btn-icon__inner-bottom-minus"></span>
            </span>
            <h3 class="h5">Unlimited Power</h3>
            <p class="mb-md-0">Find what you need in one template and combine features at will.</p>
          </div>
        </div>
      </div>

      <!-- Title -->
      <div class="w-md-60 w-lg-50 text-center mx-auto mb-7">
        <h4 class="h5">
          It is fast and easy. <span class="font-weight-normal">Create your first and ongoing website with Front.</span>
        </h4>
      </div>
      <!-- End Title -->

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

    <!-- Pricing Section -->
    <div class="container">
      <div class="row">
        <div class="col-lg-5 mb-7 mb-lg-0">
          <!-- Title -->
          <div class="pr-lg-4 mb-7">
            <span class="btn btn-xs btn-soft-success btn-pill mb-2">Pricing plans</span>
            <h2>No additional costs.<br>Pay for what you use.</h2>
            <p>Choose the most suitable service for your needs with reasonable price.</p>
          </div>
          <!-- End Title -->

          <!-- Button Group -->
          <div class="btn-group btn-group-toggle">
            <a class="js-animation-link btn btn-outline-secondary btn-custom-toggle-primary btn-sm-wide active" href="javascript:;" data-target="#pricingMonthly" data-link-group="idPricing" data-animation-in="slideInUp">Monthly</a>
            <a class="js-animation-link btn btn-outline-secondary btn-custom-toggle-primary btn-sm-wide" href="javascript:;" data-target="#pricingYearly" data-link-group="idPricing" data-animation-in="slideInUp">
              Yearly
              <span class="badge badge-success badge-pill badge-bigger badge-pos">10% OFF</span>
            </a>
          </div>
          <!-- End Button Group -->
        </div>

        <div class="col-lg-7">
          <!-- Monthly Plans -->
          <div id="pricingMonthly" class="row align-items-center mb-3" data-target-group="idPricing">
            <div class="col-sm-6 mb-7 mb-sm-0">
              <!-- Pricing -->
              <div class="card border-0 shadow-sm">
                <header id="SVGwave1BottomShapeID1" class="card-header border-0 position-relative bg-primary text-white p-5 pb-11" style="">
                  <h3 class="h4 mb-1">Individual Plan</h3>
                  <span class="d-block">
                    <span class="align-top">$</span>
                    <span class="display-4 font-weight-semi-bold">22</span>
                    <span>/month</span>
                  </span>

                  <div class="position-absolute right-0 bottom-0 left-0">
                    
                  </div>
                </header>

                <!-- Content -->
                <div class="card-body pt-0 px-5 pb-5">
                  <ul class="list-group list-group-flush list-group-borderless mb-4">
                    <li class="list-group-item">
                      <div class="d-flex align-items-center">
                        <span class="btn btn-xs btn-icon btn-soft-primary rounded-circle mr-3">
                          <span class="fas fa-check btn-icon__inner"></span>
                        </span>
                        Community support
                      </div>
                    </li>
                    <li class="list-group-item">
                      <div class="d-flex align-items-center">
                        <span class="btn btn-xs btn-icon btn-soft-primary rounded-circle mr-3">
                          <span class="fas fa-check btn-icon__inner"></span>
                        </span>
                        400+ pages
                      </div>
                    </li>
                    <li class="list-group-item">
                      <div class="d-flex align-items-center">
                        <span class="btn btn-xs btn-icon btn-soft-primary rounded-circle mr-3">
                          <span class="fas fa-check btn-icon__inner"></span>
                        </span>
                        100+ header variations
                      </div>
                    </li>
                    <li class="list-group-item disabled py-2">
                      <div class="d-flex align-items-center">
                        <span class="btn btn-xs btn-icon btn-soft-primary rounded-circle mr-3">
                          <span class="fas fa-check btn-icon__inner"></span>
                        </span>
                        20+ home page options
                      </div>
                    </li>
                  </ul>

                  <button type="button" class="btn btn-sm btn-block btn-soft-primary transition-3d-hover">Get Started</button>
                </div>
                <!-- End Content -->
              </div>
              <!-- End Pricing -->
            </div>

            <div class="col-sm-6">
              <!-- Pricing -->
              <div class="card border-0 shadow-sm">
                <header id="SVGwave1BottomShapeID2" class="card-header border-0 position-relative bg-primary text-white p-5 pb-11" style="">
                  <h3 class="h4 mb-1">Enterprise Plan</h3>
                  <span class="d-block">
                    <span class="align-top">$</span>
                    <span class="display-4 font-weight-semi-bold">99</span>
                    <span>/month</span>
                  </span>

                  <div class="position-absolute right-0 bottom-0 left-0">
                    
                  </div>
                </header>

                <!-- Content -->
                <div class="card-body pt-0 px-5 pb-5">
                  <ul class="list-group list-group-flush list-group-borderless mb-4">
                    <li class="list-group-item">
                      <div class="d-flex align-items-center">
                        <span class="btn btn-xs btn-icon btn-soft-primary rounded-circle mr-3">
                          <span class="fas fa-check btn-icon__inner"></span>
                        </span>
                        24/7 support
                      </div>
                    </li>
                    <li class="list-group-item">
                      <div class="d-flex align-items-center">
                        <span class="btn btn-xs btn-icon btn-soft-primary rounded-circle mr-3">
                          <span class="fas fa-check btn-icon__inner"></span>
                        </span>
                        400+ pages
                      </div>
                    </li>
                    <li class="list-group-item">
                      <div class="d-flex align-items-center">
                        <span class="btn btn-xs btn-icon btn-soft-primary rounded-circle mr-3">
                          <span class="fas fa-check btn-icon__inner"></span>
                        </span>
                        200+ header variations
                      </div>
                    </li>
                    <li class="list-group-item">
                      <div class="d-flex align-items-center">
                        <span class="btn btn-xs btn-icon btn-soft-primary rounded-circle mr-3">
                          <span class="fas fa-check btn-icon__inner"></span>
                        </span>
                        40+ home page options
                      </div>
                    </li>
                    <li class="list-group-item">
                      <div class="d-flex align-items-center">
                        <span class="btn btn-xs btn-icon btn-soft-primary rounded-circle mr-3">
                          <span class="fas fa-check btn-icon__inner"></span>
                        </span>
                        E-commerce
                      </div>
                    </li>
                  </ul>

                  <button type="button" class="btn btn-sm btn-block btn-soft-primary transition-3d-hover">Get Started</button>
                </div>
                <!-- End Content -->
              </div>
              <!-- End Pricing -->
            </div>
          </div>
          <!-- End Monthly Plans -->

          <!-- Yearly Plans -->
          <div id="pricingYearly" class="row align-items-center mb-3" style="display: none; opacity: 0;" data-target-group="idPricing">
            <div class="col-sm-6 mb-7 mb-sm-0">
              <!-- Pricing -->
              <div class="card border-0 shadow-sm">
                <header id="SVGwave1BottomShapeID3" class="card-header border-0 position-relative bg-primary text-white p-5 pb-11" style="">
                  <h3 class="h4 mb-1">Individual Plan</h3>
                  <span class="d-block">
                    <span class="align-top">$</span>
                    <span class="display-4 font-weight-semi-bold">242</span>
                    <span>/year</span>
                  </span>

                  <div class="position-absolute right-0 bottom-0 left-0">
                    
                  </div>
                </header>

                <!-- Content -->
                <div class="card-body pt-0 px-5 pb-5">
                  <ul class="list-group list-group-flush list-group-borderless mb-4">
                    <li class="list-group-item">
                      <div class="d-flex align-items-center">
                        <span class="btn btn-xs btn-icon btn-soft-primary rounded-circle mr-3">
                          <span class="fas fa-check btn-icon__inner"></span>
                        </span>
                        24/7 support
                      </div>
                    </li>
                    <li class="list-group-item">
                      <div class="d-flex align-items-center">
                        <span class="btn btn-xs btn-icon btn-soft-primary rounded-circle mr-3">
                          <span class="fas fa-check btn-icon__inner"></span>
                        </span>
                        400+ pages
                      </div>
                    </li>
                    <li class="list-group-item">
                      <div class="d-flex align-items-center">
                        <span class="btn btn-xs btn-icon btn-soft-primary rounded-circle mr-3">
                          <span class="fas fa-check btn-icon__inner"></span>
                        </span>
                        100+ header variations
                      </div>
                    </li>
                    <li class="list-group-item disabled py-2">
                      <div class="d-flex align-items-center">
                        <span class="btn btn-xs btn-icon btn-soft-primary rounded-circle mr-3">
                          <span class="fas fa-check btn-icon__inner"></span>
                        </span>
                        20+ home page options
                      </div>
                    </li>
                  </ul>

                  <button type="button" class="btn btn-sm btn-block btn-soft-primary transition-3d-hover">Get Started</button>
                </div>
                <!-- End Content -->
              </div>
              <!-- End Pricing -->
            </div>

            <div class="col-sm-6">
              <!-- Pricing -->
              <div class="card border-0 shadow-sm">
                <header id="SVGwave1BottomShapeID4" class="card-header border-0 position-relative bg-primary text-white p-5 pb-11" style="">
                  <h3 class="h4 mb-1">Enterprise Plan</h3>
                  <span class="d-block">
                    <span class="align-top">$</span>
                    <span class="display-4 font-weight-semi-bold">1089</span>
                    <span>/year</span>
                  </span>

                  <div class="position-absolute right-0 bottom-0 left-0">
                    
                  </div>
                </header>

                <!-- Content -->
                <div class="card-body pt-0 px-5 pb-5">
                  <ul class="list-group list-group-flush list-group-borderless mb-4">
                    <li class="list-group-item">
                      <div class="d-flex align-items-center">
                        <span class="btn btn-xs btn-icon btn-soft-primary rounded-circle mr-3">
                          <span class="fas fa-check btn-icon__inner"></span>
                        </span>
                        24/7 support
                      </div>
                    </li>
                    <li class="list-group-item">
                      <div class="d-flex align-items-center">
                        <span class="btn btn-xs btn-icon btn-soft-primary rounded-circle mr-3">
                          <span class="fas fa-check btn-icon__inner"></span>
                        </span>
                        400+ pages
                      </div>
                    </li>
                    <li class="list-group-item">
                      <div class="d-flex align-items-center">
                        <span class="btn btn-xs btn-icon btn-soft-primary rounded-circle mr-3">
                          <span class="fas fa-check btn-icon__inner"></span>
                        </span>
                        200+ header variations
                      </div>
                    </li>
                    <li class="list-group-item">
                      <div class="d-flex align-items-center">
                        <span class="btn btn-xs btn-icon btn-soft-primary rounded-circle mr-3">
                          <span class="fas fa-check btn-icon__inner"></span>
                        </span>
                        40+ home page options
                      </div>
                    </li>
                    <li class="list-group-item">
                      <div class="d-flex align-items-center">
                        <span class="btn btn-xs btn-icon btn-soft-primary rounded-circle mr-3">
                          <span class="fas fa-check btn-icon__inner"></span>
                        </span>
                        E-commerce
                      </div>
                    </li>
                  </ul>

                  <button type="button" class="btn btn-sm btn-block btn-soft-primary transition-3d-hover">Get Started</button>
                </div>
                <!-- End Content -->
              </div>
              <!-- End Pricing -->
            </div>
          </div>
          <!-- End Yearly Plans -->

          <p class="small text-muted text-center">
            * <a class="link-muted" href="https://htmlstream.com/preview/front-v2.9.0/html/pages/terms.html">Terms</a> are subject to change.
          </p>
        </div>
      </div>
    </div>
    <!-- End Pricing Section -->

    
  </main>
  <!-- ========== END MAIN CONTENT ========== -->


<%@ include file="./common/footer.jsp"%>