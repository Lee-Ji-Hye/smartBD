<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>권한이 없습니다. 현재권한 아래와 같습니다.</h1>
<br><hr><br>

Authorities : <sec:authentication property="principal.Authorities"/>
<br><hr><br>
<h2><a href="/smart/logout">logout</a></h2>
<br><hr><br>
<h3><a href="/smart/member/">/smart/member/</a></h3>
<br><hr><br>
<br><hr><br>

</body>
</html>