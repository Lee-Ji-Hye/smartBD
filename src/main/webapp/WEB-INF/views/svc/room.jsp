<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../common/setting.jsp" %>
<%@ include file="../common/header.jsp"%>
    
<main id="content" role="main">
    <!-- Hero Section -->
    <div id="SVGwave1BottomSMShape" class="position-relative bg-light overflow-hidden" style="">
      <div class="container space-top-2 space-bottom-3 space-top-md-5 space-top-lg-4">
        <div class="w-md-80 w-lg-60 text-center mx-auto">
          <h1 class="display-4 font-size-md-down-5 text-primary">Portfolio <span class="font-weight-semi-bold">card</span></h1>
          <p class="lead">Your portfolio should tell your story.</p>
        </div>
      </div>

      <!-- SVG Background -->
      <figure class="position-absolute right-0 bottom-0 left-0">
        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" preserveAspectRatio="none" x="0px" y="0px" width="100%" height="140px" viewBox="0 0 300 100" style="margin-bottom: -8px; enable-background:new 0 0 300 100;" xml:space="preserve" class="injected-svg js-svg-injector" data-parent="#SVGwave1BottomSMShape">
<style type="text/css">
  .wave-bottom-1-sm-0{fill:#FFFFFF;}
</style>
<g>
  <defs>
    <rect id="waveBottom1SMID1" width="300" height="100"></rect>
  </defs>
  <clipPath id="waveBottom1SMID2">
    <use xlink:href="#waveBottom1SMID1" style="overflow:visible;"></use>
  </clipPath>
  <path class="wave-bottom-1-sm-0 fill-white" opacity=".4" clip-path="url(#waveBottom1SMID2)" d="M10.9,63.9c0,0,42.9-34.5,87.5-14.2c77.3,35.1,113.3-2,146.6-4.7C293.7,41,315,61.2,315,61.2v54.4H10.9V63.9z"></path>
  <path class="wave-bottom-1-sm-0 fill-white" opacity=".4" clip-path="url(#waveBottom1SMID2)" d="M-55.7,64.6c0,0,42.9-34.5,87.5-14.2c77.3,35.1,113.3-2,146.6-4.7c48.7-4.1,69.9,16.2,69.9,16.2v54.4H-55.7     V64.6z"></path>
  <path class="wave-bottom-1-sm-0 fill-white" opacity=".4" fill-opacity="0" clip-path="url(#waveBottom1SMID2)" d="M23.4,118.3c0,0,48.3-68.9,109.1-68.9c65.9,0,98,67.9,98,67.9v3.7H22.4L23.4,118.3z"></path>
  <path class="wave-bottom-1-sm-0 fill-white" clip-path="url(#waveBottom1SMID2)" d="M-54.7,83c0,0,56-45.7,120.3-27.8c81.8,22.7,111.4,6.2,146.6-4.7c53.1-16.4,104,36.9,104,36.9l1.3,36.7l-372-3     L-54.7,83z"></path>
</g>
</svg>
      </figure>
      <!-- End SVG Background Section -->
    </div>
    <!-- End Hero Section -->

    <!-- Categories Section -->
    <div class="container space-1">
      <h2 class="h6 mb-3">Layout modes</h2>
      <div class="row align-items-center">
        <div class="col-xl-6 mb-5 mb-xl-0">
          <!-- Categories Nav -->
          <ul class="nav nav-classic nav-rounded nav-shadow">
            <li class="nav-item">
              <a class="nav-link active" href="boxed-classic.html">Classic</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="boxed-grid.html">Grid</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="boxed-masonry.html">Masonry</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="boxed-modern.html">Modern</a>
            </li>
          </ul>
          <!-- End Categories Nav -->
        </div>

        <div class="col-xl-6 text-xl-right">
          <!-- Button Group -->
          <div class="btn-group btn-group-toggle">
            <a class="btn btn-outline-secondary btn-custom-toggle-primary btn-sm-wide active" href="boxed-classic.html">Boxed</a>
            <a class="btn btn-outline-secondary btn-custom-toggle-primary btn-sm-wide" href="fullwidth-classic.html">Fullwidth</a>
          </div>
          <!-- End Button Group -->
        </div>
      </div>
    </div>
    <!-- Categories Section -->

    <!-- Portfolio Section -->
    <div class="container space-2 space-bottom-md-3">
      <div class="u-cubeportfolio">
        <!-- Filter -->
        <ul id="filterControls" class="list-inline cbp-l-filters-alignRight text-center">
          <li class="list-inline-item cbp-filter-item u-cubeportfolio__item cbp-filter-item-active" data-filter="*">All</li>
          <li class="list-inline-item cbp-filter-item u-cubeportfolio__item" data-filter=".branding">Branding</li>
          <li class="list-inline-item cbp-filter-item u-cubeportfolio__item" data-filter=".abstract">Abstract</li>
          <li class="list-inline-item cbp-filter-item u-cubeportfolio__item" data-filter=".graphic">Graphic</li>
          <li class="list-inline-item cbp-filter-item u-cubeportfolio__item" data-filter=".illustration">Illustration</li>
        </ul>
        <!-- End Filter -->

        <!-- Content -->
        <div class="cbp cbp-caption-active cbp-caption-overlayBottomAlong cbp-ready" data-layout="grid" data-controls="#filterControls" data-animation="quicksand" data-x-gap="32" data-y-gap="32" data-media-queries="[
              {&quot;width&quot;: 1500, &quot;cols&quot;: 4},
              {&quot;width&quot;: 1100, &quot;cols&quot;: 4},
              {&quot;width&quot;: 800, &quot;cols&quot;: 3},
              {&quot;width&quot;: 480, &quot;cols&quot;: 2},
              {&quot;width&quot;: 300, &quot;cols&quot;: 1}
            ]" style="height: 100%;"><div class="cbp-wrapper-outer"><div class="cbp-wrapper">
          <!-- Item -->
          <div class="cbp-item graphic" style="width: 253px; left: 0px; top: 0px;"><div class="cbp-item-wrapper">
            <a class="cbp-caption" href="../portfolio/single-page-simple.html">
              <img class="rounded" src="https://htmlstream.com/preview/front-v2.9.0/assets/img/380x360/img1.jpg" alt="Image Description">
              <div class="py-3">
                <h4 class="h6 text-dark mb-0">Remind Me More</h4>
                <p class="small mb-0">
                  by Tiberiu Neamu
                </p>
              </div>
            </a>
          </div></div>
          <!-- End Item -->

          <!-- Item -->
          <div class="cbp-item branding" style="width: 253px; left: 285px; top: 0px;"><div class="cbp-item-wrapper">
            <a class="cbp-caption" href="../portfolio/single-page-simple.html">
              <img class="rounded" src="https://htmlstream.com/preview/front-v2.9.0/assets/img/380x360/img2.jpg" alt="Image Description">
              <div class="py-3">
                <h4 class="h6 text-dark mb-0">Workout Buddy</h4>
                <p class="small mb-0">
                  by Tiberiu Neamu
                </p>
              </div>
            </a>
          </div></div>
          <!-- End Item -->

          <!-- Item -->
          <div class="cbp-item abstract illustration" style="width: 253px; left: 570px; top: 0px;"><div class="cbp-item-wrapper">
            <a class="cbp-caption" href="../portfolio/single-page-simple.html">
              <img class="rounded" src="https://htmlstream.com/preview/front-v2.9.0/assets/img/380x360/img3.jpg" alt="Image Description">
              <div class="py-3">
                <h4 class="h6 text-dark mb-0">Tiger</h4>
                <p class="small mb-0">
                  by Cosmin Capitanu
                </p>
              </div>
            </a>
          </div></div>
          <!-- End Item -->

          <!-- Item -->
          <div class="cbp-item abstract illustration" style="width: 253px; left: 855px; top: 0px;"><div class="cbp-item-wrapper">
            <a class="cbp-caption" href="../portfolio/single-page-simple.html">
              <img class="rounded" src="https://htmlstream.com/preview/front-v2.9.0/assets/img/380x360/img5.jpg" alt="Image Description">
              <div class="py-3">
                <h4 class="h6 text-dark mb-0">Tiger</h4>
                <p class="small mb-0">
                  by Cosmin Capitanu
                </p>
              </div>
            </a>
          </div></div>
          <!-- End Item -->

          <!-- Item -->
          <div class="cbp-item graphic illustration" style="width: 253px; left: 0px; top: 349px;"><div class="cbp-item-wrapper">
            <a class="cbp-caption" href="../portfolio/single-page-simple.html">
              <img class="rounded" src="https://htmlstream.com/preview/front-v2.9.0/assets/img/380x360/img4.jpg" alt="Image Description">
              <div class="py-3">
                <h4 class="h6 text-dark mb-0">Tiger</h4>
                <p class="small mb-0">
                  by Cosmin Capitanu
                </p>
              </div>
            </a>
          </div></div>
          <!-- End Item -->

          <!-- Item -->
          <div class="cbp-item graphic illustration" style="width: 253px; left: 285px; top: 349px;"><div class="cbp-item-wrapper">
            <a class="cbp-caption" href="../portfolio/single-page-simple.html">
              <img class="rounded" src="https://htmlstream.com/preview/front-v2.9.0/assets/img/380x360/img6.jpg" alt="Image Description">
              <div class="py-3">
                <h4 class="h6 text-dark mb-0">Tiger</h4>
                <p class="small mb-0">
                  by Cosmin Capitanu
                </p>
              </div>
            </a>
          </div></div>
          <!-- End Item -->

          <!-- Item -->
          <div class="cbp-item branding" style="width: 253px; left: 570px; top: 349px;"><div class="cbp-item-wrapper">
            <a class="cbp-caption" href="../portfolio/single-page-simple.html">
              <img class="rounded" src="https://htmlstream.com/preview/front-v2.9.0/assets/img/380x360/img18.jpg" alt="Image Description">
              <div class="py-3">
                <h4 class="h6 text-dark mb-0">Workout Buddy</h4>
                <p class="small mb-0">
                  by Tiberiu Neamu
                </p>
              </div>
            </a>
          </div></div>
          <!-- End Item -->

          <!-- Item -->
          <div class="cbp-item abstract illustration" style="width: 253px; left: 855px; top: 349px;"><div class="cbp-item-wrapper">
            <a class="cbp-caption" href="../portfolio/single-page-simple.html">
              <img class="rounded" src="https://htmlstream.com/preview/front-v2.9.0/assets/img/380x360/img12.jpg" alt="Image Description">
              <div class="py-3">
                <h4 class="h6 text-dark mb-0">Tiger</h4>
                <p class="small mb-0">
                  by Cosmin Capitanu
                </p>
              </div>
            </a>
          </div></div>
          <!-- End Item -->

          <!-- Item -->
          <div class="cbp-item graphic" style="width: 253px; left: 0px; top: 698px;"><div class="cbp-item-wrapper">
            <a class="cbp-caption" href="../portfolio/single-page-simple.html">
              <img class="rounded" src="https://htmlstream.com/preview/front-v2.9.0/assets/img/380x360/img15.jpg" alt="Image Description">
              <div class="py-3">
                <h4 class="h6 text-dark mb-0">Remind Me More</h4>
                <p class="small mb-0">
                  by Tiberiu Neamu
                </p>
              </div>
            </a>
          </div></div>
          <!-- End Item -->

          <!-- Item -->
          <div class="cbp-item branding" style="width: 253px; left: 285px; top: 698px;"><div class="cbp-item-wrapper">
            <a class="cbp-caption" href="../portfolio/single-page-simple.html">
              <img class="rounded" src="https://htmlstream.com/preview/front-v2.9.0/assets/img/380x360/img17.jpg" alt="Image Description">
              <div class="py-3">
                <h4 class="h6 text-dark mb-0">Workout Buddy</h4>
                <p class="small mb-0">
                  by Tiberiu Neamu
                </p>
              </div>
            </a>
          </div></div>
          <!-- End Item -->

          <!-- Item -->
          <div class="cbp-item branding" style="width: 253px; left: 570px; top: 698px;"><div class="cbp-item-wrapper">
            <a class="cbp-caption" href="../portfolio/single-page-simple.html">
              <img class="rounded" src="https://htmlstream.com/preview/front-v2.9.0/assets/img/380x360/img16.jpg" alt="Image Description">
              <div class="py-3">
                <h4 class="h6 text-dark mb-0">Workout Buddy</h4>
                <p class="small mb-0">
                  by Tiberiu Neamu
                </p>
              </div>
            </a>
          </div></div>
          <!-- End Item -->

          <!-- Item -->
          <div class="cbp-item graphic" style="width: 253px; left: 855px; top: 698px;"><div class="cbp-item-wrapper">
            <a class="cbp-caption" href="../portfolio/single-page-simple.html">
              <img class="rounded" src="https://htmlstream.com/preview/front-v2.9.0/assets/img/380x360/img26.jpg" alt="Image Description">
              <div class="py-3">
                <h4 class="h6 text-dark mb-0">Remind Me More</h4>
                <p class="small mb-0">
                  by Tiberiu Neamu
                </p>
              </div>
            </a>
          </div></div>
          <!-- End Item -->

          <!-- Item -->
          <div class="cbp-item abstract" style="width: 253px; left: 0px; top: 1047px;"><div class="cbp-item-wrapper">
            <a class="cbp-caption" href="../portfolio/single-page-simple.html">
              <img class="rounded" src="https://htmlstream.com/preview/front-v2.9.0/assets/img/380x360/img28.jpg" alt="Image Description">
              <div class="py-3">
                <h4 class="h6 text-dark mb-0">Remind Me More</h4>
                <p class="small mb-0">
                  by Tiberiu Neamu
                </p>
              </div>
            </a>
          </div></div>
          <!-- End Item -->

          <!-- Item -->
          <div class="cbp-item branding" style="width: 253px; left: 285px; top: 1047px;"><div class="cbp-item-wrapper">
            <a class="cbp-caption" href="../portfolio/single-page-simple.html">
              <img class="rounded" src="https://htmlstream.com/preview/front-v2.9.0/assets/img/380x360/img27.jpg" alt="Image Description">
              <div class="py-3">
                <h4 class="h6 text-dark mb-0">Workout Buddy</h4>
                <p class="small mb-0">
                  by Tiberiu Neamu
                </p>
              </div>
            </a>
          </div></div>
          <!-- End Item -->

          <!-- Item -->
          <div class="cbp-item branding" style="width: 253px; left: 570px; top: 1047px;"><div class="cbp-item-wrapper">
            <a class="cbp-caption" href="../portfolio/single-page-simple.html">
              <img class="rounded" src="https://htmlstream.com/preview/front-v2.9.0/assets/img/380x360/img30.jpg" alt="Image Description">
              <div class="py-3">
                <h4 class="h6 text-dark mb-0">Workout Buddy</h4>
                <p class="small mb-0">
                  by Tiberiu Neamu
                </p>
              </div>
            </a>
          </div></div>
          <!-- End Item -->

          <!-- Item -->
          <div class="cbp-item graphic" style="width: 253px; left: 855px; top: 1047px;"><div class="cbp-item-wrapper">
            <a class="cbp-caption" href="../portfolio/single-page-simple.html">
              <img class="rounded" src="https://htmlstream.com/preview/front-v2.9.0/assets/img/380x360/img29.jpg" alt="Image Description">
              <div class="py-3">
                <h4 class="h6 text-dark mb-0">Remind Me More</h4>
                <p class="small mb-0">
                  by Tiberiu Neamu
                </p>
              </div>
            </a>
          </div></div>
          <!-- End Item -->
        </div></div></div>
        <!-- End Content -->
      </div>
    </div>
    <!-- End Portfolio Section -->

    <!-- Contact Us Section -->
    <div id="SVGwave1BottomSMShapeID2" class="" style="">
      <div class="gradient-half-primary-v1">
        <div class="container space-top-2 space-bottom-3 space-top-md-3 space-bottom-md-4">
          <div class="row justify-content-md-between align-items-md-start">
            <div class="col-md-6 mb-7 mb-md-0">
              <h2 class="text-white mb-5">You wish us<br>to talk about <span class="font-weight-semi-bold">your project</span>?</h2>
              <a class="h4 text-light" href="mailto:support@htmlstream.com">support@htmlstream.com</a>
            </div>

            <div class="col-md-6 mt-md-auto text-md-right">
              <!-- Social Networks -->
              <!-- End Social Networks -->
              <span class="h4 text-white-70">+1 (062) 109-9222</span>
            </div>
          </div>
        </div>
      </div>

      <!-- SVG Background -->
      <figure class="position-absolute right-0 bottom-0 left-0 z-index-2">
        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" preserveAspectRatio="none" x="0px" y="0px" width="100%" height="140px" viewBox="0 0 300 100" style="margin-bottom: -8px; enable-background:new 0 0 300 100;" xml:space="preserve" class="injected-svg js-svg-injector" data-parent="#SVGwave1BottomSMShapeID2">
<style type="text/css">
  .wave-bottom-1-sm-0{fill:#FFFFFF;}
</style>
<g>
  <defs>
    <rect id="waveBottom1SMID1" width="300" height="100"></rect>
  </defs>
  <clipPath id="waveBottom1SMID2">
    <use xlink:href="#waveBottom1SMID1" style="overflow:visible;"></use>
  </clipPath>
  <path class="wave-bottom-1-sm-0 fill-white" opacity=".4" clip-path="url(#waveBottom1SMID2)" d="M10.9,63.9c0,0,42.9-34.5,87.5-14.2c77.3,35.1,113.3-2,146.6-4.7C293.7,41,315,61.2,315,61.2v54.4H10.9V63.9z"></path>
  <path class="wave-bottom-1-sm-0 fill-white" opacity=".4" clip-path="url(#waveBottom1SMID2)" d="M-55.7,64.6c0,0,42.9-34.5,87.5-14.2c77.3,35.1,113.3-2,146.6-4.7c48.7-4.1,69.9,16.2,69.9,16.2v54.4H-55.7     V64.6z"></path>
  <path class="wave-bottom-1-sm-0 fill-white" opacity=".4" fill-opacity="0" clip-path="url(#waveBottom1SMID2)" d="M23.4,118.3c0,0,48.3-68.9,109.1-68.9c65.9,0,98,67.9,98,67.9v3.7H22.4L23.4,118.3z"></path>
  <path class="wave-bottom-1-sm-0 fill-white" clip-path="url(#waveBottom1SMID2)" d="M-54.7,83c0,0,56-45.7,120.3-27.8c81.8,22.7,111.4,6.2,146.6-4.7c53.1-16.4,104,36.9,104,36.9l1.3,36.7l-372-3     L-54.7,83z"></path>
</g>
</svg>
      </figure>
      <!-- End SVG Background -->
    </div>
    <!-- End Contact Us Section -->
  </main>

<%@ include file="../common/footer.jsp"%>