<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp" %>
<%@ include file="../../common/header.jsp" %>
<%@ include file="../../common/foodMiddleHeaderManage.jsp" %>
 
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
                    <div class="custom-control custom-checkbox d-flex align-items-center">
                      <input type="checkbox" class="custom-control-input" id="invoiceToggleAllCheckbox">
                      <label class="custom-control-label" for="invoiceToggleAllCheckbox">
                        <span class="text-hide">Checkbox</span>
                      </label>
                    </div>
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
                      	시간
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
              	<c:forEach var="ovo" items="" varStatus="status">
              		<tr class="text-uppercase font-size-1">
	                  <th scope="col">
	                    <div class="custom-control custom-checkbox d-flex align-items-center">
	                      <input type="checkbox" class="custom-control-input" id="invoiceCheckbox0${status.count}">
	                      <label class="custom-control-label" for="invoiceCheckbox0${status.count}">
	                        <span class="text-hide">Checkbox</span>
	                      </label>
	                    </div>
	                  </th>
	                  <td><a href="orderList?userid=">${ovo.userid}</a></td>
	                  <td>${ovo.f_name}</td>
	                  <td>${ovo.f_amount}</td>
	                  <td>${ovo.f_regidate}</td>
	                  <td>${ovo.f_status}</td>
	                </tr>
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
</main>

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
</script>
<!-- ========== END MAIN ========== -->
<%@ include file="../../common/footer.jsp" %>
</body>