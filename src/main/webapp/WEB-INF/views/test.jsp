<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<sec:authorize access="isAnonymous()">로그인안됨</sec:authorize>
<body>Authorities
principal : <sec:authentication property="principal"/>
<br><hr><br>
Authorities : <sec:authentication property="principal.Authorities"/>
<br><hr><br>
principal.username : <sec:authentication property="principal.username"/>
<br><hr><br>
<h2><a href="/smart/logout">logout</a></h2>
<%-- principal.email : <sec:authentication property="principal.email"/> --%>

<%-- principal.enabled : <sec:authentication property="principal.enabled"/> --%>

<%-- principal.accountNonExpired : <sec:authentication property="principal.accountNonExpired"/> --%>

<br><hr><br>
<h3><a href="/smart/sysmaster/">/smart/sysmaster/</a></h3>
<br><hr><br>
<h3><a href="/smart/bd_admin/">/smart/bd_admin/</a></h3>
<br><hr><br>
<h3><a href="/smart/bd_manager/">/smart/bd_manager/</a></h3>
<br><hr><br>
<h3><a href="/smart/bd_office/">/smart/bd_office/</a></h3>
<br><hr><br>
<h3><a href="/smart/bd_food/">/smart/bd_food/</a></h3>
<br><hr><br>
<h3><a href="/smart/bd_park/">/smart/bd_park/</a></h3>
<br><hr><br>
<h3><a href="/smart/bd_resu/">/smart/bd_resu/</a></h3>
<br><hr><br>
<h3><a href="/smart/cp_tenant/">/smart/cp_tenant/</a></h3>
<br><hr><br>
<h3><a href="/smart/cp_admin/">/smart/cp_admin/</a></h3>
<br><hr><br>
<h3><a href="/smart/cp_manager/">/smart/cp_manager/</a></h3>
<br><hr><br>
<h3><a href="/smart/cp_employee/">/smart/cp_employee/</a></h3>
<br><hr><br>
<h3><a href="/smart/member/">/smart/member/</a></h3>
<br><hr><br>

</body>
</html>