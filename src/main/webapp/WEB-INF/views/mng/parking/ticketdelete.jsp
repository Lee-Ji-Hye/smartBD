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
<c:if test="${tikectcode ==0}">
<script type="text/javascript">
setTimeout(function(){
	alert("삭제에 실패했습니다.");
	window.location = '${path}/bd_park/ticketlist';	/* cnt == 2 */ 
},500);
</script>
</c:if>
<c:if test="${tikectcode !=0}">
<script type="text/javascript">
setTimeout(function(){
	alert("삭제에 성공하였습니다.");
	window.location = '${path}/bd_park/ticketlist';	/* cnt == 2 */ 
},500);
</script>
</c:if>
</body>
</html>