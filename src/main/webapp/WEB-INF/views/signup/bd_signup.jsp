<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <style>
    .map_wrap {position:relative;width:100%;height:350px;}
    .title {font-weight:bold;display:block;}
    .hAddr {position:absolute;left:10px;top:10px;border-radius: 2px;background:#fff;background:rgba(255,255,255,0.8);z-index:1;padding:5px;}
    #centerAddr {display:block;margin-top:2px;font-weight: normal;}
    .bAddr {padding:5px;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
</style>
<%@ include file="../common/setting.jsp"%>
<%@ include file="../common/header.jsp"%>

  <!-- ========== MAIN ========== -->
  <main id="content" role="main">
    <!-- Hire Us Title Section -->
    <!-- 위에영역먹고있던페이지 -->
      <div class="container space-top-2 space-bottom-3 space-top-md-5 space-lg-4">
        <div class="w-md-80 w-lg-50 text-center mx-md-auto">
          <h1 class="text-primary">Got a <span class="font-weight-semi-bold">project</span> for us?</h1>
          <p class="lead">We help brands and platforms turn big ideas into beautiful digital products and experiences.</p>
        </div>
      </div>

      <!-- SVG Bottom Shape -->
      <!-- <figure class="position-absolute right-0 bottom-0 left-0">
        <img class="js-svg-injector" src="../../assets/svg/components/wave-4-bottom.svg" alt="Image Description"
             data-parent="#SVGheroBgElements">
      </figure> -->
      <!-- End SVG Bottom Shape -->                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
    <!-- End Hire Us Title Section -->

    <!-- Hire Us Form Section -->
    <div class="container space-bottom-2">
      <!-- Hire Us Form -->
      <form class="js-validate w-lg-50 mx-auto" action="${path}/member/bdmn/instpro" method="post" name="signUpForm">
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">                  

        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	건물명
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="b_name" placeholder="건물명" required>
        </div>
        <!-- End Input -->
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	건물고유번호
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="b_unique" placeholder="건물고유번호" required>
        </div>
        <!-- End Input -->
        
      
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	소유자(명칭)
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="b_owner" placeholder="소유자(명칭)" required>
        </div>
        <!-- End Input -->
        
      
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	소유자고유번호(등록번호)
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="b_regnum" placeholder="소유자고유번호(등록번호)" required>
        </div>
        <!-- End Input -->
        
      
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	대지면적
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="b_landarea" placeholder="대지면적" required>
        </div>
        <!-- End Input -->
        
      
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	건축면적
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="b_buildarea" placeholder="건축면적" required>
        </div>
        <!-- End Input -->
        
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	건축규모
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="b_buildscale" placeholder="건축규모" required>
        </div>
        <!-- End Input -->
        
      
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	건물 층수
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="b_floor" placeholder="건물층수" required>
        </div>
        <!-- End Input -->
        
      
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	준공년도
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="b_year" placeholder="준공년도" required>
        </div>
        <!-- End Input -->
      
      
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	주차장 유무
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="b_park" placeholder="주차장 유무" required>
        </div>
        <!-- End Input -->
      
      <!-- 비밀번호 -->
      
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	승강기 유무
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="b_elev" placeholder="승강기 유무" required>
        </div>
        <!-- End Input -->

        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	난방종류
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="b_heat" placeholder="난방종류" required>
        </div>
        <!-- End Input -->

        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	교통편
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="b_traffic" placeholder="교통편" required>
        </div>
        
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
				광역 시 도
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="b_area1" placeholder="광역 시 도" required>
        </div>
        
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	구, 동
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="b_area2" placeholder="구, 동" required>
        </div>
        
        <!-- End Input -->
        
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	주소
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="b_address" placeholder="주소" required>
        </div>
        
        <!-- End Input -->


        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	위도
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="b_lat" placeholder="위도" required>
        </div>
        
        <!-- End Input -->

        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	경도
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="b_lon" placeholder="경도" required>
        </div>
        <!-- End Input -->

<div class="map_wrap">
    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
    <div class="hAddr">
        <span class="title">지도중심기준 행정동 주소정보</span>
        <span id="centerAddr"></span>
    </div>
</div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e4ab5e67439dc7eb644a4c54304bf22f&libraries=services"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
        level: 1 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

var marker = new kakao.maps.Marker(), // 클릭한 위치를 표시할 마커입니다
    infowindow = new kakao.maps.InfoWindow({zindex:1}); // 클릭한 위치에 대한 주소를 표시할 인포윈도우입니다

// 현재 지도 중심좌표로 주소를 검색해서 지도 좌측 상단에 표시합니다
searchAddrFromCoords(map.getCenter(), displayCenterInfo);

// 지도를 클릭했을 때 클릭 위치 좌표에 대한 주소정보를 표시하도록 이벤트를 등록합니다
kakao.maps.event.addListener(map, 'click', function(mouseEvent) {
    searchDetailAddrFromCoords(mouseEvent.latLng, function(result, status) {
        if (status === kakao.maps.services.Status.OK) {
            var detailAddr = !!result[0].road_address ? '<div>도로명주소 : ' + result[0].road_address.address_name + '</div>' : '';
            detailAddr += '<div>지번 주소 : ' + result[0].address.address_name + '</div>';
            
            var content = '<div class="bAddr">' +
                            '<span class="title">법정동 주소정보</span>' + 
                            detailAddr + 
                        '</div>';

            // 마커를 클릭한 위치에 표시합니다 
            marker.setPosition(mouseEvent.latLng);
            marker.setMap(map);

            // 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
            infowindow.setContent(content);
            infowindow.open(map, marker);
        }   
    });
});

// 중심 좌표나 확대 수준이 변경됐을 때 지도 중심 좌표에 대한 주소 정보를 표시하도록 이벤트를 등록합니다
kakao.maps.event.addListener(map, 'idle', function() {
    searchAddrFromCoords(map.getCenter(), displayCenterInfo);
});

function searchAddrFromCoords(coords, callback) {
    // 좌표로 행정동 주소 정보를 요청합니다
    geocoder.coord2RegionCode(coords.getLng(), coords.getLat(), callback);         
}

function searchDetailAddrFromCoords(coords, callback) {
    // 좌표로 법정동 상세 주소 정보를 요청합니다
    geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
}

// 지도 좌측상단에 지도 중심좌표에 대한 주소정보를 표출하는 함수입니다
function displayCenterInfo(result, status) {
    if (status === kakao.maps.services.Status.OK) {
        var infoDiv = document.getElementById('centerAddr');

        for(var i = 0; i < result.length; i++) {
            // 행정동의 region_type 값은 'H' 이므로
            if (result[i].region_type === 'H') {
                infoDiv.innerHTML = result[i].address_name;
                break;
            }
        }
    }    
}
</script>
		
        
          <div class="mb-2">
            <button type="button" name="btnSubmit" class="btn btn-primary transition-3d-hover">Let's Start Working Together</button>
          </div>
          <p class="small">We'll get back to you in 1-2 business days.</p>
        </div>
      </form>
      <!-- End Hire Us Form -->
    </div>
    <!-- End Hire Us Form Section -->
  </main>
  <!-- ========== END MAIN ========== -->


<%@ include file="../common/footer.jsp"%>

<script type="text/javascript">
//submit event 처리
document.signUpForm.btnSubmit.addEventListener("click", function() {
	var fom = document.signUpForm;
	fom.submit();
});
</script>
</body>
</html>