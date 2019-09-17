<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp" %>
<%@ include file="../../common/headerAdmin.jsp" %>
<!DOCTYPE html>


<style>
.file_input label {
    position:relative;
    cursor:pointer;
    display:inline-block;
    vertical-align:middle;
    overflow:hidden;
    width:100px;
    height:30px;
    background:#777;
    color:#fff;
    text-align:center;
    line-height:30px;
}
.file_input label input {
    position:absolute;
    width:0;
    height:0;
    overflow:hidden;
}
.file_input input[type=file] {
    vertical-align:middle;
    display:inline-block;
    width:400px;
    height:28px;
    line-height:28px;
    font-size:11px;
    padding:0;
    border:0;
    border:1px solid #777;
}

</style>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">

</script>
<body>
<div class="container space-2">
	<div class="file_input">
    <form name="fileForm" action="${path_r_mng}/requestupload2?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data">
    	<div class="row">
    		<div class="col">
		    	<label for="ex_file">업로드</label>
				<input type="hidden" name="r_code" value="${r_code}"/>
			</div>
			<div class="col">
		        <input multiple="multiple" type="file" name="file" />
		        <input type="hidden" name="src" value=""/>
		    </div>
        </div>
        <div class="row">
	        <input type="submit" value="전송" />
	    </div>
    </form>
    
    </div>
    </div>
</body>

  <!-- ========== END MAIN CONTENT ========== -->
<%@ include file="../../common/footer.jsp" %>

