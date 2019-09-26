<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ include file="../common/setting.jsp" %>
<%@ include file="../common/headerAdmin.jsp" %>

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
            
            <!-- Buttons -->
            <%-- <div style="margin-right:20px;">
	            <button type="submit" class="btn btn-sm btn-primary transition-3d-hover mr-1" onclick="window.location='${path}/bd_food/cormn/inst'">등록</button>
            </div> --%>
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
                  <!-- <th scope="col">
                    <div class="custom-control custom-checkbox d-flex align-items-center">
                      <input type="checkbox" class="custom-control-input" id="invoiceToggleAllCheckbox">
                      <label class="custom-control-label" for="invoiceToggleAllCheckbox">
                        <span class="text-hide">Checkbox</span>
                      </label>
                    </div>
                  </th> -->
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	<strong>사업자구분</strong>
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	<strong>법인명</strong>
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	<strong>업종</strong>
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	<strong>업태</strong>
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
              </thead>
              <tbody class="font-size-1">
              <c:set var="index" value="${0}"/>
              <c:forEach var="dto" items="${compList}">
              	<tr class="text-uppercase font-size-1 form-original">
                  <!-- <td class="align-middle">
                    <div class="custom-control custom-checkbox d-flex align-items-center">
                      <input type="checkbox" class="custom-control-input" id="invoiceCheckbox01">
                      <label class="custom-control-label" for="invoiceCheckbox01">
                        <span class="text-hide">Checkbox</span>
                      </label>
                    </div>
                  </td> -->
                  <td class="align-middle">
                    <div class="media align-items-center">
                    	<c:if test="${dto.comp_section=='0'}">개인사업자</c:if>
                    	<c:if test="${dto.comp_section=='1'}">법인</c:if>
                    </div>
                  </td>
                  <td class="align-middle">
                    <div class="media align-items-center">
                    	<a onclick="compDetail('${dto.comp_seq}',${index})">${dto.comp_org}</a>
                    </div>
                  </td>
                  <td class="align-middle">
                    <div class="media align-items-center">
                    	${dto.comp_business}
                    </div>
                  </td>
                  <td class="align-middle">
                    <div class="media align-items-center">
                    	${dto.comp_category}
                    </div>
                  </td>
                  <td class="align-middle">
                    <div class="media align-items-center" id="details_comp_status2">
                    	<c:if test="${dto.comp_status=='2'}">반려</c:if>
                    	<c:if test="${dto.comp_status=='0'}">승인 대기</c:if>
                    	<c:if test="${dto.comp_status=='1'}">승인 완료</c:if>
                    </div>
                  </td>
                  <!-- <td class="align-middle text-secondary">2019/08/12~2019/09/11</td> -->
                  <!-- <td class="align-middle text-danger"></td> -->
                </tr>
                <c:set var="index" value="${index+1}"/>
                </c:forEach>
                
          <tr class="text-uppercase font-size-1 collapse out" id='formDetail' style="display: none;">
                <td scope="row" colspan="7">
                <!-- Bill -->
                  <div class="border rounded p-5">
                    <h4 class="h3">신청서</h4>
                    <div class="row mb-6">
                      <div class="col-3">
                        <span class="text-secondary">신청일:</span>
                        <span class="font-weight-medium" id="details_comp_propose"></span>
                      </div>
                      
                      <div class="col-3">
                        <span class="text-secondary">사업자구분:</span>
                        <span class="font-weight-medium" id="details_comp_section">Dropbox</span>
                      </div>
                      <div class="col-6">
                        <span class="text-secondary">사업자번호:</span>
                        <span class="font-weight-medium" id="details_comp_bn">901274182319</span>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-sm-6 mb-3 mb-sm-0">
                        <!-- <h5 class="text-dark font-size-1 text-uppercase">Billing address:</h5> -->
                        <h6 class="h5 text-secondary">법인명:<em class="h5 text-dark" id="details_comp_org">베스킨라빈스</em></h6>
                        <span class="text-secondary">본점주소:</span>
                        <address class="text-dark" id="details_comp_master">
                          Flat 60, Ross Green, South Lilyberg, Q7M 8ZV
                        </address>
                        <span class="text-secondary">지점주소:</span>
                        <address class="text-dark" id="details_comp_branch">
                          Flat 60, Ross Green, South Lilyberg, Q7M 8ZV
                        </address>
                      </div>
                      <div class="col-sm-6">
                        <!-- <h5 class="text-dark font-size-1 text-uppercase">Client info:</h5> -->
                        <ul class="list-unstyled mb-0">
                          <li class="mb-2">
                            <span class="text-secondary">대표자:</span>
                            <span class="font-weight-medium" id="details_comp_owner">Natalie</span>
                          </li>
                          <li class="mb-2">
                            <span class="text-secondary">업종:</span>
                            <span class="font-weight-medium" id="details_comp_business">Natalie</span>
                          </li>
                          <li class="mb-2">
                            <span class="text-secondary">업태:</span>
                            <span class="font-weight-medium" id="details_comp_category">Curtis</span>
                          </li>
                          <li class="mb-2">
                            <span class="text-secondary">대표전화:</span>
                            <span class="font-weight-medium" id="details_comp_hp">England</span>
                          </li>
                          <li class="mb-2">
                            <span class="text-secondary">설립일:</span>
                            <span class="font-weight-medium" id="details_comp_regidate">England</span>
                          </li>
                          <li class="mb-2">
                            <span class="text-secondary">승인상태:</span>
                            <span class="font-weight-medium" id="details_comp_status">England</span>
                          </li>
                        </ul>
                          <span id="details_comp_seq" style="display: none;"></span>
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
	            		<button type="button" class="btn btn-sm btn-primary transition-3d-hover mr-1" onclick="compPro(event,'amd_ok')">승인</button>
                  		<button type="button" class="btn btn-sm btn-soft-secondary transition-3d-hover" onclick="compPro(event,'amd_ng')">반려</button>
                  		<button type="button" class="btn btn-sm btn-danger transition-3d-hover" onclick="compPro(event,'del')">삭제</button>
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
	function compDetail(comp_seq, tbl_index){
		var request = new XMLHttpRequest();//지역변수 추천
		request.open("GET", "${path}/bd_food/cormn/details/" + comp_seq, true);//요청보내는거
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
	
	function compPro(event, jong) {
		//amd_ok, amd_ng, del
		var comp_seq = document.getElementById('details_comp_seq').innerText;
		var url = "${path}/bd_food/cormn/";
		var method = "";
		
		if(jong === 'amd_ok'){
			url += 'amd/1/' + comp_seq;
			method = "GET";
		} else if(jong === 'amd_ng'){
			url += 'amd/2/' + comp_seq;
			method = "GET";
		} else if(jong === 'del'){
			url +=  'del/' + comp_seq;
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
</main>
<!-- ========== END MAIN ========== -->
<%@ include file="../common/footer.jsp" %>
</body>