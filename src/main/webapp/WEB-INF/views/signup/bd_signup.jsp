<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ include file="../common/setting.jsp"%>
<%@ include file="../common/header.jsp"%>

  <!-- ========== MAIN ========== -->
  <main id="content" role="main">
    <!-- Hire Us Title Section -->
    <!-- 위에영역먹고있던페이지 -->
      <div class="container space-top-2 space-bottom-3 space-top-md-5 space-lg-4">
        <div class="w-md-80 w-lg-50 text-center mx-md-auto">
          <h1 class="text-primary">Got a <span class="font-weight-semi-bold">project</span> for us?</h1>
          <p class="lead">We help brands and platforms turn big ideas into beautiful digital products and experiences.</p>
        </div>
      </div>

      <!-- SVG Bottom Shape -->
      <!-- <figure class="position-absolute right-0 bottom-0 left-0">
        <img class="js-svg-injector" src="../../assets/svg/components/wave-4-bottom.svg" alt="Image Description"
             data-parent="#SVGheroBgElements">
      </figure> -->
      <!-- End SVG Bottom Shape -->                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
    <!-- End Hire Us Title Section -->

    <!-- Hire Us Form Section -->
    <div class="container space-bottom-2">
      <!-- Hire Us Form -->
      <form class="js-validate w-lg-50 mx-auto" action="${path}/member/bdmn/instpro" method="post" name="signUpForm">
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">                  

        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	건물명
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="b_name" placeholder="건물명" required>
        </div>
        <!-- End Input -->
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	건물고유번호
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="b_unique" placeholder="건물고유번호" required>
        </div>
        <!-- End Input -->
        
      
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	소유자(명칭)
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="b_owner" placeholder="소유자(명칭)" required>
        </div>
        <!-- End Input -->
        
      
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	소유자고유번호(등록번호)
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="b_regnum" placeholder="소유자고유번호(등록번호)" required>
        </div>
        <!-- End Input -->
        
      
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	대지면적
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="b_landarea" placeholder="대지면적" required>
        </div>
        <!-- End Input -->
        
      
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	건축면적
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="b_buildarea" placeholder="건축면적" required>
        </div>
        <!-- End Input -->
        
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	건축규모
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="b_buildscale" placeholder="건축규모" required>
        </div>
        <!-- End Input -->
        
      
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	건물 층수
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="b_floor" placeholder="건물층수" required>
        </div>
        <!-- End Input -->
        
      
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	준공년도
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="b_year" placeholder="준공년도" required>
        </div>
        <!-- End Input -->
      
      
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	주차장 유무
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="b_park" placeholder="주차장 유무" required>
        </div>
        <!-- End Input -->
      
      <!-- 비밀번호 -->
      
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	승강기 유무
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="b_elev" placeholder="승강기 유무" required>
        </div>
        <!-- End Input -->

        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	난방종류
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="b_heat" placeholder="난방종류" required>
        </div>
        <!-- End Input -->

        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	교통편
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="b_traffic" placeholder="교통편" required>
        </div>
        
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
				광역 시 도
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="b_area1" placeholder="광역 시 도" required>
        </div>
        
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	구, 동
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="b_area2" placeholder="구, 동" required>
        </div>
        
        <!-- End Input -->
        
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	주소
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="b_address" placeholder="주소" required>
        </div>
        
        <!-- End Input -->


        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	위도
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="b_lat" placeholder="위도" required>
        </div>
        
        <!-- End Input -->

        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	경도
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="b_lon" placeholder="경도" required>
        </div>
        <!-- End Input -->



        <!--autoload=false 파라미터를 이용하여 자동으로 로딩되는 것을 막습니다.-->
 		<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js?autoload=false"></script>
		<script>
		    //load함수를 이용하여 core스크립트의 로딩이 완료된 후, 우편번호 서비스를 실행합니다.
		    daum.postcode.load(function(){
		        new daum.Postcode({
		            oncomplete: function(data) {
		            	console.dir(data);
		            }
		        }).open();
		    });
		</script>
        
          <div class="mb-2">
            <button type="button" name="btnSubmit" class="btn btn-primary transition-3d-hover">Let's Start Working Together</button>
          </div>
          <p class="small">We'll get back to you in 1-2 business days.</p>
        </div>
      </form>
      <!-- End Hire Us Form -->
    </div>
    <!-- End Hire Us Form Section -->
  </main>
  <!-- ========== END MAIN ========== -->


<%@ include file="../common/footer.jsp"%>

<script type="text/javascript">
//submit event 처리
document.signUpForm.btnSubmit.addEventListener("click", function() {
	var fom = document.signUpForm;
	fom.submit();
});
</script>
</body>
</html>