<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp" %>
<%@ include file="../../common/header.jsp" %>
<!DOCTYPE html>



<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">

</script>
<body>
    <form name="fileForm" action="requestupload2?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data">
		<input type="hidden" name="r_code" value="${r_code}">
        <input multiple="multiple" type="file" name="file" />
        <input type="text" name="src" value=""/>
        <input type="submit" value="전송" />
    </form>
</body>

  <!-- ========== END MAIN CONTENT ========== -->
<%@ include file="../../common/footer.jsp" %>

