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
              
              <!-- Datepicker -->
              <div id="datepickerWrapper" class="js-focus-state u-datepicker w-auto input-group input-group-sm">
                <div class="input-group-prepend">
                  <span class="input-group-text">
                    <span class="fas fa-calendar"></span>
                  </span>
                </div>
                
                <input type="text" class="js-range-datepicker form-control bg-white rounded-right"
                       data-rp-wrapper="#datepickerWrapper"
                       data-rp-type="range"
                       data-rp-date-format="d M Y"
                       data-rp-default-date='["05 Jul 2019", "19 Jul 2019"]'
                       data-rp-is-disable-future-dates="true">
              </div>
              <!-- End Datepicker -->
            </div>
           <!--  <div class="col-md-6">
              <div class="d-flex">
                <div class="mr-2">
                  Select
                  <select id="datatableEntries" class="js-select selectpicker dropdown-select" data-width="fit" data-style="btn-soft-primary btn-sm">
                    <option value="6">6 entries</option>
                    <option value="12" selected>12 entries</option>
                    <option value="18">18 entries</option>
                    <option value="24">24 entries</option>
                  </select>
                  End Select
                </div>
                Search
                <div class="js-focus-state input-group input-group-sm">
                  <div class="input-group-prepend">
                    <span class="input-group-text" id="searchActivities">
                      <span class="fas fa-search"></span>
                    </span>
                  </div>
                  <input id="datatableSearch" type="email" class="form-control" placeholder="Search activities" aria-label="Search activities" aria-describedby="searchActivities">
                </div>
                End Search
              </div>
            </div> -->
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
                      	아이디
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center" onclick="window.location='orderList'">
                      	메뉴명
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	가격
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	주문시간
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	상태
                    </div>
                  </th>
                  
                </tr>
              </thead>
              <tbody class="font-size-1">
              <c:set var="order" value="${0}"/>
              	<c:forEach var="ovo" items="${order}">
              		<tr class="text-uppercase font-size-1">
	                  <th scope="col">
	                    <%-- <div class="custom-control custom-checkbox d-flex align-items-center">
	                      <input type="checkbox" class="custom-control-input" id="invoiceCheckbox0${status.count}">
	                      <label class="custom-control-label" for="invoiceCheckbox0${status.count}">
	                        <span class="text-hide">Checkbox</span>
	                      </label>
	                    </div> --%>
	                  </th>
	                  <td class="align-middle text-secondary font-weight-normal" onclick="window.location='${path}/cp_employee/odmn/amd?userid=${ovo.userid}'">${ovo.userid}</td>
	                  <td class="align-middle">${ovo.f_name}</td>
	                  <td class="align-middle text-primary">${ovo.f_pay_price}</td>
	                  <td class="align-middle">${ovo.f_regidate}</td>
	                  <td class="align-middle">
	                  	<div class="media align-items-center" id="foodOrderApp">
	                  		<c:if test="${ovo.f_status == '0'}">승인대기</c:if>
	                  		<c:if test="${ovo.f_status == '1'}">승인완료</c:if>
	                  		<c:if test="${ovo.f_status == '2'}">승인거절</c:if>
	                  	</div>
	                  </td>
	                </tr>
                	<c:set var="order" value="${order+1}"/>
              	</c:forEach>
              	
              	<tr class="text-uppercase font-size-1 collapse out" id='formDetail' style="display: none;">
                	<td scope="row" colspan="7">
                		<!-- Bill To -->
				          <div class="row justify-content-md-between mb-7">
				            <div class="col-md-5 col-lg-4">
				              <h3 class="h5">주문 내역</h3>
				              <span class="d-block">주문자 </span>
				              <address class="text-secondary mb-0" id="orderID">
				               		${dvo.userid}
				              </address>
				            </div>
				
				            <div class="col-md-5 col-lg-4 mt-6">
				              <dl class="row mb-0">
				                <dt class="col-5 col-md-6 font-weight-normal text-secondary">테이크아웃</dt>
				                <dd class="col-7 col-md-6 font-weight-medium" id="orderTakeOut">${dvo.f_takeout}</dd>
				              </dl>
				              <dl class="row mb-0">
				                <dt class="col-5 col-md-6 font-weight-normal text-secondary">픽업시간</dt>
				                <dd class="col-7 col-md-6 font-weight-medium" id="pickUp">${dvo.f_receive_time}</dd>
				              </dl>
				            </div>
				          </div>
				          <!-- End Bill To -->
				
				          <!-- Table -->
				          <table class="table table-heighlighted font-size-1 mb-9">
				            <thead>
				              <tr class="text-uppercase text-secondary">
				                <th scope="col" class="font-weight-medium">메뉴명</th>
				                <th scope="col" class="font-weight-medium">수량</th>
				                <th scope="col" class="font-weight-medium">가격</th>
				                <th scope="col" class="font-weight-medium text-right">요청사항</th>
				              </tr>
				            </thead>
				            <c:forEach var="dvo" items="detail" varStatus="status">
				            <tbody>
				              <tr>
				                <th scope="row" class="font-weight-normal" id="menuName">${dvo.f_name}</th>
				                <td scope="row" class="font-weight-normal" id="menuCount">${dvo.f_cnt}</td>
				                <td scope="row" class="font-weight-normal" id="menuPrice">${dvo.f_price}</td>
				                <td class="text-right" id="menuMessage">${dvo.f_message}</td>
				              </tr>
				            </tbody>
				              <tr class="h6">
				                <td scope="row">Total</td>
				                <td colspan="3" class="text-right" id="menuTotal">${dvo.f_amount}</td>
				              </tr>
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
				        <button type="button" class="btn btn-primary btn-sm-wide transition-3d-hover" onclick="orderPro(event,'amdOk')">
				          <span class="fas fa-print mr-2"></span>
				          	주문승인
				        </button>
				        <button type="button" class="btn btn-sm btn-soft-secondary transition-3d-hover" onclick="orderPro(event,'amdNg')">
				        	주문거절
				        </button>
				      </div>
                	</td>
              </tbody>
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

// AJAX 
function compDetail(f_ocode, tbl_index){
	var request = new XMLHttpRequest();//지역변수 추천
	request.open("GET", "${path}/cp_employeelgks/odmn/amd/" + comp_seq, true);//요청보내는거
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
				//값을 변경
				if(obj.comp_section === '0'){
					obj.comp_section = '개인사업자';
				} else if(obj.comp_section === '1'){
					obj.comp_section = '법인';
				}
				document.getElementById('details_comp_seq').innerText = obj.comp_seq;
				document.getElementById('details_comp_section').innerText = obj.comp_section;
				document.getElementById('details_comp_bn').innerText = obj.comp_bn;
				document.getElementById('details_comp_org').innerText = obj.comp_org;
				document.getElementById('details_comp_master').innerText = obj.comp_master;
				document.getElementById('details_comp_branch').innerText = obj.comp_branch;
				document.getElementById('details_comp_owner').innerText = obj.comp_owner;
				document.getElementById('details_comp_business').innerText = obj.comp_business;
				document.getElementById('details_comp_category').innerText = obj.comp_category;
				document.getElementById('details_comp_hp').innerText = obj.comp_hp;
				document.getElementById('details_comp_regidate').innerText = obj.comp_regidate;
				if(obj.comp_status === '2'){
					obj.comp_status = '반려';
				} else if(obj.comp_status === '0'){
					obj.comp_status = '승인대기';
				} else if(obj.comp_status === '1'){
					obj.comp_status = '승인';
				}
				document.getElementById('details_comp_status').innerText = obj.comp_status;
				document.getElementById('details_comp_status2').innerText = obj.comp_status;
				//삽입될 위치를 변경
				tbl[0].children[1].insertBefore(details, tblclass[tbl_index + 1]);
				//display 속성을 변경
				details.style.display="table-row";
			}else{
				//실패했을때 알럿
				alert("데이터 가져오기 실패");
			}
		}
	};
	request.send(null);
};


function orderPro(event, jong) {
	//amdOk, amdNg,
	var comp_seq = document.getElementById('details_comp_seq').innerText;
	var url = "${path}/cp_employee/odmn/";
	var method = "";
	
	if(jong === 'amdOk'){
		url += 'amd/1/' + comp_seq;
		method = "GET";
	} else if(jong === 'amdNg'){
		url += 'amd/2/' + comp_seq;
		method = "GET";
	} 
	
	var request = new XMLHttpRequest();//지역변수 추천
	request.open(method, url, true);//요청보내는거
	request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	console.dir(request);
	request.onreadystatechange = function(){//콜백함수
		if (request.readyState == 4) {
			if(request.status == 200){
				window.location = request.responseURL;
			}else{
				//실패했을때 알럿
				alert("데이터 가져오기 실패");
			}
		}
	};
	request.send(comp_seq);
}
</script>
<!-- ========== END MAIN ========== -->
<%@ include file="../../common/footer.jsp" %>
</body>