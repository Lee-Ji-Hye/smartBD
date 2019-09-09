<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/setting.jsp"%>
<%@ include file="../common/header.jsp"%>
    
<style>
	.map_wrap, .map_wrap * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
	.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
	/* .map_wrap {position:relative;width:100%;height:500px;} */
	#menu_wrap {height:500px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255, 0.7);font-size:12px;border-radius: 10px;}/* position:absolute;top:0;left:0;bottom:0; */
	.bg_white {background:#fff;}
	#menu_wrap hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}
	#menu_wrap .option{text-align: center;}
	#menu_wrap .option p {margin:10px 0;}  
	#menu_wrap .option button {margin-left:5px;}
	
	.title {font-weight:bold;display:block;}
    .hAddr {position:absolute;left:10px;top:10px;border-radius: 2px;background:#fff;background:rgba(255,255,255,0.8);z-index:1;padding:5px;}
    #centerAddr {display:block;margin-top:2px;font-weight: normal;}
    .bAddr {padding:5px;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
	
	
	#placesList li {list-style: none;}
	#placesList .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}
	#placesList .item span {display: block;margin-top:4px;}
	#placesList .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
	#placesList .item .info{padding:10px 0 10px 55px;}
	#placesList .info .gray {color:#8a8a8a;}
	#placesList .info .jibun {padding-left:26px;background:url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
	#placesList .info .tel {color:#009900;}
	#placesList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}
	#placesList .item .marker_1 {background-position: 0 -10px;}
	#placesList .item .marker_2 {background-position: 0 -56px;}
	#placesList .item .marker_3 {background-position: 0 -102px}
	#placesList .item .marker_4 {background-position: 0 -148px;}
	#placesList .item .marker_5 {background-position: 0 -194px;}
	#placesList .item .marker_6 {background-position: 0 -240px;}
	#placesList .item .marker_7 {background-position: 0 -286px;}
	#placesList .item .marker_8 {background-position: 0 -332px;}
	#placesList .item .marker_9 {background-position: 0 -378px;}
	#placesList .item .marker_10 {background-position: 0 -423px;}
	#placesList .item .marker_11 {background-position: 0 -470px;}
	#placesList .item .marker_12 {background-position: 0 -516px;}
	#placesList .item .marker_13 {background-position: 0 -562px;}
	#placesList .item .marker_14 {background-position: 0 -608px;}
	#placesList .item .marker_15 {background-position: 0 -654px;}
	#pagination {margin:10px auto;text-align: center;}
	#pagination a {display:inline-block;margin-right:10px;}
	#pagination .on {font-weight: bold; cursor: default;color:#777;}
	
	
	
	
	
	
	.covers {
    background: rgba(0,0,0,0.7);
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: 9999;
	}
	.covers {
    background: rgba(0,0,0,0.7);
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: 9999;
	}
	.lay_abr_resch_box {
    width: 387px;
    height: 160px;
    background: #fff;
    text-align: center;
    position: absolute;
    top: 50%;
    left: 50%;
    margin: -90px 0 0 -200px;
    padding-top: 20px;
	}
	.lay_abr_resch_box {
    width: 387px;
    height: 160px;
    background: #fff;
    text-align: center;
    position: absolute;
    top: 50%;
    left: 50%;
    margin: -90px 0 0 -200px;
    padding-top: 20px;
	}
	.lay_abr_resch_box img[src*="ic_loading2"] {
    width: 70px;
	}
	.lay_abr_resch_box img[src*="ic_loading2"] {
    width: 70px;
	}
</style>
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
    <div class="container">
      <!-- Hire Us Form -->
      <form class="js-validate mx-auto" action="${path}/member/bdmn/instpro" method="post" name="signUpForm">
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
      
                   
		<div class="row js-form-message mb-6">
	        <!-- Input -->
	        <div class="js-form-message col">
	          <label class="form-label">
	            	건물명
	            <span class="text-danger">*</span>
	          </label>
	
	          <input type="text" class="form-control" name="b_name" placeholder="건물명" required>
	        </div>
	        <!-- End Input -->
	        <!-- Input -->
	        <div class="js-form-message col">
	          <label class="form-label">
	            	건물고유번호
	            <span class="text-danger">*</span>
	          </label>
	
	          <input type="text" class="form-control" name="b_unique" placeholder="건물고유번호" required>
	        </div>
	        <!-- End Input -->
        </div>
      
        <!-- Input -->
        
		<div class="row js-form-message mb-6">
	        <div class="js-form-message col">
	          <label class="form-label">
	            	소유자(명칭)
	            <span class="text-danger">*</span>
	          </label>
	
	          <input type="text" class="form-control" name="b_owner" placeholder="소유자(명칭)" required>
	        </div>
	        <!-- End Input -->
	        
	      
	        <!-- Input -->
	        <div class="js-form-message col">
	          <label class="form-label">
	            	소유자고유번호(등록번호)
	            <span class="text-danger">*</span>
	          </label>
	
	          <input type="text" class="form-control" name="b_regnum" placeholder="소유자고유번호(등록번호)" required>
	        </div>
	        <!-- End Input -->
	    </div>
        
      
		<div class="row js-form-message mb-6">
	        <!-- Input -->
	        <div class="js-form-message col">
	          <label class="form-label">
	            	대지면적
	            <span class="text-danger">*</span>
	          </label>
	
	          <input type="text" class="form-control" name="b_landarea" placeholder="대지면적" required>
	        </div>
	        <!-- End Input -->
	        
	      
	        <!-- Input -->
	        <div class="js-form-message col">
	          <label class="form-label">
	            	건축면적
	            <span class="text-danger">*</span>
	          </label>
	
	          <input type="text" class="form-control" name="b_buildarea" placeholder="건축면적" required>
	        </div>
	        <!-- End Input -->
        </div>
        
        
		<div class="row js-form-message mb-6">
	        <!-- Input -->
	        <div class="js-form-message col">
	          <label class="form-label">
	            	건축규모
	            <span class="text-danger">*</span>
	          </label>
	
	          <input type="text" class="form-control" name="b_buildscale" placeholder="건축규모" required>
	        </div>
	        <!-- End Input -->
	        
	      
	        <!-- Input -->
	        <div class="js-form-message col">
	          <label class="form-label">
	            	건물 층수
	            <span class="text-danger">*</span>
	          </label>
	
	          <input type="text" class="form-control" name="b_floor" placeholder="건물층수" required>
	        </div>
	        <!-- End Input -->
        </div>
        
        
		<div class="row js-form-message mb-6">
	        <!-- Input -->
	        <div class="js-form-message col">
	          <label class="form-label">
	            	준공년도
	            <span class="text-danger">*</span>
	          </label>
	
	          <input type="text" class="form-control" name="b_year" placeholder="준공년도" required>
	        </div>
	        <!-- End Input -->
	      
	      
	        <!-- Input -->
	        <div class="js-form-message col">
	          <label class="form-label">
	            	주차장 유무
	            <span class="text-danger">*</span>
	          </label>
	
	          <input type="text" class="form-control" name="b_park" placeholder="주차장 유무" required>
	        </div>
	        <!-- End Input -->
      
       
	        <!-- Input -->
	        <div class="js-form-message col">
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
	    </div>

        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
            	교통편
            <span class="text-danger">*</span>
          </label>

          <input type="text" class="form-control" name="b_traffic" placeholder="교통편" required>
        </div>
        
        <div class="jumbotron">
    <div class="container">
		<div class="row">
	        <div class="map_wrap col-md-8">
			    <div id="map" style="width:100%;height:500px;"></div><!--  style="width:100%;height:100%;position:relative;overflow:hidden;" -->
			    
			    <div class="hAddr">
			        <span class="title">지도중심기준 행정동 주소정보</span>
			        <span id="centerAddr"></span>
			    </div>
			</div>
		    <div id="menu_wrap" class = "col-md-4"><!-- class="bg_white" -->
		        <div class="option">
		            <div>
		                    키워드 : <input type="text" value="이태원 맛집" id="keyword" size="15"> 
		                  <button type="button" onclick="searchPlaces(); return false;">검색하기</button>
		            </div>
		        </div>
		        <hr>
		        <ul id="placesList"></ul>
		        <div id="pagination"></div>
		    </div>
		</div>
    </div>
</div>
        
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
				광역 시 도
            <span class="text-danger">*</span>
          </label>
          <%@include file="../common/area_1.jsp" %>
        </div>
        
        <!-- Input -->
        <div class="js-form-message mb-6">
          <label class="form-label">
				구, 동
            <span class="text-danger">*</span>
          </label>
          	<select class="form-control custom-select" required
                      data-msg="Please select month."
                      data-error-class="u-has-error"
                      data-success-class="u-has-success"
                      name="b_area2"
                      id="b_area2">
                <option value="">지역선택</option>
              </select>
        </div>
        
        
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
        
          <div class="mb-2">
            <button type="button" name="btnSubmit" class="btn btn-primary transition-3d-hover">Let's Start Working Together</button>
          </div>
          <p class="small">We'll get back to you in 1-2 business days.</p>
      </form>
    </div>
      <!-- End Hire Us Form -->
    <!-- End Hire Us Form Section -->
  </main>
  <!-- ========== END MAIN ========== -->
  

  
  <!-- 프로그래스 바 -->
  <%-- <div id="progressBar" class="lay_abr_research"> <!-- 프로그래스바가 보이려면  covers 클래스를 추가하면됨 -->
    <div class="lay_abr_resch_box" style="height: auto;">
        <p><img src="${resource}/images/icon/ic_loading2.gif" alt="로딩이미지"></p>
        <p style="margin-top: 18px; margin-bottom: 18px;"><!-- <img src="../../images/search/img_research.gif" alt="검색 숙소 중 고객님께 가장 잘 어울리는 숙소를 업데이트 중입니다."> --></p>
        <div id="prograss_bar" style="width: 100%; padding: 0; background-color: #E7F1FB;">
            <div class="bar" style="width: 0; height: 25px; background-color: #58a2ec; color: #FFF; font-weight: bold; text-align: center;"></div>
        </div>
    </div>
</div> --%>


<%@ include file="../common/footer.jsp"%>

<script type="text/javascript" src="${resource}/js/selectCity.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e4ab5e67439dc7eb644a4c54304bf22f&libraries=services"></script>
<script>
	
/* 	window.onload = function() { 
		//
		var progressBar = document.getElementById( 'progressBar' );
		//progressBar.classList.add( 'covers' ); //css =>  커버 클래스 추가
		progressBar.classList.remove( 'covers' ); //css => covers 제거
	} */

	

	// 마커를 담을 배열입니다
	var markers = [];
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = {
	        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };  
	
	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	

	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();
	
	var marker = new kakao.maps.Marker();
	
	// 장소 검색 객체를 생성합니다
	var ps = new kakao.maps.services.Places();  
	
	// 리스트 데이터 객체
	var bdList;
	
	// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
	var infowindow = new kakao.maps.InfoWindow({zIndex:1});
	
	// 키워드로 장소를 검색합니다
	searchPlaces();
	
	kakao.maps.event.addListener(map, 'click', function(mouseEvent) {
	    searchDetailAddrFromCoords(mouseEvent.latLng, function(result, status) {
	        if (status === kakao.maps.services.Status.OK) {

			    var keyword = document.getElementById('keyword').value;
			    keyword = result[0].address.address_name;
		        console.dir(result[0].address.address_name);
			    ps.keywordSearch(keyword, placesSearchCB);
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

	
	// 키워드 검색을 요청하는 함수입니다
	function searchPlaces() {
	
	    var keyword = document.getElementById('keyword').value;
	
	    if (!keyword.replace(/^\s+|\s+$/g, '')) {
	        alert('키워드를 입력해주세요!');
	        return false;
	    }
	
	    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
	    ps.keywordSearch( keyword, placesSearchCB); 
	}
	
	// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
	function placesSearchCB(data, status, pagination) {
	    if (status === kakao.maps.services.Status.OK) {
	
	        // 정상적으로 검색이 완료됐으면
	        // 검색 목록과 마커를 표출합니다
	        console.dir(data);
	        console.dir(pagination);
	        displayPlaces(data);
	
	        // 페이지 번호를 표출합니다
	        displayPagination(pagination);
	
	    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
	
	        alert('검색 결과가 존재하지 않습니다.');
	        return;
	
	    } else if (status === kakao.maps.services.Status.ERROR) {
	
	        alert('검색 결과 중 오류가 발생했습니다.');
	        return;
	
	    }
	}
	
	// 검색 결과 목록과 마커를 표출하는 함수입니다
	function displayPlaces(places) {
		//객체 추가
		bdList = JSON.parse(JSON.stringify(places));
	
	    var listEl = document.getElementById('placesList'),
	    menuEl = document.getElementById('menu_wrap'),
	    fragment = document.createDocumentFragment(),
	    bounds = new kakao.maps.LatLngBounds(), 
	    listStr = '';
	    
	    // 검색 결과 목록에 추가된 항목들을 제거합니다
	    removeAllChildNods(listEl);
	
	    // 지도에 표시되고 있는 마커를 제거합니다
	    removeMarker();
	    
	    for ( var i=0; i<places.length; i++ ) {
	
	        // 마커를 생성하고 지도에 표시합니다
	        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
	            marker = addMarker(placePosition, i), 
	            itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다
	
	        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
	        // LatLngBounds 객체에 좌표를 추가합니다
	        bounds.extend(placePosition);
	
	        // 마커와 검색결과 항목에 mouseover 했을때
	        // 해당 장소에 인포윈도우에 장소명을 표시합니다
	        // mouseout 했을 때는 인포윈도우를 닫습니다
	        (function(marker, title) {
	            kakao.maps.event.addListener(marker, 'mouseover', function() {
	                displayInfowindow(marker, title);
	            });
	
	            kakao.maps.event.addListener(marker, 'mouseout', function() {
	                infowindow.close();
	            });
	
	            itemEl.onmouseover =  function () {
	                displayInfowindow(marker, title);
	            };
	
	            itemEl.onmouseout =  function () {
	                infowindow.close();
	            };
	        })(marker, places[i].place_name);
	
	        fragment.appendChild(itemEl);
	    }
	
	    // 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
	    listEl.appendChild(fragment);
	    menuEl.scrollTop = 0;
		
	    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
	    map.setBounds(bounds);
	}
	
	// 검색결과 항목을 Element로 반환하는 함수입니다
	function getListItem(index, places) {
		
	    var el = document.createElement('li'),
	    itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
	                '<div class="info">' +
	                '   <h5>' + places.place_name + '</h5>';
	
	    if (places.road_address_name) {
	        itemStr += '    <span onclick=listItemOnclick('+ index +')>' + places.road_address_name + '</span>' +
	                    '   <span class="jibun gray">' +  places.address_name  + '</span>';
	    } else {
	        itemStr += '    <span>' +  places.address_name  + '</span>'; 
	    }
	                 
	      itemStr += '  <span class="tel">' + places.phone  + '</span>' +
	                '</div>';           
	
	    el.innerHTML = itemStr;
	    el.className = 'item';
	
	    return el;
	}
	
	// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
	function addMarker(position, idx, title) {
	    var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
	        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
	        imgOptions =  {
	            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
	            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
	            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
	        },
	        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
	            marker = new kakao.maps.Marker({
	            position: position, // 마커의 위치
	            image: markerImage 
	        });
	
	    marker.setMap(map); // 지도 위에 마커를 표출합니다
	    markers.push(marker);  // 배열에 생성된 마커를 추가합니다
	
	    return marker;
	}
	
	// 지도 위에 표시되고 있는 마커를 모두 제거합니다
	function removeMarker() {
	    for ( var i = 0; i < markers.length; i++ ) {
	        markers[i].setMap(null);
	    }   
	    markers = [];
	}
	
	// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
	function displayPagination(pagination) {
	    var paginationEl = document.getElementById('pagination'),
	        fragment = document.createDocumentFragment(),
	        i; 
	
	    // 기존에 추가된 페이지번호를 삭제합니다
	    while (paginationEl.hasChildNodes()) {
	        paginationEl.removeChild (paginationEl.lastChild);
	    }
	
	    for (i=1; i<=pagination.last; i++) {
	        var el = document.createElement('a');
	        el.href = "#";
	        el.innerHTML = i;
	
	        if (i===pagination.current) {
	            el.className = 'on';
	        } else {
	            el.onclick = (function(i) {
	                return function() {
	                    pagination.gotoPage(i);
	                }
	            })(i);
	        }
	
	        fragment.appendChild(el);
	    }
	    paginationEl.appendChild(fragment);
	}
	
	// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
	// 인포윈도우에 장소명을 표시합니다
	function displayInfowindow(marker, title) {
	    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';
	
	    infowindow.setContent(content);
	    infowindow.open(map, marker);
	}
	
	 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
	function removeAllChildNods(el) {   
	    while (el.hasChildNodes()) {
	        el.removeChild (el.lastChild);
	    }
	}
	
	function listItemOnclick(index){
		/*
		address_name: "서울 용산구 이태원동 34-87"
		category_group_code: "CT1"
		category_group_name: "문화시설"
		category_name: "문화,예술 > 문화시설 > 공연장,연극극장"
		distance: ""
		id: "13314714"
		phone: "02-2199-7260"
		place_name: "용산아트홀"
		place_url: "http://place.map.kakao.com/13314714"
		road_address_name: "서울 용산구 녹사평대로 150"
		x: "126.990324334919"
		y: "37.5328526868103"
		__proto__: Object
		*/
		console.dir(bdList[index]);
		var juso = bdList[index];
		
		var strArr = juso.road_address_name.split(" ");
		var b_area1 = strArr[0];
		var b_area2 = strArr[1];
		$('#b_area1').val(b_area1);
		selectCity('b_area2',b_area1,b_area2);
		
	    removeMarker();
	    var placePosition = new kakao.maps.LatLng(bdList[index].y, bdList[index].x)
        var marker = addMarker(placePosition, index);
	}
	
	 
	//submit event 처리
	document.signUpForm.btnSubmit.addEventListener("click", function() {
		var fom = document.signUpForm;
		fom.submit();
	});
	
	$(function(){
		$('#b_area1').change(function(){
			selectCity('b_area2',$(this).val(),'');
		})
	});
	</script>
</body>
</html>