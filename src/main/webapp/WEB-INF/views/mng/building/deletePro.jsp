<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
<c:if test="${cnt ==1}">
	<script type="text/javascript">
		alert("삭제 성공")
		window.location="/smart/bd_office/roomlist";
	</script>
</c:if>
</body>
</html>