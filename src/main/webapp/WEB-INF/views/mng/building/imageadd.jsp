<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp" %>
<%@ include file="../../common/headerAdmin.jsp" %>
<!DOCTYPE html>


<style>

</style>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">

</script>
<body>
<div >

	<div class="file_input" align="center">
    <form name="fileForm" action="${path_r_mng}/requestupload2?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data">
    	
    		
		    	
				<input type="hidden" name="r_code" value="${r_code}"/>
			
			
		        <input multiple="multiple" type="file" name="file" class="btn btn-primary" />
		        <input type="hidden" name="src" value=""/>
		  
       
       
	        <input type="submit" value="전송" class="btn btn-primary" />
	  
    </form>
   
    </div>
   
    </div>
    
</body>

  <!-- ========== END MAIN CONTENT ========== -->
<%@ include file="../../common/footer.jsp" %>

