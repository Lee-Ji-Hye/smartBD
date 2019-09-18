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
                  
                    <!-- Billing -->
                  
                  </ul>
                </div>
              </nav>
            </div>
          </div>
          <!-- End Navbar -->
			<div class="ml-lg-auto">
            <!-- Button -->
            <a class="btn btn-sm btn-soft-white text-nowrap transition-3d-hover" href="${path}/bd_park/intromn/inst2">
              <span style="font-size: 18px;margin-right: 5px;font-weight: bold;">+</span>
              	입출차 현황
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
              
            </div>
			<!-- Buttons -->
		
			<!-- End Buttons -->
          </div>
        </div>
        <div class="card-body p-4">
          <!-- Activity Table -->
          <div class="table-responsive-md u-datatable">
            <table class="js-datatable table table-borderless u-datatable__striped u-datatable__content u-datatable__trigger mb-5" data-dt-info="#datatableInfo" data-dt-search="#datatableSearch" data-dt-entries="#datatableEntries" data-dt-page-length="12" data-dt-is-responsive="false" data-dt-is-show-paging="true" data-dt-details-invoker=".js-datatabale-details" data-dt-select-all-control="#invoiceToggleAllCheckbox" data-dt-pagination="datatablePagination" data-dt-pagination-classes="pagination mb-0" data-dt-pagination-items-classes="page-item" data-dt-pagination-links-classes="page-link" data-dt-pagination-next-classes="page-item" data-dt-pagination-next-link-classes="page-link" data-dt-pagination-next-link-markup="<span aria-hidden=&quot;true&quot;>»</span>" data-dt-pagination-prev-classes="page-item" data-dt-pagination-prev-link-classes="page-link" data-dt-pagination-prev-link-markup="<span aria-hidden=&quot;true&quot;>«</span>">
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
                      	빌딩코드
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	주차층
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	주차상태
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	주차위치
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  
                  <th scope="col" class="font-weight-medium">
                    <div class="d-flex justify-content-between align-items-center">
                      	비고
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
              </tr></thead>
              	
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
			                  <td class="align-middle text-secondary font-weight-normal ">${dto.b_code}</td>
			                  <td class="align-middle text-secondary font-weight-normal ">${dto.p_detail_floor}</td>
			                  <td class="align-middle text-secondary font-weight-normal "><c:if test="${dto.p_state == 0}"><input type="button" value="주차전"></c:if>
			                  <c:if test="${dto.p_state == 1}"><input type="button" value="주차중"></c:if></td>
			                  <td class="align-middle text-secondary font-weight-normal ">${dto.p_lat},${dto.p_lot}</td>
			                  <td class="align-middle text-secondary font-weight-normal ">${dto.ask}</td>
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