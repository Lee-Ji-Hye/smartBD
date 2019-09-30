<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp" %>
<%@ include file="../../common/header.jsp" %>
<%@ include file="../../common/foodMiddleHeaderManage.jsp" %>
 
<!-- ========== MAIN ========== -->
<form method="post" name="coupon" action="${path}/cp_manager/cpmn/del?${_csrf.parameterName}=${_csrf.token}" onsubmit="return checkBeforeDelete();">
<main id="content" role="main">
  <div class="bg-light">
    <div class="container space-2">
      <div class="card">
        <div class="card-header py-4 px-0 mx-4">
          <!-- Activity Menu -->
          <div class="row justify-content-sm-between align-items-sm-center">
            <div class="col-md-5 col-lg-4 mb-2 mb-md-0">
              
            </div>
            
            <!-- Buttons -->
            <div style="margin-right:20px;">
	            <button type="button" class="btn btn-sm btn-primary transition-3d-hover mr-1" onclick="window.location='${path}/cp_manager/cpmn/inst'">등록</button>
	            <button type="submit" class="btn btn-sm btn-soft-secondary transition-3d-hover">삭제</button>
            </div>
            <!-- End Buttons -->
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
                    <div class="custom-control custom-checkbox d-flex align-items-center">
                      <input type="checkbox" class="custom-control-input " name="couponAll" id="invoiceToggleAllCheckbox" >
                      <label class="custom-control-label" for="invoiceToggleAllCheckbox" >
                        <span class="text-hide">Checkbox</span>
                      </label>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	쿠폰번호
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	쿠폰명
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	가격
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                    	사용기한
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	사용만료
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	발급장수
                    </div>
                  </th>
              </thead>
              <c:set var="order" value="${0}"/>
              <tbody class="font-size-1">
              <c:forEach var="vo" items="${list}"  varStatus="status">
              	<tr class="text-uppercase font-size-1 form-original">
                  <td class="align-middle">
                    <div class="custom-control custom-checkbox d-flex align-items-center">
                      <input type="checkbox" class="custom-control-input" name="couponChk" id="invoiceCheckbox0${status.count}" value="${vo.f_coupon_num}">
                      <label class="custom-control-label" for="invoiceCheckbox0${status.count}" >
                       <span class="text-hide">Checkbox</span>
                      </label>
                    </div>
                  </td>
                  <td class="align-middle text-secondary font-weight-normal " id="detail_couponCode" onclick="couponDetailCode('${vo.f_coupon_num}',${order})">${vo.f_coupon_num}</td>
                  <td class="align-middle text-secondary font-weight-normal ">${vo.f_coupon_name}</td>
                  <td class="align-middle"><fmt:formatNumber value="${vo.f_coupon_price}" pattern="#,###" />원</td>
                  <td class="align-middle text-primary"><fmt:formatDate value="${vo.f_coupon_start}" pattern="yyyy-MM-dd"/></td>
                  <td class="align-middle text-primary"><fmt:formatDate value="${vo.f_coupon_end}" pattern="yyyy-MM-dd"/></td>
                  <td class="align-middle text-secondary">${vo.f_coupon_count}</td>
                </tr>
                	<c:set var="order" value="${order+1}"/>
                </c:forEach>
                <!-- 클릭시 상세 페이지 시작 부분 -->
                <tr class="text-uppercase font-size-1 collapse out" id='formDetail' style="display: none;">
                	<td scope="row" colspan="7">
                	<div class="border rounded p-5">
                		<!-- Bill To -->
				          <div class="row justify-content-md-between mb-7">
				            <div class="col-md-5 col-lg-4">
				              <h3 class="h5">쿠폰 내역</h3>
				              <span class="d-block">쿠폰명 </span>
				              <address class="text-secondary mb-0" id="detail_couponName">
				               		${vo.f_coupon_name}
				              </address>
				              <br>
				              <span class="d-block">발급 장수</span>
				              <address class="text-secondary mb-0" id="detail_count">
				              		${vo.f_coupon_count}
				              </address>
				            </div>
				          </div>
				          <!-- End Bill To -->
				
				          <!-- Table -->
				          <table class="table table-heighlighted font-size-1 mb-9">
				            <thead>
				              <tr class="text-uppercase text-secondary">
				                <th scope="col" class="font-weight-medium">시리얼번호</th>
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
                        		<%-- <hr class="my-4">
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
				              </tr> --%>
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
				      </div>
                	</td>
                 </tr>
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
</form>

<!-- jQuery 스크립트  -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
//쿠폰 목록 전체 체크 jQuery

$(function(){
	$("#invoiceToggleAllCheckbox").click(function(){
		$( '.custom-control-input' ).prop( 'checked', this.checked );
	});
});
</script>

<!-- 쿠폰 리스트 삭제 버튼 클릭시 작동하는 script -->
<script type="text/javascript">
function checkBeforeDelete() {
	if(confirm("정말 삭제하시겠습니까?") == false) {
		return false;
	}
}        	
</script>
<!-- 쿠폰 리스트 삭제 버튼 클릭시 작동하는 script end-->

<script type="text/javascript">
// couponDetailCode 함수를 부르기 위한 함수
function couponDetailCode(f_coupon_num, tbl_couponUpCode) {
	//상세보기창이 display:none이면 false 출력
	if($('#formDetail').is(':visible')){
		// display:table-row일때
		//숨겨야됨
		$("#formDetail").hide();	// 승인버튼 숨기기 
		$($('.form-original')[tbl_couponUpCode]).css("color", "black");
	}else{
		// display:none일때
		//펼쳐야됨
		couponDetail(f_coupon_num, tbl_couponUpCode)
	}
	
}

// AJAX 주문코드 클릭시 상세 주문 보기 띄우기
function couponDetail(f_coupon_num, tbl_couponUpCode){
	var request = new XMLHttpRequest(); // 지역변수 추천
	request.open("GET", "${path}/cp_manager/cpmn/amd/" + f_coupon_num, true); // 요청보내는거
	request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	console.dir(request);
	request.onreadystatechange = function(){ // 콜백함수
		if (request.readyState == 4) {
			if(request.status == 200){
				document.getElementById('menuAdd').innerHTML = "";
				// for문으로 돌린 table의 집합 (컨트롤하기위한 class)
				var tblclass = document.getElementsByClassName('form-original');
				// 삽입할 부모 테이블
				var tbl = document.getElementsByTagName('table');
				// 숨겨져 있는 값
				var details = document.getElementById('formDetail');
				// 서버에서 받아온 데이터
				obj = JSON.parse(request.responseText);
				// 콘솔에찍음
				console.dir(obj);
				var couponInfo = obj.couponInfo; // 주문자의 정보를 담은 변수
				var couponMenu = obj.couponMenu; // 메뉴 상세 정보를 담는 변수
				
				document.getElementById('detail_couponName').innerText = couponInfo.F_COUPON_NAME; // 쿠폰명
				document.getElementById('detail_count').innerText = couponInfo.F_COUPON_COUNT; // 쿠폰장수
				
				var html="";
				$.each(couponMenu,function(i,v){
					
					html +=  '<tr>'+
				                '<td scope="row" class="font-weight-normal" id="detail_menuCount">'+v.f_serial+'</td>'+
				              '</tr>';
					
				});

				console.log(html);
				
				$('#menuAdd').append(html);
				
				// 삽입될 위치를 변경
				tbl[0].children[1].insertBefore(details, tblclass[tbl_couponUpCode + 1]);
				$(tblclass[tbl_couponUpCode]).css("color", "blue");
				// display 속성을 변경
				details.style.display="table-row";
			}else{
				alert("데이터 가져오기 실패");
			}
		}
	};
	request.send(null); // body
};
</script>
<!-- ========== END MAIN ========== -->
<%@ include file="../../common/footer.jsp" %>
</body>