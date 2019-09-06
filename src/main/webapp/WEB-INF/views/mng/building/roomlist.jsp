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
				<button type="submit" class="btn btn-sm btn-soft-secondary transition-3d-hover">삭제</button>
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
                      	전세/월세
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	금액
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	입주가능일
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	평수(㎡ 기준)
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
              </thead>
              
              
              
              
              <c:if test="${cnt >0}">
              	<c:forEach var="dto" items="${dtos}" varStatus="status">
	              		<tbody class="font-size-1">
			              	<tr>
			                  <td class="align-middle">
			                    <div class="custom-control custom-checkbox d-flex align-items-center">
			                      <input type="checkbox" class="custom-control-input" id="invoiceCheckbox0${status.count}">
			                      <label class="custom-control-label" for="invoiceCheckbox0${status.count}">
			                        <span class="text-hide">Checkbox</span>
			                      </label>
			                    </div>
			                  </td>
			                  <td class="align-middle text-secondary font-weight-normal "><a href="${path}/mng/roomdetail?r_code=${dto.r_code}">${dto.r_code}</a></td>
			                  <td class="align-middle text-secondary font-weight-normal ">${dto.r_name}</td>
			                  <td class="align-middle text-secondary font-weight-normal ">${dto.r_type}</td>
			                  <td class="align-middle text-secondary font-weight-normal ">${dto.r_price}</td>
			                  <td class="align-middle text-secondary font-weight-normal ">${dto.r_able_date}</td>
			                  <td class="align-middle text-primary">${dto.r_area}</td>
	              		</tbody>
              	</c:forEach>
              </c:if>
             
              
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
</main>
<!-- ========== END MAIN ========== -->
<%@ include file="../../common/footer.jsp" %>

<script type="text/javascript">
	$(function(){
		$("#invoiceToggleAllCheckbox").click(function(){
			$(".custom-control-input").prop("checked", this.checked);
		});
	});
</script>
</body>
