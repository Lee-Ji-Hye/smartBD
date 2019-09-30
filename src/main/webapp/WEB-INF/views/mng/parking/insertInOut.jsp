<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp"%>
<%@ include file="../../common/headerAdmin.jsp"%>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<div class="bg-light">
      <div class="container space-2">
        <form name="mkCoupon" class="js-validate" novalidate="novalidate" enctype="multipart/form-data" method="post" action="${path}/bd_park/intromn/insertInOutPro?${_csrf.parameterName}=${_csrf.token}">
          <!-- Input -->
          <div class="row">
           <div class="col-md-6 mb-3 mb-sm-4"> 
            <div class="js-form-message">
              <label class="form-label">
                   차번호
              </label>

              <div class="form-group">
                <input id="newPassword" type="text" class="form-control" name="car_number" placeholder="11가111">
              </div>
           </div>
          </div>
          <!-- End Input -->
          
          <!-- Input -->
          <div class="col-md-6 mb-3 mb-sm-4">
            <div class="js-form-message">
              <label class="form-label">
                   차 이미지
              </label>

              <div class="form-group">
                <input type="file" class="form-control" name="p_img" >
                http://192.168.219.103:8090/?action=snapshot
              </div>
            </div>
          </div>
          </div>
          <div class="js-form-message mb-4">
           <label class="form-label">
               입출일
           </label>
          </div>
          <div class="row">
            <!-- Input -->
            <div class="col-md-2 mb-3 mb-sm-4">
              <div class="js-form-message">
                <div class="form-group">
                  <!-- <input type="text" id="datepicker" value="2019-09-25" readonly="readonly" class="hasDatepicker"> -->
                  <input type="text" class="form-control" readonly="readonly" name="in_date" id="datepicker" placeholder="2019-09-22">
                </div>
              </div>
            </div>
            <!-- End Input -->

             <div class="js-form-message mb-4">
              <label class="form-label">
                  입출시간
              </label>
             </div>
            <!-- Input -->
            <div class="col-sm-4 col-md-2 mb-3 mb-sm-4">
              <div class="js-form-message">
                <div class="form-group">
                  <input type="text" class="form-control" name="in_time" placeholder="13:00:00">
                </div>
              </div>
            </div>
            <!-- End Input -->
            
            </div>

            <!-- 라즈베리 IP : 192.168.219.103:8090 -->
            <div>
            	<iframe width="550" height="370" scrolling="no" src="http://192.168.219.103:8090/?action=stream"></iframe>
            </div>
         	<br><br>
          <div class="w-lg-100">
            <!-- Buttons -->
            <div style="text-align:center">
               <button type="submit" class="btn btn-sm btn-primary transition-3d-hover mr-1">등록</button>
               <button type="submit" class="btn btn-sm btn-soft-secondary transition-3d-hover">수정</button>
            </div>
            <!-- End Buttons -->
          </div>
        </form>
      </div>
    </div>
 
 
<script type="text/javascript">
   $(function(){
          $("#datepicker").datepicker({
             dateFormat: 'yy-mm-dd' //Input Display Format 변경      
          });
   });
</script>
 <%@ include file="../../common/footer_roomDetail.jsp" %>