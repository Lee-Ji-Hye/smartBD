<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../../common/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${tikectcode ==1}">
<script type="text/javascript">
setTimeout(function(){
	alert("등록되었습니다.");
	window.location = 'ticketreg';	/* cnt == 2 */ 
},2000);
</script>
</c:if>
</body>
</html>