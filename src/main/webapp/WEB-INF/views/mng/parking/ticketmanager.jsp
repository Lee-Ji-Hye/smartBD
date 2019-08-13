<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp" %>
<%@ include file="../../common/header.jsp" %>
<%@ include file="../../common/middleHeaderManage.jsp" %>
<html>
<style type="text/css">
 

/*input 클릭시, label 스타일*/
        input:checked + label {
              color: #555;
              border: 1px solid #ddd;
              border-top: 2px solid #2e9cdf;
              border-bottom: 1px solid #ffffff;}

        #tab1:checked ~ #content1,
        #tab2:checked ~ #content2,
        #tab3:checked ~ #content3,
        #tab4:checked ~ #content4 {
           display: block;}
</style>


<meta charset="UTF-8">
<title>주차장 현황</title>
<body>
<img src="${resourceImg}/주차장1.jpg" style="width:2000px;height:1000px;">
</body>
<%@ include file="../../common/footer.jsp" %>
</html>