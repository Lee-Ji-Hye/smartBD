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
      <form class="js-validate w-lg-50 mx-auto" action="/smart/signUpPro" method="post" name="signUpForm">
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">                  
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            ID
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="userid" placeholder="minkyung" aria-label="minkyung" required
                 data-msg="Please enter your account ID."
                 data-error-class="u-has-error"
                 data-success-class="u-has-success">
        </div>
        <!-- End Input -->
      
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            password
            <span class="text-danger">*</span>
          </label>

          <input type="password" class="form-control" name="userpw" placeholder="Password" aria-label="Password" required
                 data-msg="Please enter your password."
                 data-error-class="u-has-error"
                 data-success-class="u-has-success">
        </div>
        <!-- End Input -->
      
      
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            password check
            <span class="text-danger">*</span>
          </label>

          <input type="password" class="form-control" name="reuserpw" placeholder="Password" aria-label="Password" required
                 data-msg="Please enter your password."
                 data-error-class="u-has-error"
                 data-success-class="u-has-success">
        </div>
        <!-- End Input -->
      
      <!-- 비밀번호 -->
      
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            Your name
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="name" placeholder="Kim MinKyung" aria-label="Kim MinKyung" required
                 data-msg="Please enter your name."
                 data-error-class="u-has-error"
                 data-success-class="u-has-success">
        </div>
        <!-- End Input -->

        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            Your email address
            <span class="text-danger">*</span>
          </label>

          <input type="email" class="form-control" name="email" placeholder="minkyung@gmail.com" aria-label="minkyung@gmail.com" required
                 data-msg="Please enter a valid email address."
                 data-error-class="u-has-error"
                 data-success-class="u-has-success">
        </div>
        <!-- End Input -->

        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            Your phone number
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="hp" placeholder="010-0000-0000" aria-label="010-0000-0000" required
                 data-msg="Please enter a your phone number."
                 data-error-class="u-has-error"
                 data-success-class="u-has-success">
        </div>
        <!-- End Input -->
        
        <div class="text-center">
        
        
        
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
document.signUpForm.btnSubmit.addEventListener("click", ()=>{
	var fom = document.signUpForm;
	if(fom.userpw.value === fom.reuserpw.value){
		fom.submit();
	}else{
		alert("비밀번호 확인이 글러먹었습니다.");
	}
});

/* 	console.dir(document.signUpForm);
	document.signUpForm.onsubmit = function(){
		return ()=>{
			
			console.log(document)
			return false;
		}
	}; */
</script>
</body>
</html>