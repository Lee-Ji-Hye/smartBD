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
	            <button type="button" class="btn btn-sm btn-primary transition-3d-hover mr-1" onclick="window.location='${path}/sysmaster/memmn/inst'">등록</button>
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
                      	<strong>아이디</strong>
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	<strong>이름</strong>
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	<strong>이메일</strong>
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	<strong>전화번호</strong>
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	<strong>가입일</strong>
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	<strong>버튼</strong>
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  
              </thead>
              <tbody class="font-size-1">
              <c:set var="index" value="${0}"/>
              <c:forEach var="dto" items="${memList}">
              	<tr class="text-uppercase font-size-1 form-original">
                  <td class="align-middle">
                    <div class="media align-items-center">
                    	${dto.userid }
                    </div>
                  </td>
                  <td class="align-middle">
                    <div class="media align-items-center">
                    	${dto.name }
                    </div>
                  </td>
                  <td class="align-middle">
                    <div class="media align-items-center">
                    	${dto.email }
                    </div>
                  </td>
                  <td class="align-middle">
                    <div class="media align-items-center">
                    	${dto.hp }
                    </div>
                  </td>
                  <td class="align-middle">
                    <div class="media align-items-center">
                    	${dto.regidate }
                    </div>
                  </td>
                  <td>
                    <div class="row justify-content-end mb-4">
                       <div class="media align-items-center">
	                  		<button type="button" class="btn btn-sm btn-danger transition-3d-hover" onclick="memPro('del','${dto.userid}')">삭제</button>
                       </div>
                    </div>
                  </td>
                </tr>
                <c:set var="index" value="${index+1}"/>
                </c:forEach>
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
	function memPro(jong, userid) {
		//amd_ok, amd_ng, del
		var url = "${path}/sysmaster/memmn/";
		var method = "";
		
		if(jong === 'amd_ok'){
			if(!confirm("승인 처리 하시겠어요?"))return false;
			url += 'amd/1/' + userid;
			method = "GET";
		} else if(jong === 'amd_ng'){
			if(!confirm("반려 처리 하시겠어요?"))return false;
			url += 'amd/2/' + userid;
			method = "GET";
		} else if(jong === 'del'){
			if(!confirm("삭제 처리 하시겠어요?"))return false;
			url +=  'del/' + userid;
			method = "GET";
		}
		
		var request = new XMLHttpRequest();//지역변수 추천
		request.open(method, url, true);//요청보내는거
		request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		console.dir(request);
		request.onreadystatechange = function(){//콜백함수
			if (request.readyState == 4) {
				if(request.status == 200){
					alert("처리되었습니다. ")
					window.location = request.responseURL;
				}else{
					//실패했을때 알럿
					alert("데이터 가져오기 실패");
				}
			}
		};
		request.send(userid);
	}
  </script>
</main>
<!-- ========== END MAIN ========== -->
<%@ include file="../common/footer.jsp" %>
</body>