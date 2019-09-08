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
      <form class="js-validate w-lg-50 mx-auto">
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">                  
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            ID
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="userid" placeholder="Kim MinKyung" aria-label="Kim MinKyung" required
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

          <input type="text" class="form-control" name="username" placeholder="Jack Wayley" aria-label="Jack Wayley" required
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

          <input type="email" class="form-control" name="email" placeholder="jackwayley@gmail.com" aria-label="jackwayley@gmail.com" required
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

          <input type="text" class="form-control" name="hp" placeholder="010-0000-0000" aria-label="010-0000-0000"
                 data-msg="Please enter a your phone number."
                 data-error-class="u-has-error"
                 data-success-class="u-has-success">
        </div>
        <!-- End Input -->

        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            What is your timeline for this project?
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="timeline" placeholder="1 month" aria-label="1 month" required
                 data-msg="Please enter a valid date."
                 data-error-class="u-has-error"
                 data-success-class="u-has-success">
        </div>
        <!-- End Input -->

        <!-- Input -->
        <div class="js-focus-state mb-6">
          <label class="form-label">Your website URL</label>
          <input type="text" class="form-control" placeholder="https://www.jackwayley.com" aria-label="https://www.jackwayley.com">
        </div>
        <!-- End Input -->

        <!-- Input -->
        <div class="js-focus-state mb-6">
          <label class="form-label">Your company name</label>
          <input type="text" class="form-control" placeholder="JackWayley Inc." aria-label="JackWayley Inc.">
        </div>
        <!-- End Input -->

        <!-- Platform -->
        <div class="mb-6">
          <label class="form-label">
            Choose your platform
            <span class="text-danger">*</span>
          </label>

          <!-- Button Group -->
          <div class="btn-group btn-group-toggle d-flex" data-toggle="buttons">
            <label class="btn btn-outline-secondary btn-custom-toggle-primary flex-fill">
              <input type="checkbox" name="options" id="option1">
              Shopify
            </label>
            <label class="btn btn-outline-secondary btn-custom-toggle-primary flex-fill">
              <input type="checkbox" name="options" id="option2">
              Web
            </label>
            <label class="btn btn-outline-secondary btn-custom-toggle-primary flex-fill">
              <input type="checkbox" name="options" id="option3">
              Other
            </label>
          </div>
          <!-- End Button Group -->
        </div>
        <!-- End Platform -->

        <!-- Budget Custom Select -->
        <div class="mb-6">
          <label class="form-label">
            Tell us about your budget
            <span class="text-danger">*</span>
          </label>

          <div class="js-focus-state">
            <select class="form-control custom-select" required
                    data-msg="Please select your budget."
                    data-error-class="u-has-error"
                    data-success-class="u-has-success">
              <option value="" selected>$20,000 to $50,000</option>
              <option value="budget1">$20,000 to $50,000</option>
              <option value="budget2">$100,000 to $200,000</option>
              <option value="budget3">$200,000+</option>
            </select>
          </div>
        </div>
        <!-- End Budget Custom Select -->

        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            Tell us about your project
            <span class="text-danger">*</span>
          </label>

          <textarea class="form-control" rows="4" name="answer" placeholder="Hi there, I would like to ..." aria-label="Hi there, I would like to ..." required
                    data-msg="Please enter a reason."
                    data-error-class="u-has-error"
                    data-success-class="u-has-success"></textarea>
        </div>
        <!-- End Input -->

        <div class="text-center">
          <div class="mb-2">
            <button type="submit" class="btn btn-primary transition-3d-hover">Let's Start Working Together</button>
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
</body>
</html>