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
                      	매장명
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
                      	입주일
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	계약만료일
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	임대금액
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	미납금액
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
              </thead>
              <tbody class="font-size-1">
              	<tr>
                  <td class="align-middle">
                    <div class="custom-control custom-checkbox d-flex align-items-center">
                      <input type="checkbox" class="custom-control-input" id="invoiceCheckbox01">
                      <label class="custom-control-label" for="invoiceCheckbox01">
                        <span class="text-hide">Checkbox</span>
                      </label>
                    </div>
                  </td>
                  <td class="align-middle text-secondary font-weight-normal ">교촌치킨</td>
                  <td class="align-middle text-secondary font-weight-normal ">101호</td>
                  <td class="align-middle text-secondary font-weight-normal ">2019/08/12</td>
                  <td class="align-middle text-secondary font-weight-normal ">2019/09/11</td>
                  <td class="align-middle text-secondary font-weight-normal ">1,500,000</td>
                  <td class="align-middle text-primary">1,500,000</td>
              </tbody>
            </table>
          </div>
          <!-- End Activity Table -->
          <!-- Pagination -->
          <div class="d-flex align-items-center">
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
          <!-- End Pagination -->
        </div>
      </div>
      <br><br>
       <!-- Buttons -->
            <button type="submit" class="btn btn-sm btn-primary transition-3d-hover mr-1" onclick="window.location='couponUpload'">등록</button>
            <button type="submit" class="btn btn-sm btn-soft-secondary transition-3d-hover">삭제</button>
            <!-- End Buttons -->
    </div>
  </div>
  <!-- End Content Section -->
</main>
<!-- ========== END MAIN ========== -->
<%@ include file="../../common/footer.jsp" %>
</body>