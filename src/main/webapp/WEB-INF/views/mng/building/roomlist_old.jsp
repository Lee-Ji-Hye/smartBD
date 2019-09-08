<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp" %>
<%@ include file="../../common/header.jsp" %>
	<!-- ========== MAIN ========== -->
	<main id="content" role="main">
		<div style="width:100%"><h4>매물 > 리스트</h4></div>
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
		                  <input type="text" class="js-range-datepicker form-control bg-white rounded-right flatpickr-input" data-rp-wrapper="#datepickerWrapper" data-rp-type="range" data-rp-date-format="d M Y" data-rp-default-date="[&quot;05 Jul 2018&quot;, &quot;19 Jul 2018&quot;]" data-rp-is-disable-future-dates="true" readonly="readonly" style="width: 187.5px;">
		                <div class="flatpickr-calendar rangeMode animate showTimeInput" tabindex="-1"><div class="flatpickr-months"><span class="flatpickr-prev-month"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 17 17"><g></g><path d="M5.207 8.471l7.146 7.147-0.707 0.707-7.853-7.854 7.854-7.853 0.707 0.707-7.147 7.146z"></path></svg></span><div class="flatpickr-month"><div class="flatpickr-current-month"><span class="cur-month">July </span><div class="numInputWrapper"><input class="numInput cur-year" type="text" pattern="\d*" tabindex="-1" aria-label="Year" data-max="2019"><span class="arrowUp"></span><span class="arrowDown"></span></div></div></div><span class="flatpickr-next-month"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 17 17"><g></g><path d="M13.207 8.472l-7.854 7.854-0.707-0.707 7.146-7.146-7.146-7.148 0.707-0.707 7.854 7.854z"></path></svg></span></div><div class="flatpickr-innerContainer"><div class="flatpickr-rContainer"><div class="flatpickr-weekdays"><div class="flatpickr-weekdaycontainer">
		      <span class="flatpickr-weekday">
		        Mo</span><span class="flatpickr-weekday">Tu</span><span class="flatpickr-weekday">We</span><span class="flatpickr-weekday">Th</span><span class="flatpickr-weekday">Fr</span><span class="flatpickr-weekday">Sa</span><span class="flatpickr-weekday">Su
		      </span>
		      </div></div><div class="flatpickr-days" tabindex="-1"><div class="dayContainer"><span class="flatpickr-day prevMonthDay" aria-label="June 25, 2018" tabindex="-1">25</span><span class="flatpickr-day prevMonthDay" aria-label="June 26, 2018" tabindex="-1">26</span><span class="flatpickr-day prevMonthDay" aria-label="June 27, 2018" tabindex="-1">27</span><span class="flatpickr-day prevMonthDay" aria-label="June 28, 2018" tabindex="-1">28</span><span class="flatpickr-day prevMonthDay" aria-label="June 29, 2018" tabindex="-1">29</span><span class="flatpickr-day prevMonthDay" aria-label="June 30, 2018" tabindex="-1">30</span><span class="flatpickr-day " aria-label="July 1, 2018" tabindex="-1">1</span><span class="flatpickr-day " aria-label="July 2, 2018" tabindex="-1">2</span><span class="flatpickr-day " aria-label="July 3, 2018" tabindex="-1">3</span><span class="flatpickr-day " aria-label="July 4, 2018" tabindex="-1">4</span><span class="flatpickr-day selected startRange" aria-label="July 5, 2018" tabindex="-1">5</span><span class="flatpickr-day inRange" aria-label="July 6, 2018" tabindex="-1">6</span><span class="flatpickr-day inRange" aria-label="July 7, 2018" tabindex="-1">7</span><span class="flatpickr-day inRange" aria-label="July 8, 2018" tabindex="-1">8</span><span class="flatpickr-day inRange" aria-label="July 9, 2018" tabindex="-1">9</span><span class="flatpickr-day inRange" aria-label="July 10, 2018" tabindex="-1">10</span><span class="flatpickr-day inRange" aria-label="July 11, 2018" tabindex="-1">11</span><span class="flatpickr-day inRange" aria-label="July 12, 2018" tabindex="-1">12</span><span class="flatpickr-day inRange" aria-label="July 13, 2018" tabindex="-1">13</span><span class="flatpickr-day inRange" aria-label="July 14, 2018" tabindex="-1">14</span><span class="flatpickr-day inRange" aria-label="July 15, 2018" tabindex="-1">15</span><span class="flatpickr-day inRange" aria-label="July 16, 2018" tabindex="-1">16</span><span class="flatpickr-day inRange" aria-label="July 17, 2018" tabindex="-1">17</span><span class="flatpickr-day inRange" aria-label="July 18, 2018" tabindex="-1">18</span><span class="flatpickr-day selected endRange" aria-label="July 19, 2018" tabindex="-1">19</span><span class="flatpickr-day " aria-label="July 20, 2018" tabindex="-1">20</span><span class="flatpickr-day " aria-label="July 21, 2018" tabindex="-1">21</span><span class="flatpickr-day " aria-label="July 22, 2018" tabindex="-1">22</span><span class="flatpickr-day " aria-label="July 23, 2018" tabindex="-1">23</span><span class="flatpickr-day " aria-label="July 24, 2018" tabindex="-1">24</span><span class="flatpickr-day " aria-label="July 25, 2018" tabindex="-1">25</span><span class="flatpickr-day " aria-label="July 26, 2018" tabindex="-1">26</span><span class="flatpickr-day " aria-label="July 27, 2018" tabindex="-1">27</span><span class="flatpickr-day " aria-label="July 28, 2018" tabindex="-1">28</span><span class="flatpickr-day " aria-label="July 29, 2018" tabindex="-1">29</span><span class="flatpickr-day " aria-label="July 30, 2018" tabindex="-1">30</span><span class="flatpickr-day " aria-label="July 31, 2018" tabindex="-1">31</span><span class="flatpickr-day nextMonthDay" aria-label="August 1, 2018" tabindex="-1">1</span><span class="flatpickr-day nextMonthDay" aria-label="August 2, 2018" tabindex="-1">2</span><span class="flatpickr-day nextMonthDay" aria-label="August 3, 2018" tabindex="-1">3</span><span class="flatpickr-day nextMonthDay" aria-label="August 4, 2018" tabindex="-1">4</span><span class="flatpickr-day nextMonthDay" aria-label="August 5, 2018" tabindex="-1">5</span></div></div></div></div></div></div>
		                <!-- End Datepicker -->
		              </div>
		
		              <div class="col-md-6">
		                <div class="d-flex"> 추가+
		                  <div class="mr-2">
		                    	<!-- 추가적인 검색 항목들 넣으려면 여기에 넣기 --> 
		                  </div>
		
		                  <!-- Search -->
		                  <div class="js-focus-state input-group input-group-sm">
		                    <div class="input-group-prepend">
		                      <span class="input-group-text" id="searchActivities">
		                        <!-- <span class="fas fa-search"></span> -->
		                        <img src="${resourceImg}/icon/search_icon.PNG"/>
		                      </span>
		                    </div>
		                    <input id="datatableSearch" type="email" class="form-control" placeholder="Search activities" aria-label="Search activities" aria-describedby="searchActivities">
		                  </div>
		                  <!-- End Search -->
		                </div>
		              </div>
		            </div>
		            <!-- End Activity Menu -->
		          </div>
		<!-- <th>No</th>
					<th>매물코드</th>
					<th>지역</th>
					<th>도시</th>
					<th>매물명</th>
					<th>종류</th>
					<th>타입</th>
					<th>층</th>
					<th>면적</th>
					<th>방 개수</th>
					<th>보증금/전세/매매</th>
					<th>월세</th>
					<th>등록일</th>
					<th>추가</th> -->
		          <div class="card-body p-4">
		            <!-- Activity Table -->
		            <div class="table-responsive-md u-datatable">
		              <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper no-footer"><div class="dataTables_length" id="DataTables_Table_0_length"><label>Show <select name="DataTables_Table_0_length" aria-controls="DataTables_Table_0" class=""><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> entries</label></div><div id="DataTables_Table_0_filter" class="dataTables_filter"><label>Search:<input type="search" class="" placeholder="" aria-controls="DataTables_Table_0"></label></div><table class="js-datatable table table-borderless u-datatable__striped u-datatable__content u-datatable__trigger mb-5 dataTable no-footer" data-dt-info="#datatableInfo" data-dt-search="#datatableSearch" data-dt-entries="#datatableEntries" data-dt-page-length="12" data-dt-is-responsive="false" data-dt-is-show-paging="true" data-dt-details-invoker=".js-datatabale-details" data-dt-select-all-control="#invoiceToggleAllCheckbox" data-dt-pagination="datatablePagination" data-dt-pagination-classes="pagination mb-0" data-dt-pagination-items-classes="page-item" data-dt-pagination-links-classes="page-link" data-dt-pagination-next-classes="page-item" data-dt-pagination-next-link-classes="page-link" data-dt-pagination-next-link-markup="<span aria-hidden=&quot;true&quot;>»</span>" data-dt-pagination-prev-classes="page-item" data-dt-pagination-prev-link-classes="page-link" data-dt-pagination-prev-link-markup="<span aria-hidden=&quot;true&quot;>«</span>" id="DataTables_Table_0" role="grid">
		                <thead>
		                  <tr class="text-uppercase font-size-1" role="row">
		                  <th scope="col" class="sorting_asc" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending" style="width: 66px;">
		                      <div class="custom-control custom-checkbox d-flex align-items-center">
		                        <input type="checkbox" class="custom-control-input" id="invoiceToggleAllCheckbox">
		                        <label class="custom-control-label" for="invoiceToggleAllCheckbox">
		                          <span class="text-hide">Checkbox</span>
		                        </label>
		                      </div>
		                    </th><th scope="col" class="font-weight-medium sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1"style="width: 151px;">
		                      <div class="d-flex justify-content-between align-items-center">
		                        	호수
		                       <!--  <div class="ml-2">
		                          <span class="fas fa-angle-up u-datatable__thead-icon"></span>
		                          <span class="fas fa-angle-down u-datatable__thead-icon"></span>
		                        </div> -->
		                      </div>
		                    </th><th scope="col" class="font-weight-medium sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 248.5px;">
		                      <div class="d-flex justify-content-between align-items-center">
		                        	상호명
		                        <!-- <div class="ml-2">
		                          <span class="fas fa-angle-up u-datatable__thead-icon"></span>
		                          <span class="fas fa-angle-down u-datatable__thead-icon"></span>
		                        </div> -->
		                      </div>
		                    </th><th scope="col" class="font-weight-medium sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 163.5px;">
		                      <div class="d-flex justify-content-between align-items-center">
		                        	연락처
		                        <!-- <div class="ml-2">
		                          <span class="fas fa-angle-up u-datatable__thead-icon"></span>
		                          <span class="fas fa-angle-down u-datatable__thead-icon"></span>
		                        </div> -->
		                      </div>
		                    </th><th scope="col" class="font-weight-medium sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 117.25px;">
		                      <div class="d-flex justify-content-between align-items-center">
		                        	임대료
		                        <!-- <div class="ml-2">
		                          <span class="fas fa-angle-up u-datatable__thead-icon"></span>
		                          <span class="fas fa-angle-down u-datatable__thead-icon"></span>
		                        </div> -->
		                      </div>
		                    </th><th scope="col" class="font-weight-medium sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 169.75px;">
		                      <div class="d-flex justify-content-between align-items-center">
		                        	관리비
		                       <!--  <div class="ml-2">
		                          <span class="fas fa-angle-up u-datatable__thead-icon"></span>
		                          <span class="fas fa-angle-down u-datatable__thead-icon"></span>
		                        </div> -->
		                      </div>
		                    </th>
		                    <th scope="col" class="font-weight-medium sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 169.75px;">
		                      <div class="d-flex justify-content-between align-items-center">
		                        	수금액
		                        <!-- <div class="ml-2">
		                          <span class="fas fa-angle-up u-datatable__thead-icon"></span>
		                          <span class="fas fa-angle-down u-datatable__thead-icon"></span>
		                        </div> -->
		                      </div>
		                    </th>
		                    <th scope="col" class="font-weight-medium sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 169.75px;">
		                      <div class="d-flex justify-content-between align-items-center">
		                        	미수금
		                        <!-- <div class="ml-2">
		                          <span class="fas fa-angle-up u-datatable__thead-icon"></span>
		                          <span class="fas fa-angle-down u-datatable__thead-icon"></span>
		                        </div> -->
		                      </div>
		                    </th>
		                    </tr>
		                </thead>
		                <tbody class="font-size-1">
		                <tr class="js-datatabale-details odd" data-details="
		                    <div class=&quot;border rounded p-5&quot;>
		                      <h4 class=&quot;h3&quot;>Invoice</h4>
		
		                      <div class=&quot;row mb-6&quot;>
		                        <div class=&quot;col-3&quot;>
		                          <span class=&quot;text-secondary&quot;>Date:</span>
		                          <span class=&quot;font-weight-medium&quot;>05 May, 2018</span>
		                        </div>
		                        <div class=&quot;col-3&quot;>
		                          <span class=&quot;text-secondary&quot;>Merchant:</span>
		                          <span class=&quot;font-weight-medium&quot;>Spotify</span>
		                        </div>
		                        <div class=&quot;col-6&quot;>
		                          <span class=&quot;text-secondary&quot;>Authorization code:</span>
		                          <span class=&quot;font-weight-medium&quot;>128746739419</span>
		                        </div>
		                      </div>
		
		                      <div class=&quot;row&quot;>
		                        <div class=&quot;col-sm-6 mb-3 mb-sm-0&quot;>
		                          <h5 class=&quot;text-dark font-size-1 text-uppercase&quot;>Billing address:</h5>
		                          <address class=&quot;text-secondary&quot;>
		                            <h6 class=&quot;h5 text-dark&quot;>Spotify</h6>
		                            Flat 60, Ross Green, South Lilyberg, Q7M 8ZV
		                          </address>
		                        </div>
		
		                        <div class=&quot;col-sm-6&quot;>
		                          <h5 class=&quot;text-dark font-size-1 text-uppercase&quot;>Client info:</h5>
		                          <ul class=&quot;list-unstyled mb-0&quot;>
		                            <li class=&quot;mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>First name:</span>
		                              <span class=&quot;font-weight-medium&quot;>Natalie</span>
		                            </li>
		                            <li class=&quot;mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Last name:</span>
		                              <span class=&quot;font-weight-medium&quot;>Curtis</span>
		                            </li>
		                            <li class=&quot;mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Country:</span>
		                              <span class=&quot;font-weight-medium&quot;>England</span>
		                            </li>
		                          </ul>
		                        </div>
		                      </div>
		
		                      <div class=&quot;row justify-content-end mb-4&quot;>
		                        <div class=&quot;col-sm-6&quot;>
		                          <hr class=&quot;my-4&quot;>
		
		                          <h5 class=&quot;text-dark font-size-1 text-uppercase&quot;>Transaction details:</h5>
		                          <ul class=&quot;list-unstyled mb-0&quot;>
		                            <li class=&quot;d-flex justify-content-between align-items-center mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Transaction amount</span>
		                              <span class=&quot;font-weight-medium&quot;>$9.00</span>
		                            </li>
		                            <li class=&quot;d-flex justify-content-between align-items-center mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Fee</span>
		                              <span class=&quot;font-weight-medium&quot;>$0.50</span>
		                            </li>
		                            <li class=&quot;d-flex justify-content-between align-items-center mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Total amount</span>
		                              <span class=&quot;text-primary font-weight-medium&quot;>$9.37</span>
		                            </li>
		                          </ul>
		                        </div>
		                      </div>
		
		                      <ul class=&quot;list-inline mb-0&quot;>
		                        <li class=&quot;list-inline-item u-ver-divider pr-3 mr-3&quot;>
		                          <a href=&quot;#&quot;>
		                            <span class=&quot;fas fa-file-word text-secondary mr-1&quot;></span>
		                            Download invoice
		                          </a>
		                        </li>
		                        <li class=&quot;list-inline-item&quot;>
		                          <a href=&quot;#&quot;>
		                            <span class=&quot;fas fa-print text-secondary mr-1&quot;></span>
		                            Print details
		                          </a>
		                        </li>
		                      </ul>
		                    </div>" role="row">
		                    <td class="align-middle sorting_1">
		                      <div class="custom-control custom-checkbox d-flex align-items-center">
		                        <input type="checkbox" class="custom-control-input" id="invoiceCheckbox01">
		                        <label class="custom-control-label" for="invoiceCheckbox01">
		                          <span class="text-hide">Checkbox</span>
		                        </label>
		                      </div>
		                    </td>
		                    <td class="align-middle text-secondary font-weight-normal u-datatable__trigger-icon">FR001</td>
		                    <td class="align-middle">
		                      <div class="media align-items-center">
		                        <span class="btn btn-sm btn-icon btn-soft-success rounded-circle mr-2">
		                          <span class="btn-icon__inner font-weight-medium">S</span>
		                        </span>
		                        <span>Spotify</span>
		                      </div>
		                    </td>
		                    <td class="align-middle text-primary">$9.00</td>
		                    <td class="align-middle text-secondary">05 May</td>
		                    <td class="align-middle text-danger">Rejected</td>
		                  </tr><tr class="js-datatabale-details even" data-details="
		                    <div class=&quot;border rounded p-5&quot;>
		                      <h4 class=&quot;h3&quot;>Invoice</h4>
		
		                      <div class=&quot;row mb-6&quot;>
		                        <div class=&quot;col-3&quot;>
		                          <span class=&quot;text-secondary&quot;>Date:</span>
		                          <span class=&quot;font-weight-medium&quot;>12 May, 2018</span>
		                        </div>
		                        <div class=&quot;col-3&quot;>
		                          <span class=&quot;text-secondary&quot;>Merchant:</span>
		                          <span class=&quot;font-weight-medium&quot;>Dropbox</span>
		                        </div>
		                        <div class=&quot;col-6&quot;>
		                          <span class=&quot;text-secondary&quot;>Authorization code:</span>
		                          <span class=&quot;font-weight-medium&quot;>901274182319</span>
		                        </div>
		                      </div>
		
		                      <div class=&quot;row&quot;>
		                        <div class=&quot;col-sm-6 mb-3 mb-sm-0&quot;>
		                          <h5 class=&quot;text-dark font-size-1 text-uppercase&quot;>Billing address:</h5>
		                          <address class=&quot;text-secondary&quot;>
		                            <h6 class=&quot;h5 text-dark&quot;>Dropbox</h6>
		                            Flat 60, Ross Green, South Lilyberg, Q7M 8ZV
		                          </address>
		                        </div>
		
		                        <div class=&quot;col-sm-6&quot;>
		                          <h5 class=&quot;text-dark font-size-1 text-uppercase&quot;>Client info:</h5>
		                          <ul class=&quot;list-unstyled mb-0&quot;>
		                            <li class=&quot;mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>First name:</span>
		                              <span class=&quot;font-weight-medium&quot;>Natalie</span>
		                            </li>
		                            <li class=&quot;mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Last name:</span>
		                              <span class=&quot;font-weight-medium&quot;>Curtis</span>
		                            </li>
		                            <li class=&quot;mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Country:</span>
		                              <span class=&quot;font-weight-medium&quot;>England</span>
		                            </li>
		                          </ul>
		                        </div>
		                      </div>
		
		                      <div class=&quot;row justify-content-end mb-4&quot;>
		                        <div class=&quot;col-sm-6&quot;>
		                          <hr class=&quot;my-4&quot;>
		
		                          <h5 class=&quot;text-dark font-size-1 text-uppercase&quot;>Transaction details:</h5>
		                          <ul class=&quot;list-unstyled mb-0&quot;>
		                            <li class=&quot;d-flex justify-content-between align-items-center mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Transaction amount</span>
		                              <span class=&quot;font-weight-medium&quot;>$257.93</span>
		                            </li>
		                            <li class=&quot;d-flex justify-content-between align-items-center mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Fee</span>
		                              <span class=&quot;font-weight-medium&quot;>$0.50</span>
		                            </li>
		                            <li class=&quot;d-flex justify-content-between align-items-center mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Total amount</span>
		                              <span class=&quot;text-primary font-weight-medium&quot;>$257.43</span>
		                            </li>
		                          </ul>
		                        </div>
		                      </div>
		
		                      <ul class=&quot;list-inline mb-0&quot;>
		                        <li class=&quot;list-inline-item u-ver-divider pr-3 mr-3&quot;>
		                          <a href=&quot;#&quot;>
		                            <span class=&quot;fas fa-file-word text-secondary mr-1&quot;></span>
		                            Download invoice
		                          </a>
		                        </li>
		                        <li class=&quot;list-inline-item&quot;>
		                          <a href=&quot;#&quot;>
		                            <span class=&quot;fas fa-print text-secondary mr-1&quot;></span>
		                            Print details
		                          </a>
		                        </li>
		                      </ul>
		                    </div>" role="row">
		                    <td class="align-middle sorting_1">
		                      <div class="custom-control custom-checkbox d-flex align-items-center">
		                        <input type="checkbox" class="custom-control-input" id="invoiceCheckbox02">
		                        <label class="custom-control-label" for="invoiceCheckbox02">
		                          <span class="text-hide">Checkbox</span>
		                        </label>
		                      </div>
		                    </td>
		                    <td class="align-middle text-secondary font-weight-normal u-datatable__trigger-icon">FR002</td>
		                    <td class="align-middle">
		                      <div class="media align-items-center">
		                        <span class="btn btn-sm btn-icon btn-soft-primary rounded-circle mr-2">
		                          <span class="btn-icon__inner font-weight-medium">D</span>
		                        </span>
		                        <span>Dropbox</span>
		                      </div>
		                    </td>
		                    <td class="align-middle text-primary">$257.93</td>
		                    <td class="align-middle text-secondary">12 May</td>
		                    <td class="align-middle text-success">Completed</td>
		                  </tr><tr class="js-datatabale-details odd" data-details="
		                    <div class=&quot;border rounded p-5&quot;>
		                      <h4 class=&quot;h3&quot;>Invoice</h4>
		
		                      <div class=&quot;row mb-6&quot;>
		                        <div class=&quot;col-3&quot;>
		                          <span class=&quot;text-secondary&quot;>Date:</span>
		                          <span class=&quot;font-weight-medium&quot;>15 May, 2018</span>
		                        </div>
		                        <div class=&quot;col-3&quot;>
		                          <span class=&quot;text-secondary&quot;>Merchant:</span>
		                          <span class=&quot;font-weight-medium&quot;>Google</span>
		                        </div>
		                        <div class=&quot;col-6&quot;>
		                          <span class=&quot;text-secondary&quot;>Authorization code:</span>
		                          <span class=&quot;font-weight-medium&quot;>9241291229</span>
		                        </div>
		                      </div>
		
		                      <div class=&quot;row&quot;>
		                        <div class=&quot;col-sm-6 mb-3 mb-sm-0&quot;>
		                          <h5 class=&quot;text-dark font-size-1 text-uppercase&quot;>Billing address:</h5>
		                          <address class=&quot;text-secondary&quot;>
		                            <h6 class=&quot;h5 text-dark&quot;>Google</h6>
		                            Flat 60, Ross Green, South Lilyberg, Q7M 8ZV
		                          </address>
		                        </div>
		
		                        <div class=&quot;col-sm-6&quot;>
		                          <h5 class=&quot;text-dark font-size-1 text-uppercase&quot;>Client info:</h5>
		                          <ul class=&quot;list-unstyled mb-0&quot;>
		                            <li class=&quot;mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>First name:</span>
		                              <span class=&quot;font-weight-medium&quot;>Natalie</span>
		                            </li>
		                            <li class=&quot;mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Last name:</span>
		                              <span class=&quot;font-weight-medium&quot;>Curtis</span>
		                            </li>
		                            <li class=&quot;mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Country:</span>
		                              <span class=&quot;font-weight-medium&quot;>England</span>
		                            </li>
		                          </ul>
		                        </div>
		                      </div>
		
		                      <div class=&quot;row justify-content-end mb-4&quot;>
		                        <div class=&quot;col-sm-6&quot;>
		                          <hr class=&quot;my-4&quot;>
		
		                          <h5 class=&quot;text-dark font-size-1 text-uppercase&quot;>Transaction details:</h5>
		                          <ul class=&quot;list-unstyled mb-0&quot;>
		                            <li class=&quot;d-flex justify-content-between align-items-center mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Transaction amount</span>
		                              <span class=&quot;font-weight-medium&quot;>441.49 USD</span>
		                            </li>
		                            <li class=&quot;d-flex justify-content-between align-items-center mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Fee</span>
		                              <span class=&quot;font-weight-medium&quot;>$0.50</span>
		                            </li>
		                            <li class=&quot;d-flex justify-content-between align-items-center mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Total amount</span>
		                              <span class=&quot;text-primary font-weight-medium&quot;>441.99 USD</span>
		                            </li>
		                          </ul>
		                        </div>
		                      </div>
		
		                      <ul class=&quot;list-inline mb-0&quot;>
		                        <li class=&quot;list-inline-item u-ver-divider pr-3 mr-3&quot;>
		                          <a href=&quot;#&quot;>
		                            <span class=&quot;fas fa-file-word text-secondary mr-1&quot;></span>
		                            Download invoice
		                          </a>
		                        </li>
		                        <li class=&quot;list-inline-item&quot;>
		                          <a href=&quot;#&quot;>
		                            <span class=&quot;fas fa-print text-secondary mr-1&quot;></span>
		                            Print details
		                          </a>
		                        </li>
		                      </ul>
		                    </div>" role="row">
		                    <td class="align-middle sorting_1">
		                      <div class="custom-control custom-checkbox d-flex align-items-center">
		                        <input type="checkbox" class="custom-control-input" id="invoiceCheckbox03">
		                        <label class="custom-control-label" for="invoiceCheckbox03">
		                          <span class="text-hide">Checkbox</span>
		                        </label>
		                      </div>
		                    </td>
		                    <td class="align-middle text-secondary font-weight-normal u-datatable__trigger-icon">FR003</td>
		                    <td class="align-middle">
		                      <div class="media align-items-center">
		                        <span class="btn btn-sm btn-icon btn-soft-danger rounded-circle mr-2">
		                          <span class="btn-icon__inner font-weight-medium">G</span>
		                        </span>
		                        <span>Google</span>
		                      </div>
		                    </td>
		                    <td class="align-middle text-primary">$441.99</td>
		                    <td class="align-middle text-secondary">15 May</td>
		                    <td class="align-middle text-success">Completed</td>
		                  </tr><tr class="js-datatabale-details even" data-details="
		                    <div class=&quot;border rounded p-5&quot;>
		                      <h4 class=&quot;h3&quot;>Invoice</h4>
		
		                      <div class=&quot;row mb-6&quot;>
		                        <div class=&quot;col-3&quot;>
		                          <span class=&quot;text-secondary&quot;>Date:</span>
		                          <span class=&quot;font-weight-medium&quot;>01 Jun, 2018</span>
		                        </div>
		                        <div class=&quot;col-3&quot;>
		                          <span class=&quot;text-secondary&quot;>Merchant:</span>
		                          <span class=&quot;font-weight-medium&quot;>FrontApp</span>
		                        </div>
		                        <div class=&quot;col-6&quot;>
		                          <span class=&quot;text-secondary&quot;>Authorization code:</span>
		                          <span class=&quot;font-weight-medium&quot;>4191239108931</span>
		                        </div>
		                      </div>
		
		                      <div class=&quot;row&quot;>
		                        <div class=&quot;col-sm-6 mb-3 mb-sm-0&quot;>
		                          <h5 class=&quot;text-dark font-size-1 text-uppercase&quot;>Billing address:</h5>
		                          <address class=&quot;text-secondary&quot;>
		                            <h6 class=&quot;h5 text-dark&quot;>FrontApp</h6>
		                            Flat 60, Ross Green, South Lilyberg, Q7M 8ZV
		                          </address>
		                        </div>
		
		                        <div class=&quot;col-sm-6&quot;>
		                          <h5 class=&quot;text-dark font-size-1 text-uppercase&quot;>Client info:</h5>
		                          <ul class=&quot;list-unstyled mb-0&quot;>
		                            <li class=&quot;mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>First name:</span>
		                              <span class=&quot;font-weight-medium&quot;>Natalie</span>
		                            </li>
		                            <li class=&quot;mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Last name:</span>
		                              <span class=&quot;font-weight-medium&quot;>Curtis</span>
		                            </li>
		                            <li class=&quot;mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Country:</span>
		                              <span class=&quot;font-weight-medium&quot;>England</span>
		                            </li>
		                          </ul>
		                        </div>
		                      </div>
		
		                      <div class=&quot;row justify-content-end mb-4&quot;>
		                        <div class=&quot;col-sm-6&quot;>
		                          <hr class=&quot;my-4&quot;>
		
		                          <h5 class=&quot;text-dark font-size-1 text-uppercase&quot;>Transaction details:</h5>
		                          <ul class=&quot;list-unstyled mb-0&quot;>
		                            <li class=&quot;d-flex justify-content-between align-items-center mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Transaction amount</span>
		                              <span class=&quot;font-weight-medium&quot;>98.50 USD</span>
		                            </li>
		                            <li class=&quot;d-flex justify-content-between align-items-center mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Fee</span>
		                              <span class=&quot;font-weight-medium&quot;>$0.50</span>
		                            </li>
		                            <li class=&quot;d-flex justify-content-between align-items-center mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Total amount</span>
		                              <span class=&quot;text-primary font-weight-medium&quot;>99.00 USD</span>
		                            </li>
		                          </ul>
		                        </div>
		                      </div>
		
		                      <ul class=&quot;list-inline mb-0&quot;>
		                        <li class=&quot;list-inline-item u-ver-divider pr-3 mr-3&quot;>
		                          <a href=&quot;#&quot;>
		                            <span class=&quot;fas fa-file-word text-secondary mr-1&quot;></span>
		                            Download invoice
		                          </a>
		                        </li>
		                        <li class=&quot;list-inline-item&quot;>
		                          <a href=&quot;#&quot;>
		                            <span class=&quot;fas fa-print text-secondary mr-1&quot;></span>
		                            Print details
		                          </a>
		                        </li>
		                      </ul>
		                    </div>" role="row">
		                    <td class="align-middle sorting_1">
		                      <div class="custom-control custom-checkbox d-flex align-items-center">
		                        <input type="checkbox" class="custom-control-input" id="invoiceCheckbox04">
		                        <label class="custom-control-label" for="invoiceCheckbox04">
		                          <span class="text-hide">Checkbox</span>
		                        </label>
		                      </div>
		                    </td>
		                    <td class="align-middle text-secondary font-weight-normal u-datatable__trigger-icon">FR004</td>
		                    <td class="align-middle">
		                      <div class="media align-items-center">
		                        <span class="btn btn-sm btn-icon btn-soft-primary rounded-circle mr-2">
		                          <span class="btn-icon__inner font-weight-medium">F</span>
		                        </span>
		                        <span>FrontApp</span>
		                      </div>
		                    </td>
		                    <td class="align-middle text-primary">$99.00</td>
		                    <td class="align-middle text-secondary">01 Jun</td>
		                    <td class="align-middle text-warning">Pending</td>
		                  </tr><tr class="js-datatabale-details odd" data-details="
		                    <div class=&quot;border rounded p-5&quot;>
		                      <h4 class=&quot;h3&quot;>Invoice</h4>
		
		                      <div class=&quot;row mb-6&quot;>
		                        <div class=&quot;col-3&quot;>
		                          <span class=&quot;text-secondary&quot;>Date:</span>
		                          <span class=&quot;font-weight-medium&quot;>02 Jun, 2018</span>
		                        </div>
		                        <div class=&quot;col-3&quot;>
		                          <span class=&quot;text-secondary&quot;>Merchant:</span>
		                          <span class=&quot;font-weight-medium&quot;>Slack</span>
		                        </div>
		                        <div class=&quot;col-6&quot;>
		                          <span class=&quot;text-secondary&quot;>Authorization code:</span>
		                          <span class=&quot;font-weight-medium&quot;>12901372109401</span>
		                        </div>
		                      </div>
		
		                      <div class=&quot;row&quot;>
		                        <div class=&quot;col-sm-6 mb-3 mb-sm-0&quot;>
		                          <h5 class=&quot;text-dark font-size-1 text-uppercase&quot;>Billing address:</h5>
		                          <address class=&quot;text-secondary&quot;>
		                            <h6 class=&quot;h5 text-dark&quot;>Slack</h6>
		                            Flat 60, Ross Green, South Lilyberg, Q7M 8ZV
		                          </address>
		                        </div>
		
		                        <div class=&quot;col-sm-6&quot;>
		                          <h5 class=&quot;text-dark font-size-1 text-uppercase&quot;>Client info:</h5>
		                          <ul class=&quot;list-unstyled mb-0&quot;>
		                            <li class=&quot;mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>First name:</span>
		                              <span class=&quot;font-weight-medium&quot;>Natalie</span>
		                            </li>
		                            <li class=&quot;mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Last name:</span>
		                              <span class=&quot;font-weight-medium&quot;>Curtis</span>
		                            </li>
		                            <li class=&quot;mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Country:</span>
		                              <span class=&quot;font-weight-medium&quot;>England</span>
		                            </li>
		                          </ul>
		                        </div>
		                      </div>
		
		                      <div class=&quot;row justify-content-end mb-4&quot;>
		                        <div class=&quot;col-sm-6&quot;>
		                          <hr class=&quot;my-4&quot;>
		
		                          <h5 class=&quot;text-dark font-size-1 text-uppercase&quot;>Transaction details:</h5>
		                          <ul class=&quot;list-unstyled mb-0&quot;>
		                            <li class=&quot;d-flex justify-content-between align-items-center mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Transaction amount</span>
		                              <span class=&quot;font-weight-medium&quot;>14.39 USD</span>
		                            </li>
		                            <li class=&quot;d-flex justify-content-between align-items-center mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Fee</span>
		                              <span class=&quot;font-weight-medium&quot;>$0.50</span>
		                            </li>
		                            <li class=&quot;d-flex justify-content-between align-items-center mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Total amount</span>
		                              <span class=&quot;text-primary font-weight-medium&quot;>14.89 USD</span>
		                            </li>
		                          </ul>
		                        </div>
		                      </div>
		
		                      <ul class=&quot;list-inline mb-0&quot;>
		                        <li class=&quot;list-inline-item u-ver-divider pr-3 mr-3&quot;>
		                          <a href=&quot;#&quot;>
		                            <span class=&quot;fas fa-file-word text-secondary mr-1&quot;></span>
		                            Download invoice
		                          </a>
		                        </li>
		                        <li class=&quot;list-inline-item&quot;>
		                          <a href=&quot;#&quot;>
		                            <span class=&quot;fas fa-print text-secondary mr-1&quot;></span>
		                            Print details
		                          </a>
		                        </li>
		                      </ul>
		                    </div>" role="row">
		                    <td class="align-middle sorting_1">
		                      <div class="custom-control custom-checkbox d-flex align-items-center">
		                        <input type="checkbox" class="custom-control-input" id="invoiceCheckbox05">
		                        <label class="custom-control-label" for="invoiceCheckbox05">
		                          <span class="text-hide">Checkbox</span>
		                        </label>
		                      </div>
		                    </td>
		                    <td class="align-middle text-secondary font-weight-normal u-datatable__trigger-icon">FR005</td>
		                    <td class="align-middle">
		                      <div class="media align-items-center">
		                        <span class="btn btn-sm btn-icon btn-soft-warning rounded-circle mr-2">
		                          <span class="btn-icon__inner font-weight-medium">S</span>
		                        </span>
		                        <span>Slack</span>
		                      </div>
		                    </td>
		                    <td class="align-middle text-primary">$14.89</td>
		                    <td class="align-middle text-secondary">02 Jun</td>
		                    <td class="align-middle text-danger">Rejected</td>
		                  </tr><tr class="js-datatabale-details even" data-details="
		                    <div class=&quot;border rounded p-5&quot;>
		                      <h4 class=&quot;h3&quot;>Invoice</h4>
		
		                      <div class=&quot;row mb-6&quot;>
		                        <div class=&quot;col-3&quot;>
		                          <span class=&quot;text-secondary&quot;>Date:</span>
		                          <span class=&quot;font-weight-medium&quot;>05 Jun, 2018</span>
		                        </div>
		                        <div class=&quot;col-3&quot;>
		                          <span class=&quot;text-secondary&quot;>Merchant:</span>
		                          <span class=&quot;font-weight-medium&quot;>Spotify</span>
		                        </div>
		                        <div class=&quot;col-6&quot;>
		                          <span class=&quot;text-secondary&quot;>Authorization code:</span>
		                          <span class=&quot;font-weight-medium&quot;>8723903814282</span>
		                        </div>
		                      </div>
		
		                      <div class=&quot;row&quot;>
		                        <div class=&quot;col-sm-6 mb-3 mb-sm-0&quot;>
		                          <h5 class=&quot;text-dark font-size-1 text-uppercase&quot;>Billing address:</h5>
		                          <address class=&quot;text-secondary&quot;>
		                            <h6 class=&quot;h5 text-dark&quot;>Spotify</h6>
		                            Flat 60, Ross Green, South Lilyberg, Q7M 8ZV
		                          </address>
		                        </div>
		
		                        <div class=&quot;col-sm-6&quot;>
		                          <h5 class=&quot;text-dark font-size-1 text-uppercase&quot;>Client info:</h5>
		                          <ul class=&quot;list-unstyled mb-0&quot;>
		                            <li class=&quot;mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>First name:</span>
		                              <span class=&quot;font-weight-medium&quot;>Natalie</span>
		                            </li>
		                            <li class=&quot;mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Last name:</span>
		                              <span class=&quot;font-weight-medium&quot;>Curtis</span>
		                            </li>
		                            <li class=&quot;mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Country:</span>
		                              <span class=&quot;font-weight-medium&quot;>England</span>
		                            </li>
		                          </ul>
		                        </div>
		                      </div>
		
		                      <div class=&quot;row justify-content-end mb-4&quot;>
		                        <div class=&quot;col-sm-6&quot;>
		                          <hr class=&quot;my-4&quot;>
		
		                          <h5 class=&quot;text-dark font-size-1 text-uppercase&quot;>Transaction details:</h5>
		                          <ul class=&quot;list-unstyled mb-0&quot;>
		                            <li class=&quot;d-flex justify-content-between align-items-center mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Transaction amount</span>
		                              <span class=&quot;font-weight-medium&quot;>8.50 USD</span>
		                            </li>
		                            <li class=&quot;d-flex justify-content-between align-items-center mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Fee</span>
		                              <span class=&quot;font-weight-medium&quot;>$0.50</span>
		                            </li>
		                            <li class=&quot;d-flex justify-content-between align-items-center mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Total amount</span>
		                              <span class=&quot;text-primary font-weight-medium&quot;>9.00 USD</span>
		                            </li>
		                          </ul>
		                        </div>
		                      </div>
		
		                      <ul class=&quot;list-inline mb-0&quot;>
		                        <li class=&quot;list-inline-item u-ver-divider pr-3 mr-3&quot;>
		                          <a href=&quot;#&quot;>
		                            <span class=&quot;fas fa-file-word text-secondary mr-1&quot;></span>
		                            Download invoice
		                          </a>
		                        </li>
		                        <li class=&quot;list-inline-item&quot;>
		                          <a href=&quot;#&quot;>
		                            <span class=&quot;fas fa-print text-secondary mr-1&quot;></span>
		                            Print details
		                          </a>
		                        </li>
		                      </ul>
		                    </div>" role="row">
		                    <td class="align-middle sorting_1">
		                      <div class="custom-control custom-checkbox d-flex align-items-center">
		                        <input type="checkbox" class="custom-control-input" id="invoiceCheckbox06">
		                        <label class="custom-control-label" for="invoiceCheckbox06">
		                          <span class="text-hide">Checkbox</span>
		                        </label>
		                      </div>
		                    </td>
		                    <td class="align-middle text-secondary font-weight-normal u-datatable__trigger-icon">FR006</td>
		                    <td class="align-middle">
		                      <div class="media align-items-center">
		                        <span class="btn btn-sm btn-icon btn-soft-success rounded-circle mr-2">
		                          <span class="btn-icon__inner font-weight-medium">D</span>
		                        </span>
		                        <span>Spotify</span>
		                      </div>
		                    </td>
		                    <td class="align-middle text-primary">$9.00</td>
		                    <td class="align-middle text-secondary">05 Jun</td>
		                    <td class="align-middle text-success">Completed</td>
		                  </tr><tr class="js-datatabale-details odd" data-details="
		                    <div class=&quot;border rounded p-5&quot;>
		                      <h4 class=&quot;h3&quot;>Invoice</h4>
		
		                      <div class=&quot;row mb-6&quot;>
		                        <div class=&quot;col-3&quot;>
		                          <span class=&quot;text-secondary&quot;>Date:</span>
		                          <span class=&quot;font-weight-medium&quot;>15 Jun, 2018</span>
		                        </div>
		                        <div class=&quot;col-3&quot;>
		                          <span class=&quot;text-secondary&quot;>Merchant:</span>
		                          <span class=&quot;font-weight-medium&quot;>Htmlstream</span>
		                        </div>
		                        <div class=&quot;col-6&quot;>
		                          <span class=&quot;text-secondary&quot;>Authorization code:</span>
		                          <span class=&quot;font-weight-medium&quot;>3641438346</span>
		                        </div>
		                      </div>
		
		                      <div class=&quot;row&quot;>
		                        <div class=&quot;col-sm-6 mb-3 mb-sm-0&quot;>
		                          <h5 class=&quot;text-dark font-size-1 text-uppercase&quot;>Billing address:</h5>
		                          <address class=&quot;text-secondary&quot;>
		                            <h6 class=&quot;h5 text-dark&quot;>Htmlstream</h6>
		                            Flat 60, Ross Green, South Lilyberg, Q7M 8ZV
		                          </address>
		                        </div>
		
		                        <div class=&quot;col-sm-6&quot;>
		                          <h5 class=&quot;text-dark font-size-1 text-uppercase&quot;>Client info:</h5>
		                          <ul class=&quot;list-unstyled mb-0&quot;>
		                            <li class=&quot;mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>First name:</span>
		                              <span class=&quot;font-weight-medium&quot;>Natalie</span>
		                            </li>
		                            <li class=&quot;mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Last name:</span>
		                              <span class=&quot;font-weight-medium&quot;>Curtis</span>
		                            </li>
		                            <li class=&quot;mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Country:</span>
		                              <span class=&quot;font-weight-medium&quot;>England</span>
		                            </li>
		                          </ul>
		                        </div>
		                      </div>
		
		                      <div class=&quot;row justify-content-end mb-4&quot;>
		                        <div class=&quot;col-sm-6&quot;>
		                          <hr class=&quot;my-4&quot;>
		
		                          <h5 class=&quot;text-dark font-size-1 text-uppercase&quot;>Transaction details:</h5>
		                          <ul class=&quot;list-unstyled mb-0&quot;>
		                            <li class=&quot;d-flex justify-content-between align-items-center mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Transaction amount</span>
		                              <span class=&quot;font-weight-medium&quot;>1,578.50 USD</span>
		                            </li>
		                            <li class=&quot;d-flex justify-content-between align-items-center mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Fee</span>
		                              <span class=&quot;font-weight-medium&quot;>$0.50</span>
		                            </li>
		                            <li class=&quot;d-flex justify-content-between align-items-center mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Total amount</span>
		                              <span class=&quot;text-primary font-weight-medium&quot;>1,579.00 USD</span>
		                            </li>
		                          </ul>
		                        </div>
		                      </div>
		
		                      <ul class=&quot;list-inline mb-0&quot;>
		                        <li class=&quot;list-inline-item u-ver-divider pr-3 mr-3&quot;>
		                          <a href=&quot;#&quot;>
		                            <span class=&quot;fas fa-file-word text-secondary mr-1&quot;></span>
		                            Download invoice
		                          </a>
		                        </li>
		                        <li class=&quot;list-inline-item&quot;>
		                          <a href=&quot;#&quot;>
		                            <span class=&quot;fas fa-print text-secondary mr-1&quot;></span>
		                            Print details
		                          </a>
		                        </li>
		                      </ul>
		                    </div>" role="row">
		                    <td class="align-middle sorting_1">
		                      <div class="custom-control custom-checkbox d-flex align-items-center">
		                        <input type="checkbox" class="custom-control-input" id="invoiceCheckbox07">
		                        <label class="custom-control-label" for="invoiceCheckbox07">
		                          <span class="text-hide">Checkbox</span>
		                        </label>
		                      </div>
		                    </td>
		                    <td class="align-middle text-secondary font-weight-normal u-datatable__trigger-icon">FR007</td>
		                    <td class="align-middle">
		                      <div class="media align-items-center">
		                        <span class="btn btn-sm btn-icon btn-soft-dark rounded-circle mr-2">
		                          <span class="btn-icon__inner font-weight-medium">H</span>
		                        </span>
		                        <span>Htmlstream</span>
		                      </div>
		                    </td>
		                    <td class="align-middle text-primary">$1,579.99</td>
		                    <td class="align-middle text-secondary">15 Jun</td>
		                    <td class="align-middle text-success">Completed</td>
		                  </tr><tr class="js-datatabale-details even" data-details="
		                    <div class=&quot;border rounded p-5&quot;>
		                      <h4 class=&quot;h3&quot;>Invoice</h4>
		
		                      <div class=&quot;row mb-6&quot;>
		                        <div class=&quot;col-3&quot;>
		                          <span class=&quot;text-secondary&quot;>Date:</span>
		                          <span class=&quot;font-weight-medium&quot;>16 Apr, 2018</span>
		                        </div>
		                        <div class=&quot;col-3&quot;>
		                          <span class=&quot;text-secondary&quot;>Merchant:</span>
		                          <span class=&quot;font-weight-medium&quot;>Spotify</span>
		                        </div>
		                        <div class=&quot;col-6&quot;>
		                          <span class=&quot;text-secondary&quot;>Authorization code:</span>
		                          <span class=&quot;font-weight-medium&quot;>56190247092853</span>
		                        </div>
		                      </div>
		
		                      <div class=&quot;row&quot;>
		                        <div class=&quot;col-sm-6 mb-3 mb-sm-0&quot;>
		                          <h5 class=&quot;text-dark font-size-1 text-uppercase&quot;>Billing address:</h5>
		                          <address class=&quot;text-secondary&quot;>
		                            <h6 class=&quot;h5 text-dark&quot;>Spotify</h6>
		                            Flat 60, Ross Green, South Lilyberg, Q7M 8ZV
		                          </address>
		                        </div>
		
		                        <div class=&quot;col-sm-6&quot;>
		                          <h5 class=&quot;text-dark font-size-1 text-uppercase&quot;>Client info:</h5>
		                          <ul class=&quot;list-unstyled mb-0&quot;>
		                            <li class=&quot;mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>First name:</span>
		                              <span class=&quot;font-weight-medium&quot;>Natalie</span>
		                            </li>
		                            <li class=&quot;mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Last name:</span>
		                              <span class=&quot;font-weight-medium&quot;>Curtis</span>
		                            </li>
		                            <li class=&quot;mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Country:</span>
		                              <span class=&quot;font-weight-medium&quot;>England</span>
		                            </li>
		                          </ul>
		                        </div>
		                      </div>
		
		                      <div class=&quot;row justify-content-end mb-4&quot;>
		                        <div class=&quot;col-sm-6&quot;>
		                          <hr class=&quot;my-4&quot;>
		
		                          <h5 class=&quot;text-dark font-size-1 text-uppercase&quot;>Transaction details:</h5>
		                          <ul class=&quot;list-unstyled mb-0&quot;>
		                            <li class=&quot;d-flex justify-content-between align-items-center mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Transaction amount</span>
		                              <span class=&quot;font-weight-medium&quot;>235.35 USD</span>
		                            </li>
		                            <li class=&quot;d-flex justify-content-between align-items-center mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Fee</span>
		                              <span class=&quot;font-weight-medium&quot;>$0.50</span>
		                            </li>
		                            <li class=&quot;d-flex justify-content-between align-items-center mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Total amount</span>
		                              <span class=&quot;text-primary font-weight-medium&quot;>235.85 USD</span>
		                            </li>
		                          </ul>
		                        </div>
		                      </div>
		
		                      <ul class=&quot;list-inline mb-0&quot;>
		                        <li class=&quot;list-inline-item u-ver-divider pr-3 mr-3&quot;>
		                          <a href=&quot;#&quot;>
		                            <span class=&quot;fas fa-file-word text-secondary mr-1&quot;></span>
		                            Download invoice
		                          </a>
		                        </li>
		                        <li class=&quot;list-inline-item&quot;>
		                          <a href=&quot;#&quot;>
		                            <span class=&quot;fas fa-print text-secondary mr-1&quot;></span>
		                            Print details
		                          </a>
		                        </li>
		                      </ul>
		                    </div>" role="row">
		                    <td class="align-middle sorting_1">
		                      <div class="custom-control custom-checkbox d-flex align-items-center">
		                        <input type="checkbox" class="custom-control-input" id="invoiceCheckbox08">
		                        <label class="custom-control-label" for="invoiceCheckbox08">
		                          <span class="text-hide">Checkbox</span>
		                        </label>
		                      </div>
		                    </td>
		                    <td class="align-middle text-secondary font-weight-normal u-datatable__trigger-icon">FR008</td>
		                    <td class="align-middle">
		                      <div class="media align-items-center">
		                        <span class="btn btn-sm btn-icon btn-soft-dark rounded-circle mr-2">
		                          <span class="btn-icon__inner font-weight-medium">G</span>
		                        </span>
		                        <span>GitHub</span>
		                      </div>
		                    </td>
		                    <td class="align-middle text-primary">$235.85</td>
		                    <td class="align-middle text-secondary">16 Apr</td>
		                    <td class="align-middle text-danger">Rejected</td>
		                  </tr><tr class="js-datatabale-details odd" data-details="
		                    <div class=&quot;border rounded p-5&quot;>
		                      <h4 class=&quot;h3&quot;>Invoice</h4>
		
		                      <div class=&quot;row mb-6&quot;>
		                        <div class=&quot;col-3&quot;>
		                          <span class=&quot;text-secondary&quot;>Date:</span>
		                          <span class=&quot;font-weight-medium&quot;>12 Apr, 2018</span>
		                        </div>
		                        <div class=&quot;col-3&quot;>
		                          <span class=&quot;text-secondary&quot;>Merchant:</span>
		                          <span class=&quot;font-weight-medium&quot;>Dropbox</span>
		                        </div>
		                        <div class=&quot;col-6&quot;>
		                          <span class=&quot;text-secondary&quot;>Authorization code:</span>
		                          <span class=&quot;font-weight-medium&quot;>6172692721903</span>
		                        </div>
		                      </div>
		
		                      <div class=&quot;row&quot;>
		                        <div class=&quot;col-sm-6 mb-3 mb-sm-0&quot;>
		                          <h5 class=&quot;text-dark font-size-1 text-uppercase&quot;>Billing address:</h5>
		                          <address class=&quot;text-secondary&quot;>
		                            <h6 class=&quot;h5 text-dark&quot;>Dropbox</h6>
		                            Flat 60, Ross Green, South Lilyberg, Q7M 8ZV
		                          </address>
		                        </div>
		
		                        <div class=&quot;col-sm-6&quot;>
		                          <h5 class=&quot;text-dark font-size-1 text-uppercase&quot;>Client info:</h5>
		                          <ul class=&quot;list-unstyled mb-0&quot;>
		                            <li class=&quot;mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>First name:</span>
		                              <span class=&quot;font-weight-medium&quot;>Natalie</span>
		                            </li>
		                            <li class=&quot;mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Last name:</span>
		                              <span class=&quot;font-weight-medium&quot;>Curtis</span>
		                            </li>
		                            <li class=&quot;mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Country:</span>
		                              <span class=&quot;font-weight-medium&quot;>England</span>
		                            </li>
		                          </ul>
		                        </div>
		                      </div>
		
		                      <div class=&quot;row justify-content-end mb-4&quot;>
		                        <div class=&quot;col-sm-6&quot;>
		                          <hr class=&quot;my-4&quot;>
		
		                          <h5 class=&quot;text-dark font-size-1 text-uppercase&quot;>Transaction details:</h5>
		                          <ul class=&quot;list-unstyled mb-0&quot;>
		                            <li class=&quot;d-flex justify-content-between align-items-center mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Transaction amount</span>
		                              <span class=&quot;font-weight-medium&quot;>11.81 USD</span>
		                            </li>
		                            <li class=&quot;d-flex justify-content-between align-items-center mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Fee</span>
		                              <span class=&quot;font-weight-medium&quot;>$0.50</span>
		                            </li>
		                            <li class=&quot;d-flex justify-content-between align-items-center mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Total amount</span>
		                              <span class=&quot;text-primary font-weight-medium&quot;>12.31 USD</span>
		                            </li>
		                          </ul>
		                        </div>
		                      </div>
		
		                      <ul class=&quot;list-inline mb-0&quot;>
		                        <li class=&quot;list-inline-item u-ver-divider pr-3 mr-3&quot;>
		                          <a href=&quot;#&quot;>
		                            <span class=&quot;fas fa-file-word text-secondary mr-1&quot;></span>
		                            Download invoice
		                          </a>
		                        </li>
		                        <li class=&quot;list-inline-item&quot;>
		                          <a href=&quot;#&quot;>
		                            <span class=&quot;fas fa-print text-secondary mr-1&quot;></span>
		                            Print details
		                          </a>
		                        </li>
		                      </ul>
		                    </div>" role="row">
		                    <td class="align-middle sorting_1">
		                      <div class="custom-control custom-checkbox d-flex align-items-center">
		                        <input type="checkbox" class="custom-control-input" id="invoiceCheckbox09">
		                        <label class="custom-control-label" for="invoiceCheckbox09">
		                          <span class="text-hide">Checkbox</span>
		                        </label>
		                      </div>
		                    </td>
		                    <td class="align-middle text-secondary font-weight-normal u-datatable__trigger-icon">FR009</td>
		                    <td class="align-middle">
		                      <div class="media align-items-center">
		                        <span class="btn btn-sm btn-icon btn-soft-primary rounded-circle mr-2">
		                          <span class="btn-icon__inner font-weight-medium">D</span>
		                        </span>
		                        <span>Dropbox</span>
		                      </div>
		                    </td>
		                    <td class="align-middle text-primary">$12.31</td>
		                    <td class="align-middle text-secondary">12 Apr</td>
		                    <td class="align-middle text-success">Completed</td>
		                  </tr><tr class="js-datatabale-details even" data-details="
		                    <div class=&quot;border rounded p-5&quot;>
		                      <h4 class=&quot;h3&quot;>Invoice</h4>
		
		                      <div class=&quot;row mb-6&quot;>
		                        <div class=&quot;col-3&quot;>
		                          <span class=&quot;text-secondary&quot;>Date:</span>
		                          <span class=&quot;font-weight-medium&quot;>29 Apr, 2018</span>
		                        </div>
		                        <div class=&quot;col-3&quot;>
		                          <span class=&quot;text-secondary&quot;>Merchant:</span>
		                          <span class=&quot;font-weight-medium&quot;>Google</span>
		                        </div>
		                        <div class=&quot;col-6&quot;>
		                          <span class=&quot;text-secondary&quot;>Authorization code:</span>
		                          <span class=&quot;font-weight-medium&quot;>4125235412412</span>
		                        </div>
		                      </div>
		
		                      <div class=&quot;row&quot;>
		                        <div class=&quot;col-sm-6 mb-3 mb-sm-0&quot;>
		                          <h5 class=&quot;text-dark font-size-1 text-uppercase&quot;>Billing address:</h5>
		                          <address class=&quot;text-secondary&quot;>
		                            <h6 class=&quot;h5 text-dark&quot;>Google</h6>
		                            Flat 60, Ross Green, South Lilyberg, Q7M 8ZV
		                          </address>
		                        </div>
		
		                        <div class=&quot;col-sm-6&quot;>
		                          <h5 class=&quot;text-dark font-size-1 text-uppercase&quot;>Client info:</h5>
		                          <ul class=&quot;list-unstyled mb-0&quot;>
		                            <li class=&quot;mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>First name:</span>
		                              <span class=&quot;font-weight-medium&quot;>Natalie</span>
		                            </li>
		                            <li class=&quot;mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Last name:</span>
		                              <span class=&quot;font-weight-medium&quot;>Curtis</span>
		                            </li>
		                            <li class=&quot;mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Country:</span>
		                              <span class=&quot;font-weight-medium&quot;>England</span>
		                            </li>
		                          </ul>
		                        </div>
		                      </div>
		
		                      <div class=&quot;row justify-content-end mb-4&quot;>
		                        <div class=&quot;col-sm-6&quot;>
		                          <hr class=&quot;my-4&quot;>
		
		                          <h5 class=&quot;text-dark font-size-1 text-uppercase&quot;>Transaction details:</h5>
		                          <ul class=&quot;list-unstyled mb-0&quot;>
		                            <li class=&quot;d-flex justify-content-between align-items-center mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Transaction amount</span>
		                              <span class=&quot;font-weight-medium&quot;>890.50 USD</span>
		                            </li>
		                            <li class=&quot;d-flex justify-content-between align-items-center mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Fee</span>
		                              <span class=&quot;font-weight-medium&quot;>$0.50</span>
		                            </li>
		                            <li class=&quot;d-flex justify-content-between align-items-center mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Total amount</span>
		                              <span class=&quot;text-primary font-weight-medium&quot;>891.00 USD</span>
		                            </li>
		                          </ul>
		                        </div>
		                      </div>
		
		                      <ul class=&quot;list-inline mb-0&quot;>
		                        <li class=&quot;list-inline-item u-ver-divider pr-3 mr-3&quot;>
		                          <a href=&quot;#&quot;>
		                            <span class=&quot;fas fa-file-word text-secondary mr-1&quot;></span>
		                            Download invoice
		                          </a>
		                        </li>
		                        <li class=&quot;list-inline-item&quot;>
		                          <a href=&quot;#&quot;>
		                            <span class=&quot;fas fa-print text-secondary mr-1&quot;></span>
		                            Print details
		                          </a>
		                        </li>
		                      </ul>
		                    </div>" role="row">
		                    <td class="align-middle sorting_1">
		                      <div class="custom-control custom-checkbox d-flex align-items-center">
		                        <input type="checkbox" class="custom-control-input" id="invoiceCheckbox10">
		                        <label class="custom-control-label" for="invoiceCheckbox10">
		                          <span class="text-hide">Checkbox</span>
		                        </label>
		                      </div>
		                    </td>
		                    <td class="align-middle text-secondary font-weight-normal u-datatable__trigger-icon">FR0010</td>
		                    <td class="align-middle">
		                      <div class="media align-items-center">
		                        <span class="btn btn-sm btn-icon btn-soft-danger rounded-circle mr-2">
		                          <span class="btn-icon__inner font-weight-medium">G</span>
		                        </span>
		                        <span>Google</span>
		                      </div>
		                    </td>
		                    <td class="align-middle text-primary">$891.00</td>
		                    <td class="align-middle text-secondary">29 Apr</td>
		                    <td class="align-middle text-success">Completed</td>
		                  </tr><tr class="js-datatabale-details odd" data-details="
		                    <div class=&quot;border rounded p-5&quot;>
		                      <h4 class=&quot;h3&quot;>Invoice</h4>
		
		                      <div class=&quot;row mb-6&quot;>
		                        <div class=&quot;col-3&quot;>
		                          <span class=&quot;text-secondary&quot;>Date:</span>
		                          <span class=&quot;font-weight-medium&quot;>30 Apr, 2018</span>
		                        </div>
		                        <div class=&quot;col-3&quot;>
		                          <span class=&quot;text-secondary&quot;>Merchant:</span>
		                          <span class=&quot;font-weight-medium&quot;>Atlassian</span>
		                        </div>
		                        <div class=&quot;col-6&quot;>
		                          <span class=&quot;text-secondary&quot;>Authorization code:</span>
		                          <span class=&quot;font-weight-medium&quot;>1241262182092</span>
		                        </div>
		                      </div>
		
		                      <div class=&quot;row&quot;>
		                        <div class=&quot;col-sm-6 mb-3 mb-sm-0&quot;>
		                          <h5 class=&quot;text-dark font-size-1 text-uppercase&quot;>Billing address:</h5>
		                          <address class=&quot;text-secondary&quot;>
		                            <h6 class=&quot;h5 text-dark&quot;>Atlassian</h6>
		                            Flat 60, Ross Green, South Lilyberg, Q7M 8ZV
		                          </address>
		                        </div>
		
		                        <div class=&quot;col-sm-6&quot;>
		                          <h5 class=&quot;text-dark font-size-1 text-uppercase&quot;>Client info:</h5>
		                          <ul class=&quot;list-unstyled mb-0&quot;>
		                            <li class=&quot;mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>First name:</span>
		                              <span class=&quot;font-weight-medium&quot;>Natalie</span>
		                            </li>
		                            <li class=&quot;mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Last name:</span>
		                              <span class=&quot;font-weight-medium&quot;>Curtis</span>
		                            </li>
		                            <li class=&quot;mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Country:</span>
		                              <span class=&quot;font-weight-medium&quot;>England</span>
		                            </li>
		                          </ul>
		                        </div>
		                      </div>
		
		                      <div class=&quot;row justify-content-end mb-4&quot;>
		                        <div class=&quot;col-sm-6&quot;>
		                          <hr class=&quot;my-4&quot;>
		
		                          <h5 class=&quot;text-dark font-size-1 text-uppercase&quot;>Transaction details:</h5>
		                          <ul class=&quot;list-unstyled mb-0&quot;>
		                            <li class=&quot;d-flex justify-content-between align-items-center mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Transaction amount</span>
		                              <span class=&quot;font-weight-medium&quot;>320.59 USD</span>
		                            </li>
		                            <li class=&quot;d-flex justify-content-between align-items-center mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Fee</span>
		                              <span class=&quot;font-weight-medium&quot;>$0.50</span>
		                            </li>
		                            <li class=&quot;d-flex justify-content-between align-items-center mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Total amount</span>
		                              <span class=&quot;text-primary font-weight-medium&quot;>321.11 USD</span>
		                            </li>
		                          </ul>
		                        </div>
		                      </div>
		
		                      <ul class=&quot;list-inline mb-0&quot;>
		                        <li class=&quot;list-inline-item u-ver-divider pr-3 mr-3&quot;>
		                          <a href=&quot;#&quot;>
		                            <span class=&quot;fas fa-file-word text-secondary mr-1&quot;></span>
		                            Download invoice
		                          </a>
		                        </li>
		                        <li class=&quot;list-inline-item&quot;>
		                          <a href=&quot;#&quot;>
		                            <span class=&quot;fas fa-print text-secondary mr-1&quot;></span>
		                            Print details
		                          </a>
		                        </li>
		                      </ul>
		                    </div>" role="row">
		                    <td class="align-middle sorting_1">
		                      <div class="custom-control custom-checkbox d-flex align-items-center">
		                        <input type="checkbox" class="custom-control-input" id="invoiceCheckbox11">
		                        <label class="custom-control-label" for="invoiceCheckbox11">
		                          <span class="text-hide">Checkbox</span>
		                        </label>
		                      </div>
		                    </td>
		                    <td class="align-middle text-secondary font-weight-normal u-datatable__trigger-icon">FR0011</td>
		                    <td class="align-middle">
		                      <div class="media align-items-center">
		                        <span class="btn btn-sm btn-icon btn-soft-primary rounded-circle mr-2">
		                          <span class="btn-icon__inner font-weight-medium">A</span>
		                        </span>
		                        <span>Atlassian</span>
		                      </div>
		                    </td>
		                    <td class="align-middle text-primary">$321.11</td>
		                    <td class="align-middle text-secondary">30 Apr</td>
		                    <td class="align-middle text-warning">Pending</td>
		                  </tr><tr class="js-datatabale-details even" data-details="
		                    <div class=&quot;border rounded p-5&quot;>
		                      <h4 class=&quot;h3&quot;>Invoice</h4>
		
		                      <div class=&quot;row mb-6&quot;>
		                        <div class=&quot;col-3&quot;>
		                          <span class=&quot;text-secondary&quot;>Date:</span>
		                          <span class=&quot;font-weight-medium&quot;>02 Mar, 2018</span>
		                        </div>
		                        <div class=&quot;col-3&quot;>
		                          <span class=&quot;text-secondary&quot;>Merchant:</span>
		                          <span class=&quot;font-weight-medium&quot;>Slack</span>
		                        </div>
		                        <div class=&quot;col-6&quot;>
		                          <span class=&quot;text-secondary&quot;>Authorization code:</span>
		                          <span class=&quot;font-weight-medium&quot;>7563970127419120</span>
		                        </div>
		                      </div>
		
		                      <div class=&quot;row&quot;>
		                        <div class=&quot;col-sm-6 mb-3 mb-sm-0&quot;>
		                          <h5 class=&quot;text-dark font-size-1 text-uppercase&quot;>Billing address:</h5>
		                          <address class=&quot;text-secondary&quot;>
		                            <h6 class=&quot;h5 text-dark&quot;>Slack</h6>
		                            Flat 60, Ross Green, South Lilyberg, Q7M 8ZV
		                          </address>
		                        </div>
		
		                        <div class=&quot;col-sm-6&quot;>
		                          <h5 class=&quot;text-dark font-size-1 text-uppercase&quot;>Client info:</h5>
		                          <ul class=&quot;list-unstyled mb-0&quot;>
		                            <li class=&quot;mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>First name:</span>
		                              <span class=&quot;font-weight-medium&quot;>Natalie</span>
		                            </li>
		                            <li class=&quot;mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Last name:</span>
		                              <span class=&quot;font-weight-medium&quot;>Curtis</span>
		                            </li>
		                            <li class=&quot;mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Country:</span>
		                              <span class=&quot;font-weight-medium&quot;>England</span>
		                            </li>
		                          </ul>
		                        </div>
		                      </div>
		
		                      <div class=&quot;row justify-content-end mb-4&quot;>
		                        <div class=&quot;col-sm-6&quot;>
		                          <hr class=&quot;my-4&quot;>
		
		                          <h5 class=&quot;text-dark font-size-1 text-uppercase&quot;>Transaction details:</h5>
		                          <ul class=&quot;list-unstyled mb-0&quot;>
		                            <li class=&quot;d-flex justify-content-between align-items-center mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Transaction amount</span>
		                              <span class=&quot;font-weight-medium&quot;>15.79 USD</span>
		                            </li>
		                            <li class=&quot;d-flex justify-content-between align-items-center mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Fee</span>
		                              <span class=&quot;font-weight-medium&quot;>$0.50</span>
		                            </li>
		                            <li class=&quot;d-flex justify-content-between align-items-center mb-2&quot;>
		                              <span class=&quot;text-secondary&quot;>Total amount</span>
		                              <span class=&quot;text-primary font-weight-medium&quot;>16.29 USD</span>
		                            </li>
		                          </ul>
		                        </div>
		                      </div>
		
		                      <ul class=&quot;list-inline mb-0&quot;>
		                        <li class=&quot;list-inline-item u-ver-divider pr-3 mr-3&quot;>
		                          <a href=&quot;#&quot;>
		                            <span class=&quot;fas fa-file-word text-secondary mr-1&quot;></span>
		                            Download invoice
		                          </a>
		                        </li>
		                        <li class=&quot;list-inline-item&quot;>
		                          <a href=&quot;#&quot;>
		                            <span class=&quot;fas fa-print text-secondary mr-1&quot;></span>
		                            Print details
		                          </a>
		                        </li>
		                      </ul>
		                    </div>" role="row">
		                    <td class="align-middle sorting_1">
		                      <div class="custom-control custom-checkbox d-flex align-items-center">
		                        <input type="checkbox" class="custom-control-input" id="invoiceCheckbox12">
		                        <label class="custom-control-label" for="invoiceCheckbox12">
		                          <span class="text-hide">Checkbox</span>
		                        </label>
		                      </div>
		                    </td>
		                    <td class="align-middle text-secondary font-weight-normal u-datatable__trigger-icon">FR0012</td>
		                    <td class="align-middle">
		                      <div class="media align-items-center">
		                        <span class="btn btn-sm btn-icon btn-soft-warning rounded-circle mr-2">
		                          <span class="btn-icon__inner font-weight-medium">S</span>
		                        </span>
		                        <span>Slack</span>
		                      </div>
		                    </td>
		                    <td class="align-middle text-primary">$16.29</td>
		                    <td class="align-middle text-secondary">02 Mar</td>
		                    <td class="align-middle text-danger">Rejected</td>
		                  </tr></tbody>
		              </table></div>
		            </div>
		            <!-- End Activity Table -->
		
		            <!-- Pagination -->
		            <!-- <div class="d-flex align-items-center">
		              <nav id="datatablePagination" aria-label="Activity pagination"><div class="dataTables_paginate paging_simple_numbers pagination mb-0" id="DataTables_Table_0_paginate"><span class="page-item"><a class="paginate_button previous disabled page-link" aria-controls="DataTables_Table_0" data-dt-idx="0" tabindex="0" id="DataTables_Table_0_previous"><span aria-hidden="true">«</span></a></span><span style="display: flex;"><span class="page-item active"><a class="paginate_button current page-link" aria-controls="DataTables_Table_0" data-dt-idx="1" tabindex="0">1</a></span><span class="page-item"><a class="paginate_button page-link" aria-controls="DataTables_Table_0" data-dt-idx="2" tabindex="0">2</a></span></span><span class="page-item"><a class="paginate_button next page-link" aria-controls="DataTables_Table_0" data-dt-idx="3" tabindex="0" id="DataTables_Table_0_next"><span aria-hidden="true">»</span></a></span></div></nav>
		
		              <small id="datatableInfo" class="text-secondary ml-auto">Showing 1 to 12 of 24 Entries</small>
		            </div> -->
		            <!-- End Pagination -->
		          </div>
		        </div>
		      </div>
		    </div>

	</main>
	<!-- ========== END MAIN ========== -->
<%@ include file="../../common/footer.jsp" %>