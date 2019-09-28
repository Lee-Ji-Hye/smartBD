<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ include file="../common/setting.jsp"%>
<%@ include file="../common/header.jsp"%>

  <!-- ========== MAIN ========== -->
  <main id="content" role="main">
    <!-- Form -->
      <div class="container">
        <div class="row no-gutters">
          <div class="col-md-8 col-lg-7 col-xl-6 offset-md-2 offset-lg-2 offset-xl-3 space-3 space-lg-0">
            <!-- Form -->
            <form class="js-validate mt-5" name="login" action="/smart/loginpro" method="post">
            <input type="hidden" name="urlinfo" value="">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
            <input type="hidden" name="urlinfo" value="">
              <!-- Title -->
              <div class="mb-7">
                <h2 class="h3 text-primary font-weight-normal mb-0"> <span class="font-weight-semi-bold">Login</span></h2>
                <p>Login to manage your account.</p>
              </div>
              <!-- End Title -->

              <!-- Form Group -->
              <div class="js-form-message form-group">
                <label class="form-label" for="signinSrEmail">Email address</label>
                <input type="text" class="form-control" name="username" id="signinSrEmail" placeholder="Email address" aria-label="Email address" required
                       data-msg="Please enter a valid email address."
                       data-error-class="u-has-error"
                       data-success-class="u-has-success">
              </div>
              <!-- End Form Group -->

              <!-- Form Group -->
              <div class="js-form-message form-group">
              
                <label class="form-label" for="signinSrPassword">
                  <span class="d-flex justify-content-between align-items-center">
                    Password
                  </span><input type="password" class="form-control" name="password" id="signinSrPassword" placeholder="********" aria-label="********" required
                       data-msg="Your password is invalid. Please try again."
                       data-error-class="u-has-error"
                       data-success-class="u-has-success">
                    
                </label>
              </div>
              <!-- End Form Group -->

              <!-- Button -->
              <div class="row align-items-center mb-5">
                <div class="col-6">
                  <span class="small text-muted">Don't have an account?</span>
                  <a class="small" href="/smart/signUp">Signup</a>
                </div>

                <div class="col-6 text-right">
                  <button type="submit" class="btn btn-primary transition-3d-hover">Get Started</button>
                </div>
              </div>
              <!-- End Button -->
            </form>
            <!-- End Form -->
          </div>
        </div>
      </div>
    <!-- End Form -->
  </main>
  <!-- ========== END MAIN ========== -->

<c:if test="${loginErr!=null}">
<script type="text/javascript">
	alert('${loginErr}');
</script>
</c:if>
<script type="text/javascript">
(function urlinfo() {
	document.login.urlinfo.value = document.referrer;
})();

</script>
<%@ include file="../common/footer.jsp"%>
</body>
</html>