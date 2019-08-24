<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--# 셋팅파일  -->
<%@ include file="../setting.jsp"%>
<%@ include file="../header.jsp"%>

  <head>
    <title>404 Not Found</title>

    <!-- Required Meta Tags Always Come First -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <!-- Favicon -->
    <link rel="shortcut icon" href="https://htmlstream.com/assets/img/favicon.ico" type="image/x-icon">
    <link rel="icon" href="https://htmlstream.com/assets/img/favicon.ico" type="image/x-icon">

    <!-- Google Font -->
    <link href="//fonts.googleapis.com/css?family=Roboto:300,400,700" rel="stylesheet">

    <!-- CSS Global Compulsory -->
    <link rel="stylesheet" href="https://htmlstream.com/assets/css/toolkit.min.css">

    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="https://htmlstream.com/assets/css/styles.hs.min.css">
  </head>
      <div class="text-center g-flex-centered-item g-position-rel g-pb-15" style="margin-top:10%;">
		
		<!-- 404 IN -->
        <c:if test="${param.code == '404'}">
        	<div class="g-font-size-180 g-font-size-240--sm g-line-height-1 g-font-weight-600er g-color-gray-light-v4">404</div>
		        <div class="g-absolute-centered">
		          <h1 class="g-color-black g-mt-minus-8 mb-0">404&nbsp;Not&nbsp;Found</h1>
		          <hr class="g-brd-gray-light-v3 g-my-15">
		          <p class="g-font-size-18 mb-0"><a href="${path}" class="u-link-v5 g-color-black g-color-primary--hover g-text-no-underline--hover">← Home Page</a>
		          </p>
		        </div>
        </c:if>
        
        <!-- 403 IN -->
        <c:if test="${param.code == '403'}">
        	<div class="g-font-size-180 g-font-size-240--sm g-line-height-1 g-font-weight-600er g-color-gray-light-v4">403</div>
		        <div class="g-absolute-centered">
		          <h1 class="g-color-black g-mt-minus-8 mb-0">403&nbsp;Forbidden</h1>
		          <hr class="g-brd-gray-light-v3 g-my-15">
		          <p class="g-font-size-18 mb-0"><a href="${path}" class="u-link-v5 g-color-black g-color-primary--hover g-text-no-underline--hover">← Home Page</a>
		          </p>
		        </div>
        </c:if>
		</div>

</body>
</html>