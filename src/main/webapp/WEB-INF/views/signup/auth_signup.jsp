<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ include file="../common/setting.jsp"%>
<%@ include file="../common/header.jsp"%>
<!-- 자동완성 부분 추가 -->
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.3/themes/hot-sneaks/jquery-ui.css" />
	<script src="http://code.jquery.com/jquery-2.1.3.js"></script>
	<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
       <script>
        $(document).ready(function() {
         var cCities = ["Chicago", "California", "Chennai", "Cambridge", "Colombo", "Cairo"];
          
            $('#autoSuggest').autocomplete({
                source: cCities,
                focus: showLabel,
                select: showLabel,
                change: showLabel
            })
            
            function showLabel(event, ui) {
                console.log(ui.item.label);
            }


        });
    </script>
<!-- 자동완성 부분 추가 종료 -->
   
</head> 

  <form>     
        <div class="ui-widget">
            <label for="autoSuggest">City Name beginning with C: </label><input id="autoSuggest"/><br>
            Label of City : <strong id="cityLabel"></strong>            
        </div>
    </form>
    
    <!-- Hire Us Title Section -->
    <!-- 위에영역먹고있던페이지 -->
      <div class="container space-top-2 space-bottom-3 space-top-md-5 space-lg-4">
        <div class="w-md-80 w-lg-50 text-center mx-md-auto">
          <h1 class="text-primary">Got a <span class="font-weight-semi-bold">project</span> for us?</h1>
          <p class="lead">We help brands and platforms turn big ideas into beautiful digital products and experiences.</p>
        </div>
      </div>

    <!-- Hire Us Form Section -->
    <div class="container space-bottom-2">
      <!-- Hire Us Form -->
      <form class="js-validate w-lg-50 mx-auto" action="${path}/member/comp/putpro" method="post" name="signUpForm">
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
      
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	법인명 (단체명, 상호명)
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="comp_org" placeholder="법인명 (단체명, 상호명)" required>
        </div>
        <!-- End Input -->
        
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	법인명 (단체명, 상호명)
            <span class="text-danger">*</span>
          </label>

	       <div class="ui-widget js-form-message mb-6">
	           <label for="autoSuggest" class="form-label">City Name beginning with C: </label><input class="form-control"  id="autoSuggest"/>
	           Label of City : <strong id="cityLabel"></strong>            
	       </div>
        </div>
        <!-- End Input -->
        
      
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	사업자 번호
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="comp_bn" placeholder="사업자번호" required>
        </div>
        <!-- End Input -->
        
      
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	대표전화번호
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="comp_hp" placeholder="대표전화번호" required>
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
    
</body>
</html>