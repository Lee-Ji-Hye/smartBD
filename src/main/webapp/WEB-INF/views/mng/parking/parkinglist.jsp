<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp" %>
<%@ include file="../../common/headerAdmin.jsp" %>     
<html>
<body>
<!-- ========== MAIN ========== -->
  <main id="content" role="main">
    <!-- Breadcrumb Section -->
    <div class="bg-primary">
      <div class="container space-top-1 pb-3">
        <div class="row">
          <div class="col-lg-5 order-lg-2 text-lg-right mb-4 mb-lg-0">
            <div class="d-flex d-lg-inline-block justify-content-between justify-content-lg-end align-items-center align-items-lg-start">
              <!-- Breadcrumb -->
              <ol class="breadcrumb breadcrumb-white breadcrumb-no-gutter mb-0">
                <li class="breadcrumb-item"><a class="breadcrumb-link" href="../home/index.html">Parking-List</a></li>
              </ol>
              <!-- End Breadcrumb -->

              <!-- Breadcrumb Nav Toggle Button -->
              <div class="d-lg-none">
                <button type="button" class="navbar-toggler btn u-hamburger u-hamburger--white"
                        aria-label="Toggle navigation"
                        aria-expanded="false"
                        aria-controls="breadcrumbNavBar"
                        data-toggle="collapse"
                        data-target="#breadcrumbNavBar">
                  <span id="breadcrumbHamburgerTrigger" class="u-hamburger__box">
                    <span class="u-hamburger__inner"></span>
                  </span>
                </button>
              </div>
              <!-- End Breadcrumb Nav Toggle Button -->
            </div>
          </div>

          <div class="col-lg-7 order-lg-1">
            <!-- User Info -->
            <div class="media d-block d-sm-flex align-items-sm-center">
              <div class="u-lg-avatar position-relative mb-3 mb-sm-0 mr-3">
                <img class="img-fluid rounded-circle" src="../../assets/img/160x160/img2.jpg" alt="Image Description">
                <span class="badge badge-md badge-outline-success badge-pos badge-pos--bottom-right rounded-circle">
                  <span class="fas fa-check"></span>
                </span>
              </div>
              <div class="media-body">
                <h1 class="h3 text-white font-weight-medium mb-1">YEONGJUNG,KIM</h1>
                <span class="d-block text-white">dudwnddl1101@gmail.com</span>
              </div>
            </div>
            <!-- End User Info -->
          </div>
        </div>
      </div>

      <div class="container space-bottom-1 space-bottom-lg-0">
        <div class="d-lg-flex justify-content-lg-between align-items-lg-center">
          <!-- Navbar -->
          <div class="u-header u-header-left-aligned-nav u-header--bg-transparent-lg u-header--white-nav-links z-index-4">
            <div class="u-header__section bg-transparent">
              <nav class="js-breadcrumb-menu navbar navbar-expand-lg u-header__navbar u-header__navbar--no-space">
                <div id="breadcrumbNavBar" class="collapse navbar-collapse u-header__navbar-collapse">
                  <ul class="navbar-nav u-header__navbar-nav">
                    <!-- General -->
                   <li class="nav-item hs-has-sub-menu u-header__nav-item"
                        data-event="hover"
                        data-animation-in="slideInUp"
                        data-animation-out="fadeOut">
                      <a id="generalDropdown" class="nav-link u-header__nav-link u-header__nav-link-toggle" href="${path}/bd_park/uselist" aria-haspopup="true" aria-expanded="false" aria-labelledby="generalDropdownMenu">
                        	주차권 발급내역
                      </a>
                    </li>
                    <!-- General -->

                    <!-- Account Settings -->
                    <li class="nav-item hs-has-sub-menu u-header__nav-item"
                        data-event="hover"
                        data-animation-in="slideInUp"
                        data-animation-out="fadeOut">
                      <a id="accountSettingsDropdown" class="nav-link u-header__nav-link u-header__nav-link-toggle" href="${path}/bd_park/parkinglist" aria-haspopup="true" aria-expanded="false" aria-labelledby="accountSettingsDropdownMenu">
                        	주차권 사용 내역
                      </a>
                    </li>
                    <!-- Account Settings -->

                    <!-- Billing -->
                    <li class="nav-item hs-has-sub-menu u-header__nav-item"
                        data-event="hover"
                        data-animation-in="slideInUp"
                        data-animation-out="fadeOut">
                      <a id="billingDropdown" class="nav-link u-header__nav-link u-header__nav-link-toggle" href="${path}/bd_park/refund" aria-haspopup="true" aria-expanded="false" aria-labelledby="billingDropdownMenu">
                        	주차권 환불 내역
                      </a>

                    </li>
                    <!-- Billing -->
<!-- Billing -->
                    <li class="nav-item hs-has-sub-menu u-header__nav-item"
                        data-event="hover"
                        data-animation-in="slideInUp"
                        data-animation-out="fadeOut">
                      <a id="billingDropdown" class="nav-link u-header__nav-link u-header__nav-link-toggle" href="${path}/bd_park/ticketlist" aria-haspopup="true" aria-expanded="false" aria-labelledby="billingDropdownMenu">
                        	주차권 등록 내역
                      </a>

                    </li>
                    <!-- Billing -->
                  
                  </ul>
                </div>
              </nav>
            </div>
          </div>
          <!-- End Navbar -->

          <div class="ml-lg-auto">
            <!-- Button -->
            <a class="btn btn-sm btn-soft-white text-nowrap transition-3d-hover" href="${path}/ticketuse">
              <span class="fas fa-plus small mr-2"></span>
              	주차권 사용
            </a>
            <!-- End Button -->
          </div>
        </div>
      </div>
    </div>
    <!-- End Breadcrumb Section -->

    <!-- Content Section -->
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
                         data-rp-default-date='["05 Jul 2018", "19 Jul 2018"]'
                         data-rp-is-disable-future-dates="true">
                </div>
                <!-- End Datepicker -->
              </div>

              <div class="col-md-6">
                <div class="d-flex">
                  <div class="mr-2">
                    <!-- Select -->
                    <select id="datatableEntries" class="js-select selectpicker dropdown-select" data-width="fit" data-style="btn-soft-primary btn-sm">
                      <option value="6">6 entries</option>
                      <option value="12" selected>12 entries</option>
                      <option value="18">18 entries</option>
                      <option value="24">24 entries</option>
                    </select>
                    <!-- End Select -->
                  </div>

                  <!-- Search -->
                  <div class="js-focus-state input-group input-group-sm">
                    <div class="input-group-prepend">
                      <span class="input-group-text" id="searchActivities">
                        <span class="fas fa-search"></span>
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
                    </th>
                    <th scope="col" class="font-weight-medium">
                      <div class="d-flex justify-content-between align-items-center">
                        	결제코드
                        <div class="ml-2">
                          <span class="fas fa-angle-up u-datatable__thead-icon"></span>
                          <span class="fas fa-angle-down u-datatable__thead-icon"></span>
                        </div>
                      </div>
                    </th>
                    <th scope="col" class="font-weight-medium">
                      <div class="d-flex justify-content-between align-items-center">
                        	주차상품 코드
                        <div class="ml-2">
                          <span class="fas fa-angle-up u-datatable__thead-icon"></span>
                          <span class="fas fa-angle-down u-datatable__thead-icon"></span>
                        </div>
                      </div>
                    </th>
                    <th scope="col" class="font-weight-medium">
                      <div class="d-flex justify-content-between align-items-center">
                        	아이디
                        <div class="ml-2">
                          <span class="fas fa-angle-up u-datatable__thead-icon"></span>
                          <span class="fas fa-angle-down u-datatable__thead-icon"></span>
                        </div>
                      </div>
                    </th>
                    <th scope="col" class="font-weight-medium">
                      <div class="d-flex justify-content-between align-items-center">
                       	상태
                        <div class="ml-2">
                          <span class="fas fa-angle-up u-datatable__thead-icon"></span>
                          <span class="fas fa-angle-down u-datatable__thead-icon"></span>
                        </div>
                      </div>
                    </th>
                    <th scope="col" class="font-weight-medium">
                      <div class="d-flex justify-content-between align-items-center">
                        	가격
                        <div class="ml-2">
                          <span class="fas fa-angle-up u-datatable__thead-icon"></span>
                          <span class="fas fa-angle-down u-datatable__thead-icon"></span>
                        </div>
                      </div>
                    </th>
                    <th scope="col" class="font-weight-medium">
                      <div class="d-flex justify-content-between align-items-center">
                        	총수량
                        <div class="ml-2">
                          <span class="fas fa-angle-up u-datatable__thead-icon"></span>
                          <span class="fas fa-angle-down u-datatable__thead-icon"></span>
                        </div>
                      </div>
                    </th>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
                    <th scope="col" class="font-weight-medium">
                      <div class="d-flex justify-content-between align-items-center">
                        	카카오페이 tid
                        <div class="ml-2">
                          <span class="fas fa-angle-up u-datatable__thead-icon"></span>
                          <span class="fas fa-angle-down u-datatable__thead-icon"></span>
                        </div>
                      </div>
                    </th>
                    <th scope="col" class="font-weight-medium">
                      <div class="d-flex justify-content-between align-items-center">
                        	결제일
                        <div class="ml-2">
                          <span class="fas fa-angle-up u-datatable__thead-icon"></span>
                          <span class="fas fa-angle-down u-datatable__thead-icon"></span>
                        </div>
                      </div>
                    </th>
                    <th scope="col" class="font-weight-medium">
                      <div class="d-flex justify-content-between align-items-center">
                        	환불일
                        <div class="ml-2">
                          <span class="fas fa-angle-up u-datatable__thead-icon"></span>
                          <span class="fas fa-angle-down u-datatable__thead-icon"></span>
                        </div>
                      </div>
                    </th>
                    <th scope="col" class="font-weight-medium">
                      <div class="d-flex justify-content-between align-items-center">
                        	주문일
                        <div class="ml-2">
                          <span class="fas fa-angle-up u-datatable__thead-icon"></span>
                          <span class="fas fa-angle-down u-datatable__thead-icon"></span>
                        </div>
                      </div>
                    </th>
                  </tr>
                </thead>
                <tbody class="font-size-1">
                  <tr class="js-datatabale-details" data-details='
                    <div class="border rounded p-5">
                      <h4 class="h3">Invoice</h4>

                      <div class="row mb-6">
                        <div class="col-3">
                          <span class="text-secondary">Date:</span>
                          <span class="font-weight-medium">05 May, 2018</span>
                        </div>
                        <div class="col-3">
                          <span class="text-secondary">Merchant:</span>
                          <span class="font-weight-medium">Spotify</span>
                        </div>
                        <div class="col-6">
                          <span class="text-secondary">Authorization code:</span>
                          <span class="font-weight-medium">128746739419</span>
                        </div>
                      </div>

                      <div class="row">
                        <div class="col-sm-6 mb-3 mb-sm-0">
                          <h5 class="text-dark font-size-1 text-uppercase">Billing address:</h5>
                          <address class="text-secondary">
                            <h6 class="h5 text-dark">Spotify</h6>
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
                              <span class="font-weight-medium">parkyechan</span>
                            </li>
                            <li class="d-flex justify-content-between align-items-center mb-2">
                              <span class="text-secondary">Fee</span>
                              <span class="font-weight-medium">$0.50</span>
                            </li>
                            <li class="d-flex justify-content-between align-items-center mb-2">
                              <span class="text-secondary">Total amount</span>
                              <span class="text-primary font-weight-medium">$9.37</span>
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
                    </div>'>
                   <c:if test="${cnt >0}">
              	<c:forEach var="dto" items="${dtos}" varStatus="status">
	              		<tbody class="font-size-1">
			              	<tr class="text-uppercase font-size-1">
			                  <td class="align-middle">
			                    <div class="custom-control custom-checkbox d-flex align-items-center">
			                      <input type="checkbox" class="custom-control-input" name="couponChk" id="invoiceCheckbox0${status.count}" value="${vo.f_coupon_num}">
			                      <label class="custom-control-label" for="invoiceCheckbox0${status.count}" >
			                       <span class="text-hide">Checkbox</span>
			                      </label>
			                    </div>
			                  </td>
			                  <td class="align-middle text-secondary font-weight-normal ">${dto.p_ocode}</td>
			                  <td class="align-middle text-secondary font-weight-normal ">${dto.p_code}</td>
			                  <td class="align-middle text-secondary font-weight-normal ">${dto.userid}</td>
			                  <td class="align-middle text-secondary font-weight-normal "><c:if test="${dto.p_state == 0}"> <input type="button" value="결재대기"></c:if>
			                  <c:if test="${dto.p_state == 1}"><input type="button" value="결제완료"></c:if>
			                  <c:if test="${dto.p_state == 2}"><input type="button" value="결제완료"></c:if>
			                  <c:if test="${dto.p_state == 3}"><input type="button" value="사용완료 "></c:if>
			                  <c:if test="${dto.p_state == 4}"><input type="button" value="환불요청 "></c:if>
			                  <c:if test="${dto.p_state == 5}"><input type="button" value="환불 완료"></c:if>
			                     <c:if test="${dto.p_state == 6}"><input type="button" value="환불 완료"></c:if></td>
			                  <td class="align-middle text-secondary font-weight-normal ">${dto.p_oprice}</td>
			                  <td class="align-middle text-secondary font-weight-normal ">${dto.p_count}</td>
			                  <td class="align-middle text-secondary font-weight-normal ">${dto.tid}</td>
			                  <td class="align-middle text-secondary font-weight-normal ">${dto.pay_day}</td>
			                  <td class="align-middle text-secondary font-weight-normal ">${dto.refund_day}</td>
			                  <td class="align-middle text-secondary font-weight-normal ">${dto.p_regidate}</td>
			                  <td class="align-middle text-primary"></td>
	              		</tr>
	              		</c:forEach>
	              		</tbody>
              </c:if>
                   
                    
              </table>
            </div>
            <!-- End Activity Table -->

               ${paging.html_mk_page()}
            <!-- Pagination -->
            <div class="d-flex align-items-center">
              <nav id="datatablePagination" aria-label="Activity pagination"></nav>

              <small id="datatableInfo" class="text-secondary ml-auto"></small>
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
</body>
</html>