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

</style>
<script type="text/javascript">
function sample_string_view(ans, typea) { 

	var obj = document.getElementById(typea); 
	if (ans) { 
	obj.style.top = window.event.clientY-310 + document.body.scrollTop + 10; 
	obj.style.left = window.event.clientX-470 + document.body.scrollLeft + 10; 
	obj.style.display = "block"; 
	} 
	else { 
	obj.style.display = "none"; 
	} 
	} 
	function sample_string_move(objName) { 
	var obj = document.getElementById(objName); 
	if (obj.style.display == "block") { 
	obj.style.top = window.event.clientY-310 + document.body.scrollTop + 10; 
	obj.style.left = window.event.clientX-470 + document.body.scrollLeft + 10; 
	} 
	} 

</script>
<body>
<!-- ========== MAIN ========== -->
  <main id="content" role="main">
    <!-- Breadcrumb Section -->
    <div class="bg-primary">
    <div class="bg-primary" style="background-color: !important;">
      <div class="container space-top-1 pb-3">
        <div class="row">
          <div class="col-lg-5 order-lg-2 text-lg-right mb-4 mb-lg-0">
            <div class="d-flex d-lg-inline-block justify-content-between justify-content-lg-end align-items-center align-items-lg-start">
              

              <!-- Breadcrumb Nav Toggle Button -->
              <div class="d-lg-none">
                <button type="button" class="navbar-toggler btn u-hamburger u-hamburger--white" aria-label="Toggle navigation" aria-expanded="false" aria-controls="breadcrumbNavBar" data-toggle="collapse" data-target="#breadcrumbNavBar">
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
                <img class="img-fluid rounded-circle" src="/smart/resources/images/parking/parking.png" alt="Image Description">
              </div>
              <div class="media-body">
                <h1 class="h3 text-white font-weight-medium mb-1">주차장>입출차관리</h1>
                <span class="d-block text-white">dudwnddl1101@gmail.com</span>
              </div>
            </div>
            <!-- End User Info -->
          </div>
        </div>
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
          <div style="margin-right:20px;">
           <button type="button" class="btn btn-sm btn-primary transition-3d-hover mr-1" onclick="window.location='${path}/bd_park/intromn/insertInOutForm'" style="position:relative;top:10px;">등록</button>
           <button type="submit" class="btn btn-sm btn-soft-secondary transition-3d-hover" id="deleteBtn" style="position:relative;top:10px;">삭제</button>
          </div>
         <!-- End Buttons -->
        </div>
      

		<form method="get" id="form" name="form" >
		  	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			<input class="form-control" id="myInput" name ="sertext"  
				   type="text" placeholder="Search.." value="${sertext}"
				   style="width:300px;position:relative;top: -25px;" >
		    <input type="button" 
		    	   class="btn btn-sm btn-soft-secondary transition-3d-hover" 
		    	   id="serBtn" 
		    	   style="position: relative;left:20px;top:-20px;"
		    	   value="검색"   />
		    
		    <input type="hidden" name="b_code" value="${sessionScope.b_code}"/>
		    
	        <div class="card-body p-4">
	          <!-- Activity Table -->
	          <div class="table-responsive-md u-datatable">
	            <table class="js-datatable table table-borderless u-datatable__striped u-datatable__content u-datatable__trigger mb-5" data-dt-info="#datatableInfo" data-dt-search="#datatableSearch" data-dt-entries="#datatableEntries" data-dt-page-length="12" data-dt-is-responsive="false" data-dt-is-show-paging="true" data-dt-details-invoker=".js-datatabale-details" data-dt-select-all-control="#invoiceToggleAllCheckbox" data-dt-pagination="datatablePagination" data-dt-pagination-classes="pagination mb-0" data-dt-pagination-items-classes="page-item" data-dt-pagination-links-classes="page-link" data-dt-pagination-next-classes="page-item" data-dt-pagination-next-link-classes="page-link" data-dt-pagination-next-link-markup="<span aria-hidden=&quot;true&quot;>»</span>" data-dt-pagination-prev-classes="page-item" data-dt-pagination-prev-link-classes="page-link" data-dt-pagination-prev-link-markup="<span aria-hidden=&quot;true&quot;>«</span>" style="text-align:center;">
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
	                    <div class="">
	                      	입출차코드
	                      <div class="ml-2">
	                      </div>
	                    </div>
	                  </th>
	                  <th scope="col" class="font-weight-medium">
	                    <div class="">
	                      	차번호
	                      <div class="ml-2">
	                      </div>
	                    </div>
	                  </th>
	                  <th scope="col" class="font-weight-medium">
	                    <div class="">
	                      	입차시간
	                      <div class="ml-2">
	                      </div>
	                    </div>
	                  </th>
	                  <th scope="col" class="font-weight-medium">
	                    <div class="">
	                      	주차시간
	                      <div class="ml-2">
	                      </div>
	                    </div>
	                  </th>
	                  <th scope="col" class="font-weight-medium">
	                    <div class="">
	                      	결제시간
	                      <div class="ml-2">
	                      </div>
	                    </div>
	                  </th>
	                  <th scope="col" class="font-weight-medium">
	                    <div class="">
	                      	출차시간
	                      <div class="ml-2">
	                      </div>
	                    </div>
	                  </th>
	                  <!-- <th scope="col" class="font-weight-medium">
	                    <div class="d-flex justify-content-between align-items-center">
	                      	주차위치
	                    <div class="ml-2">
	                    </div>
	                    </div>
	                  </th> -->
	                  <th scope="col" class="font-weight-medium">
	                    <div class="">
	                      	상태
	                      <div class="ml-2">
	                      </div>
	                    </div>
	                  </th>
	                  <th scope="col" class="font-weight-medium">
	                    <div class="d-flex justify-content-between align-items-center">
	                      	-
	                      <div class="ml-2">
	                      </div>
	                    </div>
	                  </th>
	              </tr></thead>
	              <tbody class="font-size-1" id="myTable">
	              <c:set var="num" value="0"/>
	              	<c:forEach var="dto" items="${dtos}" varStatus="status" >
	              	<c:set var="num" value="${num+1}" />
				              	<tr class="text-uppercase font-size-1">
				                  <td class="align-middle">
				                    <div class="custom-control custom-checkbox d-flex align-items-center" style="position:relative;top:-12px;">
				                      <input type="checkbox" class="custom-control-input chkBtn" inoutcode="${dto.inoutcode}" id="invoiceCheckbox0${status.count}" name="p_code" value="${dto.inoutcode}" >
				                      <label class="custom-control-label" for="invoiceCheckbox0${status.count}" >
				                       <span class="text-hide">Checkbox</span>
				                      </label>
				                    </div>
				                  </td>
				                  <td class="align-middle text-secondary font-weight-normal ">${dto.inoutcode}</td>
				                  <td class="align-middle text-secondary font-weight-normal ">
				                  
				                   <div id="Text${num}" class="im1" style="display: none; left: 48px; position: absolute; top: 84px;"> 
									<img alt="등록된 이미지가 없습니다." src="${resourceImg}/parking/${dto.car_number_img}" width="150px;"height="100px;" onerror='this.src="${resourceImg}/common/noimage_1.jpg"'>
									</div>
										<a href="#" onmouseover="sample_string_view(true, 'Text${num}');" onmousemove="sample_string_move('Text${num}');" onmouseout="sample_string_view(false,'Text${num}');">${dto.car_number}</a>
								</td>
				                  <td class="align-middle text-secondary font-weight-normal ">${dto.in_time}</td>
				                  <td class="align-middle text-secondary font-weight-normal ">
				                  	<c:if test="${dto.out_time == null}">
					                  	<c:if test="${dto.stayHours!=''}">
					                  		${dto.stayHours}시간
					                  	</c:if>
					                  	<c:if test="${dto.stayMin!=''}">
					                  		${(dto.stayMin == '')? 0 : dto.stayMin}분
					                  	</c:if>
				                  	</c:if>
				                  	<c:if test="${dto.out_time != null}">
				                  		<c:if test="${dto.stayHours!=''}">
					                  		${dto.payHours}시간
					                  	</c:if>
					                  	<c:if test="${dto.stayMin!=''}">
					                  		${(dto.payMin == '')? 0 : dto.payMin}분
					                  	</c:if>
				                  	</c:if>
				                  </td>
				                  <td class="align-middle text-secondary font-weight-normal ">
				                  	<c:if test="${dto.payHours!=''}">
				                  		${dto.payHours}시간
				                  	</c:if>
				                  	${(dto.payMin == '')? 0 : dto.payMin}분
								  </td>
								  <td class="align-middle text-secondary font-weight-normal ">
				                  	<c:if test="${dto.out_time==null}">
				                  		--:--:--
				                  	</c:if>
				                  	<c:if test="${dto.out_time!=null}">
				                  		${dto.out_time}
				                  	</c:if>
								  </td>
				                  <%-- <td class="align-middle text-secondary font-weight-normal ">${dto.parking_location}</td> --%>
				                 <td class="align-middle text-secondary font-weight-normal ">
				                  	<c:if test="${dto.out_time != null}">
				                  		출차 완료
				                  	</c:if>
				                 	<c:if test="${dto.out_time == null && dto.is_out == 'Y'}">
				                 		출차가능
				                 	</c:if>
				                 	<c:if test="${dto.out_time == null && dto.is_out == 'N'}">
				                 		출차불가
				                 	</c:if>
				                 </td>
				                 <td class="align-middle text-secondary font-weight-normal ">
				                 	<c:if test="${dto.is_out == 'Y' && dto.out_time == null}">
				                 		<button type="button" class="outBtn" class="btn btn-sm btn-primary transition-3d-hover mr-1" inoutcode="${dto.inoutcode}">출차</button>		
				                 	</c:if>
				                 </td>
		              		</tr>
		              		</c:forEach>
	              	
	              
	                   </tbody>
	              </table>
	            </div>
	            <!-- End Activity Table -->
	              ${paging.html_mk_page()}
	            <!-- Pagination -->
	            <!-- End Pagination -->
	          </div>

          </form>
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
       
      
      $("#serBtn").click(function(){
         $("#form").attr("action","${path}/bd_park/ticketlist");
         $("#form").submit();
      });
      
      $(".outBtn").click(function(){
         
         var inoutcode = $(this).attr("inoutcode");
         
         if(inoutcode != "") {
            $.ajax({
                url : "/smart/bd_park/modiOutStatus"
               ,type : "GET"
               ,data : {"inoutcode" : inoutcode }
               ,dataType : "json"
               ,success:function(e){
                  console.log(e);
                  if(e == 1) {
                     alert("출차 완료.");
                  } else {
                     alert("출차 오류.");
                  }
                  location.reload();
                 }
               ,error:function(request,status,error){
                       alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
               }
            });
            
         }
         
      });
      
      $("#deleteBtn").click(function(){
         
         if(confirm('정말 삭제하시겠습니까?')) {
            var inout_codes = "";
            $.each($(".chkBtn"), function(i, v){
               var is_checked = $(v).is(":checked");
               if(is_checked) {
                  if(inout_codes != "") inout_codes += ",";
                  inout_codes += "'" + $(v).attr("inoutcode")+"'";
               }
            });

            $.ajax({
                url : "/smart/bd_park/inoutDelete"
               ,type : "GET"
               ,data : {"inout_codes" : inout_codes}
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
</html>