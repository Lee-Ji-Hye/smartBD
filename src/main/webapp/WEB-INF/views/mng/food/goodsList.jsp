<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp" %>
<%@ include file="../../common/header.jsp" %>
<%@ include file="../../common/foodMiddleHeaderManage.jsp" %>
<!-- ========== MAIN ========== -->
<form method="post" name="goods" action="${path}/cp_manager/menumn/del?${_csrf.parameterName}=${_csrf.token}" onsubmit="return checkBeforeDelete();">
<main id="content" role="main">
  <div class="bg-light">
    <div class="container space-2">
      <div class="card">
        <div class="card-header py-2 px-0 mx-4">
        	<!-- Title & Settings -->
              <div class="d-flex justify-content-between align-items-center">
                <h4 class="h4 mb-0">Goods List</h4>
              </div>
              <!-- End Title & Settings -->
          <!-- Activity Menu -->
          <div class="row justify-content-sm-between align-items-sm-center">
          <div class="col-md-12">
           	<!-- Buttons -->
           		<button type="button" class="btn btn-sm btn-primary transition-3d-hover mr-1" style="float: right;" onclick="window.location='${path}/cp_manager/menumn/inst'">등록</button>
   				<button type="submit" class="btn btn-sm btn-soft-secondary transition-3d-hover " style="float: right; margin-right:10px;">삭제</button>
   			<!-- End Buttons -->
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
                    <div class="custom-control custom-checkbox d-flex align-items-center">
                      <input type="checkbox" class="custom-control-input" name="f_codeOne" id="invoiceToggleAllCheckbox" onchange="goodsChkAll();">
                      <label class="custom-control-label" for="invoiceToggleAllCheckbox">
                        <span class="text-hide">Checkbox</span>
                      </label>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
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
                      	분류
                      </div>
                 </th>
                 <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	아이콘
                      </div>
                 </th>
                </tr>
              </thead>
              <tbody class="font-size-1">
            <c:forEach var="dto" items="${food}" varStatus="status">
              	<tr class="text-uppercase font-size-1">
                  <td class="align-middle">
                    <div class="custom-control custom-checkbox d-flex align-items-center">
                      <input type="checkbox" class="custom-control-input" name="f_code" id="invoiceCheckbox0${status.count}">
                      <label class="custom-control-label" for="invoiceCheckbox0${status.count}">
                        <span class="text-hide">Checkbox</span>
                      </label>
                    </div>
                  </td>
                  <td class="align-middle text-secondary font-weight-normal">${dto.f_name}</td>
                  <td class="align-middle">${dto.f_price}</td>
                  <td class="align-middle text-primary">${dto.f_type}</td>
                  <td class="align-middle text-secondary">${dto.f_icon}</td>
                 <!--  <td class="align-middle text-danger">상태완료</td> -->
                </tr>
               </c:forEach>
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
     
  <!-- End Content Section -->
 </div>
</main>
</form>
<script type="text/javascript">
//쿠폰 목록 전체 체크
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
</script>
<!-- ========== END MAIN ========== -->
<%@ include file="../../common/footer.jsp" %>
</body>