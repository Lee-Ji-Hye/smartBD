<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp" %>
<%@ include file="../../common/header.jsp" %>
<%@ include file="../../common/foodMiddleHeaderManage.jsp" %>
 
<!-- ========== MAIN ========== -->
<%-- <form method="post" name="orderList" action="${path}/cp_manager/odmn/list?${_csrf.parameterName}=${_csrf.token}"> --%>
<main id="content" role="main">
  <div class="bg-light">
    <div class="container space-2">
      <div class="card">
        <div class="card-header py-4 px-0 mx-4">
          <!-- Activity Menu -->
          <div class="row justify-content-sm-between align-items-sm-center">
            <div class="col-md-5 col-lg-4 mb-2 mb-md-0">
           
              <!-- End Datepicker -->
            </div>
           <div class="col-md-6">
              <div class="d-flex">
                <!-- <div class="mr-2">
                  Select
                  <select id="datatableEntries" class="js-select selectpicker dropdown-select" data-width="fit" data-style="btn-soft-primary btn-sm">
                    <option value="6">6 entries</option>
                    <option value="12" selected>12 entries</option>
                    <option value="18">18 entries</option>
                    <option value="24">24 entries</option>
                  </select>
                  End Select
                </div> -->
              
                <div class="js-focus-state input-group input-group-sm">
                  <div class="input-group-prepend">
                    
                  </div>
                  <form method="get" id="form" name="form" >
 				<input class="form-control" id="myInput" name ="sertext"  type="text" placeholder="Search.." value="${sertext}" style="position:relative;right:500px;top:10px; ">                </div>
             	<input type="button" id="serBtn" value="검색"  class="btn btn-sm btn-soft-secondary transition-3d-hover" style="position: relative;right:700px; height:50px;top:10px;" >
              </div>
            </div>
          </div>
          <!-- End Activity Menu -->
        </div>
        <div class="card-body p-4">
          <!-- Activity Table -->
          <div class="table-responsive-md u-datatable">
            <table class="js-datatable table table-borderless u-datatable__striped u-datatable__content u-datatable__trigger mb-5"
                   data-dt-info="#datatableInfo"
                   data-dt-search="#datatableSearch"
                   data-dt-entries="#datatableEntries"
                   data-dt-page-length="12"
                   data-dt-is-responsive="false"
                   data-dt-is-show-paging="true"
                   data-dt-details-invoker=".js-datatabale-details"
                   data-dt-select-all-control="#invoiceToggleAllCheckbox"
                   data-dt-pagination="datatablePagination"
                   data-dt-pagination-classes="pagination mb-0"
                   data-dt-pagination-items-classes="page-item"
                   data-dt-pagination-links-classes="page-link"
                   data-dt-pagination-next-classes="page-item"
                   data-dt-pagination-next-link-classes="page-link"
                   data-dt-pagination-next-link-markup='<span aria-hidden="true">&raquo;</span>'
                   data-dt-pagination-prev-classes="page-item"
                   data-dt-pagination-prev-link-classes="page-link"
                   data-dt-pagination-prev-link-markup='<span aria-hidden="true">&laquo;</span>'>
              <thead>
                <tr class="text-uppercase font-size-1">
                   <th scope="col">
                    <!-- <div class="custom-control custom-checkbox d-flex align-items-center">
                      <input type="checkbox" class="custom-control-input" id="invoiceToggleAllCheckbox">
                      <label class="custom-control-label" for="invoiceToggleAllCheckbox">
                        <span class="text-hide">Checkbox</span>
                      </label>
                    </div> -->
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	<strong>주문번호</strong>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	<strong>아이디</strong>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center" onclick="window.location='orderList'">
                      	<strong>주문자명</strong>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	<strong>가격</strong>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	<strong>주문시간</strong>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	<strong>상태</strong>
                    </div>
                  </th>
                </tr>
              </thead>
              <tbody class="font-size-1">
              <c:set var="order" value="${0}"/>
              	<c:forEach var="ovo" items="${detailO}">
              		<tr class="text-uppercase font-size-1  form-original">
	                  <th scope="col">
	                  </th>
	                   <td class="align-middle" id="detail_odrerCode" onclick="orderDetailCode('${ovo.f_ocode}',${order})">${ovo.f_ocode}</td>
	                  <td class="align-middle text-secondary font-weight-normal">
	                  	<c:if test="${ovo.userid == null}">
	                  		Guest
	                  	</c:if>
	                  	<c:if test="${ovo.userid != null}">
	                  		${ovo.userid}
	                  	</c:if>
	                  </td>
	                  <td class="align-middle">${ovo.f_name}</td>
	                  <td class="align-middle text-primary"><fmt:formatNumber value="${ovo.f_pay_price}" pattern="#,###" />원</td>
	                  <td class="align-middle">${ovo.f_regidate}</td>
	                  <td class="align-middle" id="foodOrderApp">
	                  	<!-- <div class="media align-items-center" > -->
	                  		<%-- <c:if test="${ovo.f_status == '0'}">주문대기..</c:if>
	                  		<c:if test="${ovo.f_status == '1'}">주문완료..</c:if>
	                  		<c:if test="${ovo.f_status == '2'}">주문거절..</c:if> --%>
	                  	<!-- </div> -->
	                  	<c:if test="${ovo.f_status}=='주문취소'">
	                  	</c:if>
	                  	<c:if test="${ovo.f_status}=='주문접수'">
	                  	<font color="green">${ovo.f_status}</font>
	                  	</c:if>
	                  	<c:if test="${ovo.f_status}=='주문접수'">
	                  	<font color="green">${ovo.f_status}</font>
	                  	</c:if>
	                  	<c:if test="${ovo.f_status}=='주문완료'">
	                  	<font color="green">${ovo.f_status}</font>
	                  	</c:if>
	                  	<c:if test="${ovo.f_status}=='주문대기'">
	                  	<font color="green">${ovo.f_status}</font>
	                  	</c:if>
	                  	
	                  	<c:choose>
					       <c:when test="${ovo.f_status == '주문취소'}">
	                  			<font color="red">${ovo.f_status}</font>
					       </c:when>
					       <c:when test="${ovo.f_status == '주문접수'}">
	                  			<font color="green">${ovo.f_status}</font>
					       </c:when>
					       <c:otherwise>
					           ${ovo.f_status}
					       </c:otherwise>
					   </c:choose>

	                  </td>
	                </tr>
                	<c:set var="order" value="${order+1}"/>
              	</c:forEach>
              	
              	<tr class="text-uppercase font-size-1 collapse out" id='formDetail' style="display: none;">
                	<td scope="row" colspan="7">
                	<div class="border rounded p-5">
                		<!-- Bill To -->
				          <div class="row justify-content-md-between mb-7">
				            <div class="col-md-5 col-lg-4">
				              <h3 class="h5">주문 내역</h3>
				              <span class="d-block">주문자 </span>
				              <address class="text-secondary mb-0" id="detail_orderID">
				               		${ovo.f_name}
				              </address>
				            </div>
				            
				            <div class="col-md-5 col-lg-4 mt-6">
				              <dl class="row mb-0">
				                <dt class="col-5 col-md-6 font-weight-normal text-secondary">테이크아웃</dt>
				                <dd class="col-7 col-md-6 font-weight-medium" id="detail_orderTakeOut">${ovo.f_takeout}</dd>
				              </dl>
				              <dl class="row mb-0">
				                <dt class="col-5 col-md-6 font-weight-normal text-secondary">픽업시간</dt>
				                <dd class="col-7 col-md-6 font-weight-medium" id="detail_pickUp">${ovo.f_receive_time}</dd>
				              </dl>
				              <dl class="row mb-0">
				                <dt class="col-5 col-md-6 font-weight-normal text-secondary">승인상태</dt>
				                <dd class="col-7 col-md-6 font-weight-medium" id="foodOrderApp2">${ovo.f_status}</dd>
				              </dl>
				            </div>
				          </div>
				          <!-- End Bill To -->
				
				          <!-- Table -->
				          <table class="table table-heighlighted font-size-1 mb-9">
				            <thead>
				              <tr class="text-uppercase text-secondary">
				                <th scope="col" class="font-weight-medium">메뉴명 <span id="detail_f_ocode" style="display:none;"></span></th>
				                <th scope="col" class="font-weight-medium">수량</th>
				                <th scope="col" class="font-weight-medium">가격</th>
				                <th scope="col" class="font-weight-medium text-right">요청사항</th>
				              </tr>
				            </thead>
				            <c:forEach var="dvo" items="detail" varStatus="status">
				            <tbody id="menuAdd">
				             <%--  <tr>
				                <th scope="row" class="font-weight-normal" id="detail_menuName">${ovo.f_name}</th>
				                <td scope="row" class="font-weight-normal" id="detail_menuCount">${ovo.f_cnt}</td>
				                <td scope="row" class="font-weight-normal" id="detail_menuPrice"><fmt:formatNumber value="${ovo.f_price}" pattern="#,###" />원</td>
				                <td class="text-right" id="detail_menuMessage">${ovo.f_message}</td>
				              </tr> --%>
				            </tbody>
                        		<hr class="my-4">
				              <tr class="h6">
				                <td scope="row">합계</td>
				                 <td colspan="3" class="text-right" id="detail_menu_amount">${ovo.f_amount}</td>
				              </tr>
				              <tr class="h6">
				                <td scope="row">할인</td>
				                 <td colspan="3" class="text-right" id="detail_menu_sale">${ovo.f_sale_price}</td>
				              </tr>
				              <tr class="h6">
				                <td scope="row">Total</td>
				                <td colspan="3" class="text-right" id="detail_menuTotal"><fmt:formatNumber value="${ovo.f_pay_price}" pattern="#,###" />원</td>
				              </tr>
				              <!-- <tr class="h6" style="float:right">
				                <td scope="row" >승인상태:</td>
				                <td colspan="3" class="text-right" id="foodOrderApp2"></td>
				                <td></td>
				              </tr> -->
				            </c:forEach>
				            
				          </table>
				          <!-- End Table -->
				
				          <!-- Contacts -->
				          <div class="row justify-content-lg-between">
				            <div class="col-md-8 col-lg-4 order-md-2 mb-5 mb-md-0">
				              <h4 class="h6">Thank you!</h4>
				              <p class="font-size-1">시스템을 이용해주셔서 감사합니다!!</p>
				              <span class="d-block">
				                <small class="font-weight-medium">email:</small>
				                <small class="text-muted">smartBD@kosomo.com</small>
				              </span>
				              <small class="font-weight-medium">telephone:</small>
				              <small class="text-muted">+1 (062) 109-9222</small>
				            </div>
				
				            <div class="col-md-4 col-lg-3 order-md-1 align-self-end">
				              <p class="small text-muted mb-0">© 2019 Smart.</p>
				            </div>
				          </div>
				          <!-- End Contacts -->
				
				      <div class="text-right mt-5">
				        <button type="button" class="btn btn-sm btn-primary transition-3d-hover" id="amdOk" onclick="orderPro(event,'amdOk')"><!-- btn btn-primary -->
				          <span class="fas fa-print mr-1"></span>
				          	주문승인
				        </button>
				        <button type="button" class="btn btn-sm btn-secondary  transition-3d-hover" id="amdNg" onclick="orderPro2(event,'amdNg')">
				          <span class="fas fa-print mr-1"></span>
				        	주문거절
				        </button>
				      </div>
				      </div>
                	</td>
                </tr>
              </tbody>
              </form>
            </table>
          </div>
          <!-- End Activity Table -->
          <!-- Pagination -->
          ${paging.html_mk_page()}
          <!-- End Pagination -->
        </div>
      </div>
      
    </div>
  </div>
  <!-- End Content Section -->
</main>
<!-- </form> -->
<script type="text/javascript">
// 주문 목록 전체 체크
function goodsChkAll() {
	
	var allChoice = document.goods.f_codeOne;
	var choice = document.goods.f_code;

	console.dir(allChoice);
	console.log(choice);
	
	if(allChoice.checked === true){
		for(var i = 0; i<choice.length; i++) {
			choice[i].checked = true;
		}
	} else {
		for(var i = 0; i<choice.length; i++) {
			choice[i].checked = false;
		}
	}
}

// orderDetail함수를 부르기 위한 함수
function orderDetailCode(f_ocode, tbl_order) {
	//상세보기창이 display:none이면 false 출력
	if($('#formDetail').is(':visible')){
		// display:table-row일때
		//숨겨야됨
		$("#formDetail").hide();	// 승인버튼 숨기기 
		$($('.form-original')[tbl_order]).css("color", "black");
	}else{
		// display:none일때
		//펼쳐야됨
		orderDetail(f_ocode, tbl_order)
	}
	
}

// AJAX 주문코드 클릭시 상세 주문 보기 띄우기
function orderDetail(f_ocode, tbl_order){
	var request = new XMLHttpRequest(); // 지역변수 추천
	request.open("GET", "${path}/cp_employee/odmn/amd/" + f_ocode, true); // 요청보내는거
	request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	console.dir(request);
	request.onreadystatechange = function(){ // 콜백함수
		if (request.readyState == 4) {
			if(request.status == 200){
				// for문으로 돌린 table의 집합 (컨트롤하기위한 class)
				var tblclass = document.getElementsByClassName('form-original');
				// 삽입할 부모 테이블
				var tbl = document.getElementsByTagName('table');
				// 숨겨져 있는 값
				var details = document.getElementById('formDetail');
				// 서버에서 받아온 데이터
				obj = JSON.parse(request.responseText);
				// 콘솔에찍음
				
				var orderInfo = obj.orderInfo; // 주문자의 정보를 담은 변수
				var orderMenu = obj.orderMenu; // 메뉴 상세 정보를 담는 변수
				
				console.log(orderInfo);
				console.log(orderMenu);
 				console.log(orderInfo.f_status);
				
				if(orderInfo.f_status == '주문대기') { // '주문대기' 상태 
					$("#amdNg").show(); // 거절버튼 보이기
					$("#amdOk").hide();	// 승인버튼 숨기기 
				} else if(orderInfo.f_status == '주문접수') { // '주문접수' 상태
					$("#amdNg").show(); // 거절버튼 보이기
					$("#amdOk").show(); // 승인버튼 보이기
				} else { // 그 외 버튼 다 숨기기
					$("#amdNg").hide(); 
					$("#amdOk").hide();
				}
				
				var f_message = (orderInfo.f_message == null)? "" : orderInfo.f_message;
				
				console.log(f_message);
				
				document.getElementById('foodOrderApp').innerText = orderInfo.f_status; // 주문상태코드
				document.getElementById('foodOrderApp2').innerText = orderInfo.f_status; // 주문상태코드
				document.getElementById('detail_f_ocode').innerText = orderInfo.f_ocode; // 주문코드
				document.getElementById('detail_orderID').innerText = orderInfo.f_name; // 주문자 아이디
				document.getElementById('detail_orderTakeOut').innerText = orderInfo.f_takeout; // 테이크아웃여부
				document.getElementById('detail_pickUp').innerText = orderInfo.f_receive_time; // 할인
				
				// 변수명.toLocaleString();  ==> 숫자에 , 찍어주는 함수
				document.getElementById('detail_menu_amount').innerText = orderInfo.f_amount.toLocaleString(); // 제품 총 가격
				// orderInfo.f_sale_price(할인쿠폰 적용가격)이 0보다 클 때 , 를 찍어주고
				if(orderInfo.f_sale_price > 0){
					document.getElementById('detail_menu_sale').innerText = orderInfo.f_sale_price.toLocaleString(); // 할인쿠폰 가격
				} else { // 0보다 작다면 0을 출력
					document.getElementById('detail_menu_sale').innerText = 0; // 할인쿠폰 가격
				}
				//document.getElementById('detail_menuMessage').innerText = f_message; // 주문 메세지 
				document.getElementById('detail_menuTotal').innerText = orderInfo.f_pay_price.toLocaleString(); // 총 결제 금액

			/* 	document.getElementById('detail_menuName').innerText = orderMenu.f_name; // 제품명
				document.getElementById('detail_menuCount').innerText = orderMenu.f_cnt; // 제품 갯수
				document.getElementById('detail_menuPrice').innerText = orderMenu.f_price; // 제품 한 건당 가격  */
				
				/* $('#menuAdd').remove(); */
				
				var html="";
				$.each(orderMenu,function(i,v){
					
					html +=  '<tr>'+
				                '<th scope="row" class="font-weight-normal" id="detail_menuName">'+v.f_name+'</th>'+
				                '<td scope="row" class="font-weight-normal" id="detail_menuCount">'+v.f_cnt+'</td>'+
				                '<td scope="row" class="font-weight-normal" id="detail_menuPrice">'+v.f_price.toLocaleString()+'원</td>'+
				                '<td class="text-right" id="detail_menuMessage">'+f_message+'</td>'+
				              '</tr>';
					
				});

				console.log(html);
				
				$('#menuAdd').append(html);
				
				// 삽입될 위치를 변경
				tbl[0].children[1].insertBefore(details, tblclass[tbl_order + 1]);
				$(tblclass[tbl_order]).css("color", "blue");
				// display 속성을 변경
				details.style.display="table-row";
			}else{
				alert("데이터 가져오기 실패");
			}
		}
	};
	request.send(null); // body
};
// 



// 주문 승인 하기
function orderPro(event) {
	var f_ocode = document.getElementById('detail_f_ocode').innerText;
	var request = new XMLHttpRequest(); // 지역변수 추천
	request.open("GET", "${path}/cp_employee/odmn/ok/" + f_ocode, true); // 요청보내는거
	request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	console.dir(request);
	request.onreadystatechange = function(){ // 콜백함수
		if (request.readyState == 4) {
			if(request.status == 200){
				document.getElementById('foodOrderApp').innerText = '주문완료';
				document.getElementById('foodOrderApp2').innerText = '주문완료';
			} else if(request.status == 448){
				document.getElementById('foodOrderApp').innerText = '주문거절';
				document.getElementById('foodOrderApp2').innerText = '주문거절';
			} else {
				alert("데이터 가져오기 실패");
			}
		}
	};
	request.send(f_ocode);
}

// 주문 거절
function orderPro2(event) {
	var f_ocode = document.getElementById('detail_f_ocode').innerText;
	var request = new XMLHttpRequest(); // 지역변수 추천
	request.open("GET", "${path}/cp_employee/odmn/ng/" + f_ocode, true); // 요청보내는거
	request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	console.dir(request);
	request.onreadystatechange = function(){ // 콜백함수
		alert(request.readyState);
		if (request.readyState == 4) {
			if(request.status == 200){
				document.getElementById('foodOrderApp').innerText = '주문거절';
				document.getElementById('foodOrderApp2').innerText = '주문거절';
			} else if(request.status == 448){
				document.getElementById('foodOrderApp').innerText = '승인 거절';
				document.getElementById('foodOrderApp2').innerText = '승인 거절';
			} else {
				alert("데이터 가져오기 실패");
			}
		}
	};
	request.send(f_ocode);
}
</script>

<!-- 주문 번호 재클릭시 열린 창 닫기 jQuery -->
<!-- <script type="text/javascript">
	$(function(){
		$("#detail_odrerCode").click(function() {
			if($("#formDetail").hasClass("hide")) {
				$("#formDetail").removeClass("hide");
			} else {
				$("#formDetail").addClass("hide");
			}
		});
	});
	
</script> -->


<script type="text/javascript">
	$(function(){
		$("#serBtn").click(function(){
			$("#form").attr("action","${path}/cp_employee/odmn/list");
			$("#form").submit();
		});
	});
	
</script>

<!-- ========== END MAIN ========== -->
<%@ include file="../../common/footer.jsp" %>
</body>