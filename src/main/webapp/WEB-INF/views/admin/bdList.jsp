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
            <div class="col-md-5 col-lg-4 mb-2 mb-md-0"><!-- 버튼 앞 공간차지위한 div박스 --></div>
            
            <!-- Buttons -->
            <div style="margin-right:20px;">
	            <button type="button" class="btn btn-sm btn-primary transition-3d-hover mr-1" onclick="window.location='${path}/sysmaster/bdmn/inst'">등록</button>
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
                  
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	<strong>건물번호</strong>
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	<strong>건물명</strong>
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	<strong>시.도</strong>
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	<strong>구.동</strong>
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	<strong>승인 상태</strong>
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  
              </thead>
              <tbody class="font-size-1">
              <c:set var="index" value="${0}"/>
              <c:forEach var="dto" items="${bdList}">
              	<tr class="text-uppercase font-size-1 form-original">
                  <td class="align-middle">
                    <div class="media align-items-center">
                    	${dto.b_code }
                    </div>
                  </td>
                  <td class="align-middle">
                    <div class="media align-items-center">
						<a onclick="bdDetail('${dto.b_code}',${index})">${dto.b_name}</a>
                    </div>
                  </td>
                  <td class="align-middle">
                    <div class="media align-items-center">
                    	${dto.b_area1 }
                    </div>
                  </td>
                  <td class="align-middle">
                    <div class="media align-items-center">
                    	${dto.b_area2 }
                    </div>
                  </td>
                  <td class="align-middle">
                    <div class="media align-items-center" id="details_b_status">
                    	<c:if test="${dto.b_status==1}">승인</c:if>
                    	<c:if test="${dto.b_status==0}"><span class="text-primary">승인 대기</span></c:if>
                    	<c:if test="${dto.b_status==2}"><span class="text-danger">반려</span></c:if>
                    </div>
                  </td>
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
                        <span class="font-weight-medium" id="details_comp_propose">2019-09-03</span>
                      </div>
                      
                      <div class="col-3">
                        <span class="text-secondary">시.도 구분</span>
                        <span class="font-weight-medium" id="details_b_area1">Dropbox</span>
                      </div>
                      <div class="col-6">
                        <span class="text-secondary">구.동 구분</span>
                        <span class="font-weight-medium" id="details_b_area2">901274182319</span>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-sm-6 mb-3 mb-sm-0">
                        <h6 class="h5 text-secondary">건물명:<em class="h5 text-dark" id="details_b_name">베스킨라빈스</em></h6>
                        <span class="text-secondary">건물주소:</span>
                        <address class="text-dark" id="details_b_address">
                          Flat 60, Ross Green, South Lilyberg, Q7M 8ZV
                        </address>
                      </div>
                      <div class="col-sm-6">
                        <ul class="list-unstyled mb-0">
                          <li class="mb-2">
                            <span class="text-secondary">건물층수:</span>
                            <span class="font-weight-medium" id="details_b_floor">Natalie</span>
                          </li>
                          <li class="mb-2">
                            <span class="text-secondary">준공년도:</span>
                            <span class="font-weight-medium" id="details_b_year">Natalie</span>
                          </li>
                          <li class="mb-2">
                            <span class="text-secondary">주차장유무:</span>
                            <span class="font-weight-medium" id="details_b_park">Curtis</span>
                          </li>
                          <li class="mb-2">
                            <span class="text-secondary">승강기유무:</span>
                            <span class="font-weight-medium" id="details_b_elev">England</span>
                          </li>
                          <li class="mb-2">
                            <span class="text-secondary">난방종류:</span>
                            <span class="font-weight-medium" id="details_b_heat">England</span>
                          </li>
                          <li class="mb-2">
                            <span class="text-secondary">교통편:</span>
                            <span class="font-weight-medium" id="details_b_traffic">England</span>
                          </li>
                          <li class="mb-2">
                            <span class="text-secondary">위도:</span>
                            <span class="font-weight-medium" id="details_b_lat">England</span>
                          </li>
                          <li class="mb-2">
                            <span class="text-secondary">경도:</span>
                            <span class="font-weight-medium" id="details_b_lon">England</span>
                          </li>
                          <li class="mb-2">
                            <span class="text-secondary">승인상태:</span>
                            <span class="font-weight-medium" id="details_b_status2">England</span>
                          </li>
                          <li class="mb-2">
                            <span class="text-secondary">고유번호:</span>
                            <span class="font-weight-medium" id="details_b_unique">England</span>
                          </li>
                          <li class="mb-2">
                            <span class="text-secondary">소유자:</span>
                            <span class="font-weight-medium" id="details_b_owner">England</span>
                          </li>
                          <li class="mb-2">
                            <span class="text-secondary">소유자번호:</span>
                            <span class="font-weight-medium" id="details_b_regnum">England</span>
                          </li>
                          <li class="mb-2">
                            <span class="text-secondary">대지면적:</span>
                            <span class="font-weight-medium" id="details_b_landarea">England</span>
                          </li>
                          <li class="mb-2">
                            <span class="text-secondary">건축면적:</span>
                            <span class="font-weight-medium" id="details_b_buildarea">England</span>
                          </li>
                          <li class="mb-2">
                            <span class="text-secondary">건축규모:</span>
                            <span class="font-weight-medium" id="details_b_buildscale">England</span>
                          </li>
                        </ul>
                          <span id="details_b_code" style="display: none;"></span>
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
	function bdDetail(b_code, tbl_index){
		var request = new XMLHttpRequest();//지역변수 추천
		request.open("GET", "${path}/sysmaster/bdmn/details/" + b_code, true);//요청보내는거
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
					if(obj.b_status === '2'){
						obj.b_status = '반려';
					} else if(obj.comp_status === '1'){
						obj.b_status = '승인';
					} else {
						obj.b_status = '승인대기';
					}
					
					if(obj.b_park===1){
						obj.b_park = '있음';
					}else{
						obj.b_park = '없음';
					}
					
					if(obj.b_elev===1){
						obj.b_elev = '있음';
					}else{
						obj.b_elev = '없음';
					}
					
					
					//b_code, b_area1, b_area2, b_address, b_name, b_floor, b_year, b_park, b_elev, b_heat, b_traffic, b_lat, b_lon, userid, b_unique, b_owner, b_regnum, b_landarea, b_buildarea, b_buildscale, b_status, b_regidate
					
					document.getElementById('details_b_name').innerText = obj.b_name;
					document.getElementById('details_b_area1').innerText = obj.b_area1;
					document.getElementById('details_b_area2').innerText = obj.b_area2;
					document.getElementById('details_b_code').innerText = obj.b_code;
					document.getElementById('details_b_address').innerText = obj.b_address;
					document.getElementById('details_b_floor').innerText = obj.b_floor + '층';
					document.getElementById('details_b_year').innerText = obj.b_year;
					
					document.getElementById('details_b_unique').innerText = obj.b_unique;
					document.getElementById('details_b_owner').innerText = obj.b_owner;
					document.getElementById('details_b_year').innerText = obj.b_year;
					document.getElementById('details_b_regnum').innerText = obj.b_regnum;
					
					document.getElementById('details_b_landarea').innerText = obj.b_landarea;
					document.getElementById('details_b_buildarea').innerText = obj.b_buildarea;
					document.getElementById('details_b_buildscale').innerText = obj.b_buildscale;
					
					document.getElementById('details_b_park').innerText = obj.b_park;
					document.getElementById('details_b_elev').innerText = obj.b_elev;
					document.getElementById('details_b_heat').innerText = obj.b_heat;
					document.getElementById('details_b_traffic').innerText = obj.b_traffic;
					document.getElementById('details_b_lat').innerText = obj.b_lat;
					document.getElementById('details_b_lon').innerText = obj.b_lon;
					//document.getElementById('details_userid').innerText = obj.userid;
					document.getElementById('details_b_status2').innerText = obj.b_status;
					//document.getElementById('details_b_status2').innerText = obj.b_status2;
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
	
	function compPro(jong) {
		//amd_ok, amd_ng, del
		var comp_seq = document.getElementById('details_b_code').innerText;
		var url = "${path}/sysmaster/bdmn/";
		var method = "";
		
		if(jong === 'amd_ok'){
			if(!confirm("승인처리 하시겠어요?"))return false;
			url += 'amd/1/' + comp_seq;
			method = "GET";
		} else if(jong === 'amd_ng'){
			if(!confirm("승인을 철회 하시겠어요?"))return false;
			url += 'amd/2/' + comp_seq;
			method = "GET";
		} else if(jong === 'del'){
			if(!confirm("삭제처리 하시겠어요?"))return false;
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
					alert("처리했습니다");
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