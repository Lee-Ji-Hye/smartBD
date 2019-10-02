
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp" %>
<%@ include file="../../common/headerAdmin.jsp" %>

	<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  
	<!-- ========== MAIN ========== -->
	<script src="/smart/resources/bootstrap/js/jquery-3.4.1.min.js"></script>
	

	<main id="content" role="main">
    <!-- Breadcrumb Section -->
    <div class="bg-primary" style="background-color: #b9d2ec!important;">
      <div class="container space-top-1 pb-3">
        <div class="row">
          <div class="col-lg-5 order-lg-2 text-lg-right mb-4 mb-lg-0">
            <div class="d-flex d-lg-inline-block justify-content-between justify-content-lg-end align-items-center align-items-lg-start">
              

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
                <img class="img-fluid rounded-circle" src="${resourceImg}/room/pay.png" alt="Image Description">
              </div>
              <div class="media-body">
                <h1 class="h3 text-white font-weight-medium mb-1">납부 관리</h1>
                <span class="d-block text-white">bk2573@naver.com</span>
              </div>
            </div>
            <!-- End User Info -->
          </div>
        </div>
      </div>
    </div>
    
    
    <div class="container mt-3">
  <!-- <h2>Filterable Table</h2>
  <p>Type something in the input field to search the table for first names, last names or emails:</p>   -->
  <input class="form-control" id="myInput" type="text" placeholder="Search..">
  <br>
  <table class="js-datatable table table-borderless u-datatable__striped u-datatable__content u-datatable__trigger mb-5 table-hover" id="payTable">
    <thead>
      <tr >
        <th  style="border-radius: 10px 0px 0px 10px";>호수</th>
        
        <th>연락처</th>
        <th>입주일</th>
        <th>만기일</th>
        <th>보증금</th>
        <th>월세</th>
        <th>관리비</th>
        <th>권리금(상가만)</th>
        <th>계약일</th>
        <!-- <th>미납내역확인</th> -->
        <!-- <th style="border-radius: 0px 10px 10px 0px";>비고</th> -->
      </tr>
    </thead>
    <tbody id="myTable">
    
    <c:forEach var="dto" items="${dto}">
      <tr style="cursor: pointer;" class="showDetail" rt_code="${dto.rt_code}">
        <!-- <td class="align-middle text-secondary"><a href="#">101</a></td> -->
        <td class="align-middle text-secondary" id="btn">${dto.r_name}</td>
        
        <td class="align-middle text-secondary">${dto.rt_mobile}</td>
        <td class="align-middle text-primary">${dto.rt_date1}</td>
        <td class="align-middle text-danger">${dto.rt_date2}</td>
        <td class="align-middle text-secondary">${dto.rt_deposit} ETH</td>
        <td class="align-middle text-secondary">${dto.r_price} ETH</td>
        <td class="align-middle text-secondary">${dto.r_ofer_fee} ETH</td>
        <td class="align-middle text-secondary">${dto.r_premium} ETH</td>
        <td class="align-middle text-secondary">${dto.r_regdate}</td>
      </tr>
      </c:forEach>
    </tbody>
  </table>
  
  
</div>



    <!-- End Content Section -->
    
    <div id="result">
	<!-- 결과 출력 위치 -->
	</div>
	
  </main>
	
<script>
$(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
  
; 
  
  //btn클릭했을때
  $('.showDetail').click(function(){
	 var rt_code =  $(this).attr('rt_code');
	  
		$.ajax({
			url : '${pageContext.request.contextPath}/bd_office/paydetail',//컨트롤러
			type : 'GET',
			data : {"rt_code": rt_code},
			dataType : 'text', //전송할 데이터 타입
			success : function(result){	//콜백함수 - 정상적으로 처리되었을 때의 결과가 result에 들어간다.
				//변수명이 반드시 .html(result) 일 필요는 없으나 위 콜백 함수의 변수명
				$('#result').html(result);
			},
			error: function(){
				alert('오류');
			}
		});
	});
});
</script>	
	<!-- ========== END MAIN ========== -->
<%@ include file="../../common/footer.jsp" %>