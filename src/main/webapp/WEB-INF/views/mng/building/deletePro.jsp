<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
<c:if test="${cnt ==1}">
	<script type="text/javascript">
		alert("비공개 전환")
		window.history.go(-1);
	</script>
</c:if>

<c:if test="${cnt ==2}">
	<script type="text/javascript">
		alert("공개 전환")
		window.history.go(-1);
	</script>
</c:if>
</body>
</html>