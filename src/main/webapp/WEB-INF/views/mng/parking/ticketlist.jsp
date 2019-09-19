<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp" %>
<%@ include file="../../common/headerAdmin.jsp" %>   
<html>
<style>
#myInput
,#serBtn{
	float: left;
}
table,td, th{
		margin: auto;
		text-align: center;
	}
</style>
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
                        	주차권 주문 내역
                      </a>
                    </li>
                    <!-- Account Settings -->

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
                    <li class="nav-item hs-has-sub-menu u-header__nav-item"
                        data-event="hover"
                        data-animation-in="slideInUp"
                        data-animation-out="fadeOut">
                      <a id="billingDropdown" class="nav-link u-header__nav-link u-header__nav-link-toggle" href="${path}/bd_park/parkpricelist" aria-haspopup="true" aria-expanded="false" aria-labelledby="billingDropdownMenu">
                        	주차  요금 내역
                      </a>
                    </li>
                    <li class="nav-item hs-has-sub-menu u-header__nav-item"
                        data-event="hover"
                        data-animation-in="slideInUp"
                        data-animation-out="fadeOut">
                      <a id="billingDropdown" class="nav-link u-header__nav-link u-header__nav-link-toggle" href="${path}/bd_park/parkpaylist" aria-haspopup="true" aria-expanded="false" aria-labelledby="billingDropdownMenu">
                        	주차  결제 내역
                      </a>
                    </li>
                    <!-- Billing -->
                  </ul>
                </div>
              </nav>
            </div>
          </div>
          <!-- End Navbar -->

         
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
			<div class="editBtnDiv01">
			
	<form method="get" id="form" name="form" >
	 <input class="form-control" id="myInput" name ="sertext"  type="text" placeholder="Search.." value="${sertext}" style="position:relative;right:650px;top:40px; ">
  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
    <input type="button" id="serBtn" value="검색"  class="btn btn-sm btn-soft-secondary transition-3d-hover" style="position: relative;right:200px;" >
    <input type="button" id="ticketAddBtn" class="btn btn-sm btn-primary transition-3d-hover mr-1" value="등록" style="position:relative;left:150px;"/>
    <input type="button" id="ticketDelBtn"  class="btn btn-sm btn-soft-secondary transition-3d-hover" value="삭제"style="position:relative;left:150px;" />
  
   
 	<!-- <button type="button"> -->
          </div>
        </div>
      
	
        <div class="card-body p-4">
          <!-- Activity Table -->
          <div class="table-responsive-md u-datatable">
            <table class="js-datatable table table-borderless u-datatable__striped u-datatable__content u-datatable__trigger mb-5" data-dt-info="#datatableInfo" data-dt-search="#datatableSearch" data-dt-entries="#datatableEntries" data-dt-page-length="12" data-dt-is-responsive="false" data-dt-is-show-paging="true" data-dt-details-invoker=".js-datatabale-details" data-dt-select-all-control="#invoiceToggleAllCheckbox" data-dt-pagination="datatablePagination" data-dt-pagination-classes="pagination mb-0" data-dt-pagination-items-classes="page-item" data-dt-pagination-links-classes="page-link" data-dt-pagination-next-classes="page-item" data-dt-pagination-next-link-classes="page-link" data-dt-pagination-next-link-markup="<span aria-hidden=&quot;true&quot;>»</span>" data-dt-pagination-prev-classes="page-item" data-dt-pagination-prev-link-classes="page-link" data-dt-pagination-prev-link-markup="<span aria-hidden=&quot;true&quot;>«</span>">
              <thead>
              	<tr>
                  <th scope="col">
                    <div class="custom-control custom-checkbox d-flex align-items-center" style="position:relative;top:-12px;">
                      <input type="checkbox" class="custom-control-input" id="invoiceToggleAllCheckbox" >
                      <label class="custom-control-label" for="invoiceToggleAllCheckbox">
                        <span class="text-hide">Checkbox</span>
                      </label>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div>
                      	주차상품코드
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div>
                      	건물코드
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                 
                  <th scope="col" class="font-weight-medium">
                    <div>
                      	시간별
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div>
                      	가격
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div>
                      	작성자
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
                  <th scope="col" class="font-weight-medium">
                    <div>
                      	작성일
                      <div class="ml-2">
                      </div>
                    </div>
                  </th>
              </tr></thead>
              <tbody class="font-size-1" id="myTable">
              	<c:forEach var="dto" items="${dtos}" varStatus="status" >
              	<c:if test="${dto.b_code == 'BD000001'}">
			              	<tr class="text-uppercase font-size-1">
			                  <td class="align-middle">
			                    <div class="custom-control custom-checkbox d-flex align-items-center" style="position:relative;top:-12px;">
			                      <input type="checkbox" class="custom-control-input"  id="invoiceCheckbox0${status.count}" name="p_code" value="${dto.p_code}" >
			                      <label class="custom-control-label" for="invoiceCheckbox0${status.count}" >
			                       <span class="text-hide">Checkbox</span>
			                      </label>
			                    </div>
			                  </td>
			                  <td class="align-middle text-secondary font-weight-normal "><a onClick="location.href='${path}/bd_park/ticketup?p_code=${dto.p_code}'">${dto.p_code}</a></td>
			                  <td class="align-middle text-secondary font-weight-normal ">${dto.b_code}</td>
			                  <td class="align-middle text-secondary font-weight-normal ">
			                  ${dto.hourly}
			                  <c:if test="${dto.p_type == 'M'}">분</c:if>
			                  <c:if test="${dto.p_type == 'H'}">시간</c:if>
			                  <c:if test="${dto.p_type == 'D'}">일</c:if>
			                  </td>
			                  <td class="align-middle text-secondary font-weight-normal ">${dto.price}</td>
			                  <td class="align-middle text-secondary font-weight-normal ">${dto.reg_id}</td>
			                  <td class="align-middle text-secondary font-weight-normal "><fmt:formatDate value="${dto.reg_date}"  pattern="yyyy-MM-dd HH:mm:ss"/></td>
			                  <td class="align-middle text-secondary font-weight-normal ">${dto.update_id}</td>
			                  <td class="align-middle text-secondary font-weight-normal "><fmt:formatDate value="${dto.update_date}"  pattern="yyyy-MM-dd HH:mm:ss"/></td>
			                  <td class="align-middle text-primary"></td>
	              		</c:if>
	              		</tr>
	              		
	              		</c:forEach>
              	
              
                   </tbody>
                    </form>
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
<script type="text/javascript">
	$(function(){
		$("#invoiceToggleAllCheckbox").click(function(){
			$(".custom-control-input").prop("checked", this.checked);
		});
		
		 $("#myInput").on("keyup", function() {
			    var value = $(this).val().toLowerCase();
			    $("#myTable tr").filter(function() {
			      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
			    });
		});
		 
		//
		$("#ticketAddBtn").click(function(){
			//${path}/bd_park/ticketreg
			$("#form").attr("action","${path}/bd_park/ticketreg");
			$("#form").submit();
		});
		
		
		$("#ticketDelBtn").click(function(){
			//${path}/bd_park/ticketdelete'
			$("#form").attr("action","${path}/bd_park/ticketdelete");
			$("#form").submit();
			
		});
		
		$("#serBtn").click(function(){
			$("#form").attr("action","${path}/bd_park/ticketlist");
			$("#form").submit();
		});
	});
	
</script>
</html>