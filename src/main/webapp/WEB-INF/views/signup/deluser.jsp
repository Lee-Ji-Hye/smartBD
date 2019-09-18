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
          <h1 class="text-primary"><span class="font-weight-semi-bold">정보 수정</span></h1>
          <p class="lead">등록된 이메일과 전화번호를 수정할 수 있습니다.</p>
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
      <form class="js-validate w-lg-50 mx-auto" action="/smart/member/member/delpro" method="post" name="signUpForm">
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">                  
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            ID
            <span class="text-danger">*</span>
          </label>
			<span class="form-control">${userVO.userid}</span>
        </div>
        <!-- End Input -->

        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            current password
            <span class="text-danger">*</span>
          </label>

          <input type="password" class="form-control" name="userpw" placeholder="Password" aria-label="Password" required
                 data-msg="Please enter your password."
                 data-error-class="u-has-error"
                 data-success-class="u-has-success">
        </div>
        <!-- End Input -->
        
        
          <div class="mb-2">
            <button type="button" name="btnSubmit" class="btn btn-primary transition-3d-hover">회원탈퇴</button>
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
document.signUpForm.btnSubmit.addEventListener("click", function(){
	var fom = document.signUpForm;
	fom.submit();
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