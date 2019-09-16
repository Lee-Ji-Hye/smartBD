<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp" %>
<%@ include file="../../common/headerAdmin.jsp" %>        
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.content{
    outline: 2px dashed #92b0b3 ;
    outline-offset:-10px;  
    text-align: center;
    transition: all .15s ease-in-out;
    width: 300px;
    height: 300px;
    background-color: gray;
}

.content img, .content video{
    width:100%;
    height:100%;
    display:none;
}

</style>

<body>
<!-- ========== MAIN CONTENT ========== -->
  <main id="content" role="main">
    <!-- Upload Form Section -->
    <div class="container space-2">
      <div class="w-lg-75 mx-lg-auto">
        <!-- Title -->
        <div class="text-center mb-9">
          <h1 class="h2 font-weight-medium">parking ticket use </h1>
        </div>
        <!-- End Title -->

        <form id="uploadForm" class="js-validate svg-preloader"  action="${path}/bd_park/ticketusepro?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data">
        
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
          <!-- Listing Agent Information -->
          <div class="mb-7">
            <!-- Title -->
            <div class="border-bottom pb-3 mb-5">
              <h2 class="h6 text-secondary mb-0">주차권 사용</h2>
            </div>
            <!-- End Title -->

            <div class="row">
              <div class="col-md-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-form-message js-focus-state">
                    <label class="form-label" for="listingAgentAgentName">아이디</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingAgentAgentNameLabel">
                          <span class="fas fa-user"></span>
                        </span>
                      </div>
                      <input type="text" class="form-control" name="userid" id="listingAgentAgentName" placeholder="userid" aria-label="ListingAgent agent name" aria-describedby="listingAgentAgentNameLabel" required
                             data-msg="Please enter a listing agent name."
                             data-error-class="u-has-error"
                             data-success-class="u-has-success">
                      </div>
                  </div>
                </div>
                <!-- End Input -->
              </div>

              <div class="col-md-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-form-message js-focus-state">
                    <label class="form-label" for="listingAgentPhoneNumber">주차권 코드</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingAgentPhoneNumberLabel">
                          <span class="fas fa-phone"></span>
                        </span>
                      </div>
                      <input type="text" class="form-control" name="parking_code" id="listingAgentPhoneNumber" placeholder="parking_code" aria-label="Phone number" aria-describedby="listingAgentPhoneNumberLabel" required
                             data-msg="Please enter a phone number."
                             data-error-class="u-has-error"
                             data-success-class="u-has-success"value="${parking_code}">
                      </div>
                  </div>
                </div>
                <!-- End Input -->
              </div>
            </div>

            <div class="row">
              <div class="col-lg-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-focus-state">
                    <label class="form-label" for="listingAgentRealEstateAgency">입출차 코드</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingAgentRealEstateAgencyLabel">
                          <span class="fas fa-briefcase"></span>
                        </span>
                      </div>
                      <input type="text" class="form-control" name="inoutcode" id="listingAgentRealEstateAgency" placeholder="inoutcode" aria-label="Real estate agency" aria-describedby="listingAgentRealEstateAgencyLabel" value="${inoutcode}">
                    </div>
                  </div>
                  
                  <div class="js-focus-state" style="position:relative;top:15px;">
                    <label class="form-label" for="listingAgentRealEstateAgency">시간타입</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingAgentRealEstateAgencyLabel">
                          <span class="fas fa-briefcase"></span>
                        </span>
                      </div>
                       <select type="text" class="form-control" name="p_type" placeholder="p_type" >
					  <c:forEach var="dto" items="${dtos}">
					   <option value="${dto.p_type}">
					   ${dto.p_type}</option>
					  </c:forEach>
                      </select>
                    </div>
                  </div>
                </div>
              </div>
              <!-- End Input -->
				<input type="hidden" name="b_code" value="${sessionScope.b_code}"> 
              <div class="col-lg-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-focus-state">
                    <label class="form-label" for="listingAgentWebsiteAddress">주차 상품 코드</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingAgentWebsiteAddressLabel">
                          <span class="fas fa-globe"></span>
                        </span>
                      </div>
                      <select type="text" class="form-control" name="p_code" placeholder="p_code" >
					  <c:forEach var="dto" items="${dtos}">
					   <option value="${dto.p_code}">
					   ${dto.p_code}</option>
					  </c:forEach>
                      </select>
                    </div>
                  </div>
                </div>
             
               
                <!-- End Input -->
              </div>
            </div>
          </div>
          <!-- End Listing Agent Information -->
          <!-- Upload Images -->
          <div class="mb-7">
            <!-- Title -->
            <div class="border-bottom pb-3 mb-5">
              <h2 class="h6 text-secondary mb-0">차량 번호 이미지 등록</h2>
            </div>
            <!-- End Title -->

            <!-- File Attachment Input -->
            <div class="content">
              <div class="dz-message">
                <img name="img"class="js-svg-injector max-width-10 mb-3" src="#" alt="SVG"
                     data-parent="#uploadForm">
               
              </div>
            </div>
            <!-- End File Attachment Input -->
          </div>
          <!-- End Upload Images -->
		<div class="row">
              <div class="col-md-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-form-message js-focus-state">
                    <label class="form-label" for="listingAgentAgentName">차종</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingAgentAgentNameLabel">
                          <span class="fas fa-user"></span>
                        </span>
                      </div>
                      <input type="text" class="form-control" name="kind_of_car" id="listingAgentAgentName" placeholder="kind_of_car" aria-label="ListingAgent agent name" aria-describedby="listingAgentAgentNameLabel" required="" data-msg="Please enter a listing agent name." data-error-class="u-has-error" data-success-class="u-has-success">
                    </div>
                  </div>
                </div>
                <!-- End Input -->
              </div>

              <div class="col-md-6 mb-3">
                <!-- Input -->
                <div class="form-group">
                  <div class="js-form-message js-focus-state">
                    <label class="form-label" for="listingAgentPhoneNumber">차량 번호</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingAgentPhoneNumberLabel">
                          <span class="fas fa-phone"></span>
                        </span>
                      </div>
                      <input type="text" class="form-control" name="car_number" id="listingAgentPhoneNumber" placeholder="car_number" aria-label="Phone number" aria-describedby="listingAgentPhoneNumberLabel" required="" data-msg="Please enter a phone number." data-error-class="u-has-error" data-success-class="u-has-success">
                    </div>
                  </div>
                </div>
                <!-- End Input -->
              </div>
            </div>
                <!-- End Input -->
                <div class="form-group">
                  <div class="js-form-message js-focus-state">
                    <label class="form-label" for="listingAgentPhoneNumber">비고 </label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="listingAgentPhoneNumberLabel">
                          <span class="fas fa-phone"></span>
                        </span>
                      </div>
                      <input type="text" class="form-control" name="ask" id="listingAgentPhoneNumber" placeholder="ask" aria-label="Phone number" aria-describedby="listingAgentPhoneNumberLabel" required
                             data-msg="Please enter a phone number."
                             data-error-class="u-has-error"
                             data-success-class="u-has-success">
                    </div>
                  </div>
                </div>
              </div>
          <button type="submit" class="btn btn-primary btn-block transition-3d-hover">등록</button>
        </form>
      </div>
    </div>

    
    <!-- End Upload Form Section -->
  </main>
  <!-- ========== END MAIN CONTENT ========== -->
 <%@ include file="../../common/footer.jsp" %> 
</body>
<script type="text/javascript">
$('.content')
.on("dragover", dragOver)
.on("dragleave", dragOver)
.on("drop", uploadFiles);

function dragOver(e){
  e.stopPropagation();
  e.preventDefault();
  if (e.type == "dragover") {
      $(e.target).css({
          "background-color": "black",
          "outline-offset": "-20px"
      });
  } else {
      $(e.target).css({
          "background-color": "gray",
          "outline-offset": "-10px"
      });
  }
}

function uploadFiles(e) {
  e.stopPropagation();
  e.preventDefault();
  dragOver(e);

  e.dataTransfer = e.originalEvent.dataTransfer;
  var files = e.target.files || e.dataTransfer.files;
  if (files.length > 1) {
      alert('하나만 올려라.');
      return;
  }
  if (files[0].type.match(/image.*/)) {
              $(e.target).css({
          "background-image": "url(" + window.URL.createObjectURL(files[0]) + ")",
          "outline": "none",
          "background-size": "100% 100%"
      });
  }else{
    alert('이미지가 아닙니다.');
    return;
  }
}
</script>
</html>