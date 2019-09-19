<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp"%>

<input type="hidden" id="result" value="${result}" />

<script type="text/javascript">
$(function(){
	var result = $("#result").val();
	
	if(result == 1) {
		alert("등록되었습니다.");
		location.href = "/smart/bd_park/intromn/inst1";
	}else {
		alert("등록 실패하였습니다.");
		history.back();
	}
});
</script>