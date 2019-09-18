<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp" %>
<%-- <%@ include file="../../common/header.jsp" %> --%>
<%@ include file="../../common/headerAdmin.jsp" %>

 
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
              <!-- <div id="datepickerWrapper" class="js-focus-state u-datepicker w-auto input-group input-group-sm">
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
              </div> -->
              <!-- End Datepicker -->
            </div>
			<!-- Buttons -->
			<div class="editBtnDiv01">
				<button type="submit" class="btn btn-sm btn-primary transition-3d-hover mr-1" onclick="window.location='roomupload'">등록</button>
				<button type="button" id="deleteBtn" class="btn btn-sm btn-soft-secondary transition-3d-hover">삭제</button>
			</div>
			<!-- End Buttons -->
          </div>
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
              <colgroup>
					<col width="3%"/>
					<col width="12%"/>
					<col width="7%"/>
					<col width="9%"/>
					<col width="12%"/>
					<col width="12%"/>
					<col width="12%"/>
					<col width="9%"/>
					<col width="12%"/>
					<col width="12%"/>
				</colgroup>
              	<tr>
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
                      	매물코드
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	호수
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	분류
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	타입
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	전세/월세
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	보증금
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	평수(㎡)
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	층수
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	작성자
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
              </thead>
              
              <c:if test="${fn:length(dtos) == 0}">
           		  <tbody class="font-size-1">
	              	<tr>
	                  <td class="align-middle" colspan="7" style="text-align: center;padding:100px">
	                    	매물을 등록해주세요.
	                  </td>
             		</tbody>
              </c:if>
              <c:if test="${fn:length(dtos) != 0}">
              	<c:forEach var="dto" items="${dtos}" varStatus="status">
	              		<tbody class="font-size-1">
			              	<tr>
			                  <td class="align-middle">
			                    <div class="custom-control custom-checkbox d-flex align-items-center">
			                      <input type="checkbox" class="custom-control-input chkBtn" id="invoiceCheckbox0${status.count}" r_code="${dto.r_code}">
			                      <label class="custom-control-label" for="invoiceCheckbox0${status.count}">
			                        <span class="text-hide">Checkbox</span>
			                      </label>
			                    </div>
			                  </td>
			                  <td class="align-middle text-secondary font-weight-normal "><a href="${path_r_mng}/roomdetail?r_code=${dto.r_code}">${dto.r_code}</a></td>
			                  <td class="align-middle text-secondary font-weight-normal ">${dto.r_name}</td>
			                  <td class="align-middle text-secondary font-weight-normal ">
			                  	<c:if test="${dto.r_kind == 'RT'}">
			                  		임대
			                  	</c:if>
			                  	<c:if test="${dto.r_kind == 'ST'}">
			                  		상가
			                  	</c:if>
			                  </td>
			                  <td class="align-middle text-secondary font-weight-normal ">${dto.r_type}</td>
			                  <td class="align-middle text-secondary font-weight-normal ">
								<fmt:formatNumber value="${dto.r_price}" pattern="#,###.##"/>
							  </td>
			                  <td class="align-middle text-secondary font-weight-normal ">
								<fmt:formatNumber value="${dto.r_deposit}" pattern="#,###.##"/>
							  </td>
			                  <td class="align-middle font-weight-normal">${dto.r_area}㎡</td>
			                  <td class="align-middle text-primary">${dto.r_floor}</td>
			                  <td class="align-middle font-weight-normal">${dto.userid}</td>
	              		</tbody>
              	</c:forEach>
              </c:if>
              
            </table>
          </div>
          <!-- End Activity Table -->
          ${paging.html_mk_page()}
        </div>
      </div>
    </div>
  </div>
  <!-- End Content Section -->
</main>
<!-- ========== END MAIN ========== -->
<%@ include file="../../common/footer.jsp" %>

<script type="text/javascript">
	$(function(){
		$("#invoiceToggleAllCheckbox").click(function(){
			$(".custom-control-input").prop("checked", this.checked);
		});
		
		$("#deleteBtn").click(function(){
			
			if(confirm('정말 삭제하시겠습니까?')) {

				var r_codes = "";
				$.each($(".chkBtn"), function(i, v){
					var is_checked = $(v).is(":checked");
					if(is_checked) {
						console.log('aaa');
						if(r_codes != "") r_codes += ",";
						r_codes += "'" + $(v).attr("r_code")+"'";
					}
				});
				
				$.ajax({
					 url : "/smart/bd_office/roomDelete"
					,type : "GET"
					,data : {"r_codes" : r_codes}
					,dataType : "json"
					,success:function(e){
						
						if(e > 0) {
							alert("삭제되었습니다.");
						} else {
							alert("삭제 실패하였습니다.\n다시 시도해주세요.");
						}
						
						location.reload(); //페이지 새로고침
			        }
					,error:function(request,status,error){
					        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
					}
				});
			} 
			
			
		});
	});
</script>
</body>
