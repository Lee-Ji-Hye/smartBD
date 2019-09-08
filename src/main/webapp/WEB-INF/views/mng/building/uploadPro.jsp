<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<body>
<c:if test="${cnt ==1}">
	<script type="text/javascript">
		alert("매물 등록,수정 성공")
		window.location="roomlist"
	</script>
</c:if>

<c:if test="${cnt !=1}">
	<script type="text/javascript">
		alert("매물 등록,수정 실패")
		window.location="roomupload"
	</script>
</c:if>







</body>
</html>