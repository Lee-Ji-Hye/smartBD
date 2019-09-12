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
	alert("수정되었습니다.");
	window.location = 'inst3';	/* cnt == 2 */ 
},500);
</script>
</c:if>
<c:if test="${tikectcode !=1}">
<script type="text/javascript">
setTimeout(function(){
	alert("수정에 실패하였습니다.");
	window.location = 'inst3';	/* cnt == 2 */ 
},500);
</script>
</c:if>
</body>
</html>