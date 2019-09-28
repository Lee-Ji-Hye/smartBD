<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ include file="../common/setting.jsp" %>
<%@ include file="../common/header.jsp" %>

<!-- ========== MAIN ========== -->
<main id="content" role="main">
  <div class="bg-light">
    <div class="container space-2">
      <div class="card">
        <div class="card-header py-4 px-0 mx-4">
          <!-- Activity Menu -->
          <div class="row justify-content-sm-between align-items-sm-center">
            <div class="col-md-5 col-lg-4 mb-2 mb-md-0">
              
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
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	<strong>관리자아이디</strong>
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	<strong>권한</strong>
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	<strong>상태</strong>
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	<strong>요청일자</strong>
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	<strong>승인일자</strong>
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
              </thead>
              <tbody class="font-size-1">
              <c:set var="index" value="${0}"/>
              <c:forEach var="dto" items="${authList}">
              	<tr class="text-uppercase font-size-1 form-original">
                 <!-- 관리자 아이디 -->
                  <td class="align-middle">
                    <div class="media align-items-center">
                    	<a onclick="compDetail('${dto.userid}', '${dto.req_auth}',${index})">${dto.userid}</a>
                    </div>
                  </td>
                  
                  <!-- 권한 -->
                  <td class="align-middle">
                    <div class="media align-items-center">
                    	<c:if test="${dto.req_auth == 'ROLE_CP_MANAGER'}">매니저</c:if>
                    	<c:if test="${dto.req_auth == 'ROLE_CP_EMPLOYEE'}">일반 직원</c:if>
                    </div>
                  </td>
                  
                  <!-- 상태 -->
                  <td class="align-middle">
                    <div class="media align-items-center">
                    	<c:if test="${dto.req_status==1}">승인</c:if>
                    	<c:if test="${dto.req_status==0}"><span class="text-primary">승인 대기</span></c:if>
                    	<c:if test="${dto.req_status==2}"><span class="text-danger">반려</span></c:if>
                    </div>
                  </td>
                  
                  <!-- 요청일자 -->
                  <td class="align-middle">
                    <div class="media align-items-center">
                    	${dto.req_date}
                    </div>
                  </td>
                  
                  <!-- 승인일자 -->
                  <td class="align-middle">
                    <div class="media align-items-center">
                    	${dto.confirm_date}
                    </div>
                  </td>

                </tr>
                <c:set var="index" value="${index+1}"/>
                </c:forEach>
                
          <tr class="font-size-1 collapse out" id='formDetail' style="display: none;">
                <td scope="row" colspan="7">
                <!-- Bill -->
                  <div class="border rounded p-5">
                    <h4 class="h3">신청서</h4>
                    <div class="row mb-6">
                      <div class="col-3">
                        <span class="text-secondary">신청일:</span>
                        <span class="font-weight-medium" id="details_req_date">2019-09-03</span>
                      </div>
                      <div class="col-3">
                        <span class="text-secondary">승인완료일:</span>
                        <span class="font-weight-medium" id="details_confirm_date">Dropbox</span>
                      </div>
                      <!-- <div class="col-6">
                        <span class="text-secondary">사업자번호:</span>
                        <span class="font-weight-medium" id="details_comp_bn">901274182319</span>
                      </div> -->
                    </div>
                    <div class="row">
                      <div class="col-sm-6 mb-3 mb-sm-0">
                        <!-- <h5 class="text-dark font-size-1 text-uppercase">Billing address:</h5> -->
                        <h6 class="h5 text-secondary">아이디:<em class="h5 text-dark" id="details_userid">베스킨라빈스</em></h6>
                        <span class="text-secondary">이름:</span>
                        <address class="text-dark" id="details_name">
                          Flat 60, Ross Green, South Lilyberg, Q7M 8ZV
                        </address>
                        <span class="text-secondary">전화번호:</span>
                        <address class="text-dark" id="details_hp">
                          Flat 60, Ross Green, South Lilyberg, Q7M 8ZV
                        </address>
                        
                        <span class="text-secondary">이메일:</span>
                        <address class="text-dark" id="details_email">
                          Flat 60, Ross Green, South Lilyberg, Q7M 8ZV
                        </address>
                      </div>
                      <div class="col-sm-6">
                        <!-- <h5 class="text-dark font-size-1 text-uppercase">Client info:</h5> -->
                        <ul class="list-unstyled mb-0">
                          <li class="mb-2">
                            <span class="text-secondary">요청권한:</span>
                            <span class="font-weight-medium" id="details_req_auth">England</span>
                          </li>
                          <li class="mb-2">
                            <span class="text-secondary">승인상태:</span>
                            <span class="font-weight-medium" id="details_req_status">England</span>
                          </li>
                        </ul>
                          <!-- <span id="details_userid" style="display: none;"></span> -->
                      </div>
                    </div>
                    <div class="row justify-content-end mb-4">
                      <div class="col-sm-6">
                        <hr class="my-4">
                        <h5 class="text-dark font-size-1 text-uppercase">
                        <a href="#"><span class="fas fa-print text-secondary mr-1">사업자등록증</span>
                        </a></h5>
                      </div>
                    </div>
                    <div class="row justify-content-end mb-4">
                       <div class="media align-items-center">
	            		<button type="button" class="btn btn-sm btn-primary transition-3d-hover mr-1" onclick="compPro('amd_ok')">승인</button>
                  		<button type="button" class="btn btn-sm btn-soft-secondary transition-3d-hover" onclick="compPro('amd_ng')">반려</button>
                  		<button type="button" class="btn btn-sm btn-danger transition-3d-hover" onclick="compPro('del')">삭제</button>
                       </div>
                    </div>
                  </div>
                  <!-- Bill -->
                
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
  <script>
	function compDetail(userid, req_auth, tbl_index){
		var request = new XMLHttpRequest();//지역변수 추천
		request.open("GET", "${path}/cp_admin/fdepmn/details/" + userid + '/' + req_auth, true);//요청보내는거
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
					console.dir(obj);
					//값을 변경
					if(obj.req_status === '0'){
						obj.req_status = '승인대기';
					} else if(obj.req_status === '1'){
						obj.req_status = '승인';
					} else if(obj.req_status === '2'){
						obj.req_status = '반려';
					}
					if(obj.req_auth === 'ROLE_CP_MANAGER'){
						obj.req_auth = '매니저';
					}else if(obj.req_auth === 'ROLE_CP_EMPLOYEE'){
						obj.req_auth = '일반 직원';
					}
					// userid, name, hp, email, req_key, req_auth, req_date, req_status, confirm_date
					document.getElementById('details_userid').innerHTML = obj.userid;
					document.getElementById('details_name').innerHTML = obj.name;
					document.getElementById('details_hp').innerHTML = obj.hp;
					document.getElementById('details_email').innerHTML = obj.email;
					//document.getElementById('details_req_key').innerText = obj.req_key;
					document.getElementById('details_req_auth').innerHTML = obj.req_auth;
					document.getElementById('details_req_date').innerHTML = obj.req_date;
					document.getElementById('details_req_status').innerHTML = obj.req_status;
					document.getElementById('details_confirm_date').innerHTML = obj.confirm_date;
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
		request.send();
	};
	
	function compPro(jong) {
		//amd_ok, amd_ng, del
		var userid = document.getElementById('details_userid').innerText;
		var req_auth = document.getElementById('details_req_auth').innerText;//
		var url = "${path}/cp_admin/fdepmn/";
		var method = "";
		

		if(req_auth === '매니저'){
			req_auth = 'ROLE_CP_MANAGER';
		}else if(obj.req_auth === '일반 직원'){
			req_auth = 'ROLE_CP_EMPLOYEE';
		}
		
		if(jong === 'amd_ok'){
			if(!confirm("승인처리 하시겠어요?"))return false;
			url += 'amd/1/' + userid + "/" + req_auth;
			method = "GET";
		} else if(jong === 'amd_ng'){
			if(!confirm("반려 처리 하시겠어요?"))return false;
			url += 'amd/2/' + userid + "/" + req_auth;
			method = "GET";
		} else if(jong === 'del'){
			if(!confirm("삭제 처리 하시겠어요?"))return false;
			url +=  'del/' + userid + "/" + req_auth;
			method = "GET";
		}
		
		var request = new XMLHttpRequest();//지역변수 추천
		request.open(method, url, true);//요청보내는거
		request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		console.dir(request);
		request.onreadystatechange = function(){//콜백함수
			if (request.readyState == 4) {
				if(request.status == 200){
					alert("처리되었습니다.");
					window.location = request.responseURL;
				}else{
					//실패했을때 알럿
					alert("데이터 가져오기 실패");
				}
			}
		};
		request.send();
	}
  </script>
</main>
<!-- ========== END MAIN ========== -->
<%@ include file="../common/footer.jsp" %>
</body>