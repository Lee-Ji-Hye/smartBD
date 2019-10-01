<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:if test="${parkingcode ==1}">
<script type="text/javascript">
setTimeout(function(){
	alert("수정되었습니다.");
	window.location = '${path}/bd_park/parkpricelist';	/* cnt == 2 */ 
},500);
</script>
</c:if>

<c:if test="${parkingcode !=1}">
<script type="text/javascript">
setTimeout(function(){
	alert("수정 실패!");
	window.location = '${path}/bd_park/parkpricelist';	/* cnt == 2 */ 
},500);
</script>
</c:if>
</head>
<body>

</body>
</html>