<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ include file="../common/setting.jsp"%>
<%@ include file="../common/header.jsp"%>

<!-- 검색어 자동완성 부분 추가 -->
<style>
.autocomplete {
    position: relative;
    display: inline-block;
}
 
.autocomplete-items {
    position: absolute;
    border: 1px solid #d4d4d4;
    border-bottom: none;
    border-top: none;
    z-index: 99;
     top: 100%;
    left: 0;
    right: 0;
}
 
.autocomplete-items div {
    padding: 10px;
    cursor: pointer;
    background-color: #fff;
    border-bottom: 1px solid #d4d4d4;
}
 
.autocomplete-items div:hover {
    background-color: #e9e9e9;
}
 
.autocomplete-active {
   background-color: DodgerBlue !important;
    color: #ffffff;
}
</style>

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
      <form class="js-validate w-lg-50 mx-auto" action="${path}/cp_tenant/comp/putpro" method="post" name="signUpForm">
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">  
      
      
        <!-- Input -->
        <div class="js-form-message mb-6 row">
        
	        <div class="js-form-message col autocomplete">
	        
	          <label class="form-label">
	            	소속 건물
	            <span class="text-danger">*</span>
	          </label>
	          <input type="text" id="autoInput" onkeyup="startSearch()" class="form-control" name="b_name" placeholder="소속된 건물" autocomplete="off" required>
	        </div>
	        
	        <div class="js-form-message col">
	        
	          <label class="form-label">
	            	값
	            <span class="text-danger">*</span>
	          </label>
	          <input type="text" id="code" name="b_code" readonly class="form-control">
	        </div>
	        
        </div>
        <!-- End Input -->

                        
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	사업자구분 (개인, 법인)
            <span class="text-danger">*</span>
          </label>

          <!-- <input type="text" class="form-control" name="comp_section" placeholder="사업자구분" required> -->
          
          <select class="form-control custom-select" required
                  data-msg="사업자 구분을 선택해주세요."
                  data-error-class="u-has-error"
                  data-success-class="u-has-success"
                  name="comp_section">
            <option value="" selected="selected">선택해주세요</option>
            <option value="0">개인사업자</option>
            <option value="1">법인</option>
          </select>
        </div>
        <!-- End Input -->
      
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
            	사업자 번호
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="comp_bn" placeholder="사업자번호" required>
        </div>
        <!-- End Input -->
        
      
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	대표자
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="comp_owner" placeholder="대표자" required>
        </div>
        <!-- End Input -->
      
      
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	사업장 소재지
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="comp_branch" placeholder="사업장 소재지" required>
        </div>
        <!-- End Input -->
      
      <!-- 비밀번호 -->
      
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	본점 소재지
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="comp_master" placeholder="본점 소재지" required>
        </div>
        <!-- End Input -->

        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	업태
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="comp_business" placeholder="업태" required>
        </div>
        <!-- End Input -->

        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	종목
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="comp_category" placeholder="종목" required>
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


<%@ include file="../common/footer.jsp"%>
<!-- 검색어 자동완성 부분 추가 -->
<script src="${resource}/js/autocomplet.js"></script>
<script>
	//var animal = ["베스킨라빈스","김치찌개","부대찌개","순두부찌개","된장찌개"];
	
	var checkFirst = true;
	var loopSendKeyword = false; //
	var lastKeyword = null;

	function compPro(keyword, category) {
		var request = new XMLHttpRequest();//지역변수 추천
		request.open("GET", "${path}/member/search/" + category + "/" + keyword, true);//요청보내는거
		request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		console.dir(request);
		request.onreadystatechange = function(){//콜백함수
			if (request.readyState == 4) {
				if(request.status == 200){
					//for문으로 돌린 table의 집합 (컨트롤하기위한 class)
					var tblclass = document.getElementsByClassName('form-original');
					//삽입할 부모 테이블
					var tbl = document.getElementsByTagName('table');
					//숨겨져 있는 값
					var details = document.getElementById('formDetail');
					//서버에서 받아온 데이터
					obj = JSON.parse(request.responseText);
					//콘솔에찍음
					console.log(obj);
					setTimeout(autocomplete.setAutocomplete(document.getElementById("autoInput"), obj), 1500);
				}else{
					//실패했을때 알럿
					alert("데이터 가져오기 실패");
				}
			}
		};
		request.send(null);
	};
	
	//검색 타이머
	function startSearch(){//onkeyup
		let category = 'bd'
		if(checkFirst == true){//fist try
			loopSendKeyword = true; // 0.5sec loop
			setTimeout(function(){
				if(loopSendKeyword == false) return false;
				
				var keyword = document.getElementById("autoInput").value;

			    if (!keyword.replace(/^\s+|\s+$/g, '')) {
			        return false;
			    }
			    
				if(keyword==null){
					lastKeyword = "";
				}else if(keyword != lastKeyword){
					lastKeyword = keyword;
					compPro(keyword, category);
				}
			}, 500);
		}
	}	

	//submit event 처리
	document.signUpForm.btnSubmit.addEventListener("click", function() {
		var fom = document.signUpForm;
		fom.submit();
	});
</script>
</body>
</html>