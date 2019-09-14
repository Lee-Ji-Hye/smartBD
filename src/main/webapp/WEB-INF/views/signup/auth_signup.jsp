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
<body>
    
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
      <form class="js-validate w-lg-50 mx-md-auto" action="${path}/member/auth/putpro" method="post" name="signUpForm">
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
      	<div class="row js-form-message mb-6">
	        <!-- Input -->
	        <div class="js-form-message col">
		          <label class="form-label">
						요청 구분 선택
		            <span class="text-danger">*</span>
		          </label>
				
				<select  class="form-control custom-select" required
				         data-msg="Please select month."
				         data-error-class="u-has-error"
				         data-success-class="u-has-success"
				         name="category"
				         id="b_area1">
					<option value="">권한 선택</option>
					<option value="bd">빌딩</option>
					<option value="comp">식당</option>
				</select>
	        </div>
	        
	        <!-- Input -->
	        <div class="js-form-message col autocomplete">
	          <label class="form-label">
	            	법인명 (단체명, 상호명)
	            <span class="text-danger">*</span>
	          </label>
	    	  <!-- 아래의 input의 값을 받을 때, 자동완성 기능이 작동합니다. -->
	          <input type="text" id="autoInput" onkeyup="startSearch()" class="form-control" name="name" placeholder="법인명 (단체명, 상호명)" required>
	          <input type="hidden" id="code" name="code">
	        </div>
	        <!-- End Input -->
	        
			<div class="js-form-message col">
	          <label class="form-label">
					요청 권한 선택
	            <span class="text-danger">*</span>
	          </label>
			<select  class="form-control custom-select" required
			         data-msg="Please select month."
			         data-error-class="u-has-error"
			         data-success-class="u-has-success"
			         name="auth"
			         id="b_area2">
				<option value="">권한 선택</option>
			</select>
        </div>
        </div>
        <!-- 
			<option value="ROLE_BD_MANAGER">빌딩관리자</option>
			<option value="ROLE_BD_PARK">주차장 파트 관리자</option>
			<option value="ROLE_BD_OFFICE">임대 파트 관리자</option>
			<option value="ROLE_BD_FOOD">식당 파트 관리자</option>
			
			
			<option value="ROLE_CP_MANAGER">식당 매니저</option>
			<option value="ROLE_CP_EMPLOYEE">식당 직원</option>
         -->
        
        
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
		let category = document.getElementById("b_area1").value;
		if(checkFirst == true){//fist try
			loopSendKeyword = true; // 0.5sec loop
			setTimeout(function(){
				if(loopSendKeyword == false) return false;
				
				var keyword = document.getElementById("autoInput").value;

			    if (!keyword.replace(/^\s+|\s+$/g, '')) {
			        alert('키워드를 입력해주세요!');
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
	
	//---------------------------------------------------------------------------------------------
	
	//select box
	var bdData = [{"value":"ROLE_BD_MANAGER","text":"빌딩관리자"},
		  {"value":"ROLE_BD_PARK","text":"주차장 파트 관리자"},
		  {"value":"ROLE_BD_OFFICE","text":"임대 파트 관리자"},
		  {"value":"ROLE_BD_FOOD","text":"식당 파트 관리자"}];
	
	var compData = [{"value":"ROLE_CP_MANAGER","text":"식당 매니저"},
		  {"value":"ROLE_CP_EMPLOYEE","text":"식당 직원"}];

	document.getElementById('b_area1').addEventListener("change", function(){
		let cccc = document.getElementById('b_area2');
		let bbbb = document.getElementById('b_area1').value;
		cccc.innerHTML='<option value="">권한 선택</option>';
		let dddd;
		if(bbbb==='bd'){
			dddd=bdData;
		}else if(bbbb==='comp'){
			dddd=compData;
		}
		
		for(key in dddd){
			// create new option element
			var opt = document.createElement('option');

			// create text node to add to option element (opt)
			opt.appendChild(document.createTextNode(dddd[key].text));

			// set value property of opt
			opt.value = dddd[key].value; 

			// add opt to end of select box (sel)
			cccc.appendChild(opt);
		}
	});
	

	//submit event 처리
	document.signUpForm.btnSubmit.addEventListener("click", function() {
		var fom = document.signUpForm;
		fom.submit();
	});
</script>
</body>
</html>