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
            
            <!-- Buttons -->
            <div style="margin-right:20px;">
	            <button type="submit" class="btn btn-sm btn-primary transition-3d-hover mr-1" onclick="window.location='${path}/cp_manager/cpmn/inst'">등록</button>
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
                      <input type="checkbox" class="custom-control-input" id="invoiceToggleAllCheckbox">
                      <label class="custom-control-label" for="invoiceToggleAllCheckbox">
                        <span class="text-hide">Checkbox</span>
                      </label>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	사업자구분
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	법인명
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	업종
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	업태
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	상태
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
              </thead>
              <tbody class="font-size-1">
              <c:set var="index" value="${0}"/>
              <c:forEach var="dto" items="${compList}">
              	<tr class="text-uppercase font-size-1 form-original">
                  <td class="align-middle">
                    <div class="custom-control custom-checkbox d-flex align-items-center">
                      <input type="checkbox" class="custom-control-input" id="invoiceCheckbox01">
                      <label class="custom-control-label" for="invoiceCheckbox01">
                        <span class="text-hide">Checkbox</span>
                      </label>
                    </div>
                  </td>
                  <td class="align-middle">
                    <div class="media align-items-center">
                    	개인사업자 : ${dto.comp_section}
                    </div>
                  </td>
                  <td class="align-middle">
                    <div class="media align-items-center">
                    	<a onclick="compDetail(${dto.comp_seq},${index})">베스킨라빈스 : ${dto.comp_org}</a>
                    </div>
                  </td>
                  <td class="align-middle">
                    <div class="media align-items-center">
                    	식품소매업 : ${dto.comp_business}
                    </div>
                  </td>
                  <td class="align-middle">
                    <div class="media align-items-center">
                    	아이스크림 : ${dto.comp_category}
                    </div>
                  </td>
                  <td class="align-middle">
                    <div class="media align-items-center">
                    	승인대기 : ${dto.comp_status}
                    </div>
                  </td>
                  <td class="align-middle">
                    <div class="media align-items-center">
	            		<button type="submit" class="btn btn-sm btn-primary transition-3d-hover mr-1" onclick="">승인</button>
                  		<button type="submit" class="btn btn-sm btn-soft-secondary transition-3d-hover">반려</button>
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
                        <span class="text-secondary">Date:</span>
                        <span class="font-weight-medium">12 May, 2018</span>
                      </div>
                      
                      <div class="col-3">
                        <span class="text-secondary">Merchant:</span>
                        <span class="font-weight-medium">Dropbox</span>
                      </div>
                      <div class="col-6">
                        <span class="text-secondary">Authorization code:</span>
                        <span class="font-weight-medium">901274182319</span>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-sm-6 mb-3 mb-sm-0">
                        <h5 class="text-dark font-size-1 text-uppercase">Billing address:</h5>
                        <address class="text-secondary">
                          <h6 class="h5 text-dark">Dropbox</h6>
                          Flat 60, Ross Green, South Lilyberg, Q7M 8ZV
                        </address>
                      </div>
                      <div class="col-sm-6">
                        <h5 class="text-dark font-size-1 text-uppercase">Client info:</h5>
                        <ul class="list-unstyled mb-0">
                          <li class="mb-2">
                            <span class="text-secondary">First name:</span>
                            <span class="font-weight-medium">Natalie</span>
                          </li>
                          <li class="mb-2">
                            <span class="text-secondary">Last name:</span>
                            <span class="font-weight-medium">Curtis</span>
                          </li>
                          <li class="mb-2">
                            <span class="text-secondary">Country:</span>
                            <span class="font-weight-medium">England</span>
                          </li>
                        </ul>
                      </div>
                    </div>
                    <div class="row justify-content-end mb-4">
                      <div class="col-sm-6">
                        <hr class="my-4">
                        <h5 class="text-dark font-size-1 text-uppercase">Transaction details:</h5>
                        <ul class="list-unstyled mb-0">
                          <li class="d-flex justify-content-between align-items-center mb-2">
                            <span class="text-secondary">Transaction amount</span>
                            <span class="font-weight-medium">$257.93</span>
                          </li>
                          <li class="d-flex justify-content-between align-items-center mb-2">
                            <span class="text-secondary">Fee</span>
                            <span class="font-weight-medium">$0.50</span>
                          </li>
                          <li class="d-flex justify-content-between align-items-center mb-2">
                            <span class="text-secondary">Total amount</span>
                            <span class="text-primary font-weight-medium">$257.43</span>
                          </li>
                        </ul>
                      </div>
                    </div>
                    <ul class="list-inline mb-0">
                      <li class="list-inline-item u-ver-divider pr-3 mr-3">
                        <a href="#">
                          <span class="fas fa-file-word text-secondary mr-1"></span>
                          Download invoice
                        </a>
                      </li>
                      <li class="list-inline-item">
                        <a href="#">
                          <span class="fas fa-print text-secondary mr-1"></span>
                          Print details
                        </a>
                      </li>
                    </ul>
                  </div>
                  <!-- Bill -->
                
              </tbody>
            </table>
          </div>
          <!-- End Activity Table -->
          <!-- Pagination -->
          <div class="pagingDivCenter01">
	          <div class="pagingDivCenter02">
	            <nav id="datatablePagination" aria-label="Activity pagination">
	             <div class="dataTables_paginate paging_simple_numbers pagination mb-0" id="DataTables_Table_0_paginate">
	             	<span class="page-item">
	              	<a class="paginate_button previous page-link" aria-controls="DataTables_Table_0" data-dt-idx="0" tabindex="0" id="DataTables_Table_0_previous">
	             			<span aria-hidden="true">«</span>
	             		</a>
	             	</span>
	             	<span style="display: flex;">
	             		<span class="page-item">
	             			<a class="paginate_button page-link" aria-controls="DataTables_Table_0" data-dt-idx="1" tabindex="0">1</a>
	             		</span>
	             		<span class="page-item active">
	             			<a class="paginate_button current page-link" aria-controls="DataTables_Table_0" data-dt-idx="2" tabindex="0">2</a>
	             		</span>
	             	</span>
	             	<span class="page-item">
	             		<a class="paginate_button next disabled page-link" aria-controls="DataTables_Table_0" data-dt-idx="3" tabindex="0" id="DataTables_Table_0_next">
	             		<span aria-hidden="true">»</span>
	             		</a>
	             	</span>
	             </div>
	            </nav>
	            <small id="datatableInfo" class="text-secondary ml-auto"></small>
	          </div>
          </div>
          <!-- End Pagination -->
        </div>
      </div>
    </div>
  </div>
  <!-- End Content Section -->
  <script>
	function compDetail(comp_seq, tbl_index){
		var request = new XMLHttpRequest();//지역변수 추천
		request.open("GET", "${path}/sysmaster/cormn/details/" + comp_seq, true);//요청보내는거
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
	
	
	function formDetailMod(obj){
		var details = document.getElementById('formDetail')
		
		
		
	};
  </script>
</main>
<!-- ========== END MAIN ========== -->
<%@ include file="../common/footer.jsp" %>
</body>