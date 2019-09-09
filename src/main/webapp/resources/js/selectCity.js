/**
 * 
 */
function selectCity (objId, area1, area2) {
	$.ajax({
		 url : "/smart/member/bdmn/getGu/"
		,data : {"si":area1}
		,dataType : "json"
		,success:function(e){
			//데이터가 없으면
			if(e == null || e == "") {
				$("select#"+objId+" option").remove();
				optHtml += "<option value=''>지역구</option>";
				$('#'+objId).append(optHtml);
				return false;
			}
			
			//데이터가 있으면
			var areaInfo = e;
			var optHtml = "";
			
			//console.log(areaInfo);
			$("select#"+objId+" option").remove();
			optHtml += "<option value=''>지역구</option>";
			
			$.each(areaInfo, function(i, v){
				console.log(i); //0,1,2..
				console.log(v); //강남구, 중구, 중랑구..
				optHtml += "<option value='" + v + "'>" + v + "</option>";
			});
			//console.log(optHtml);
			
			$('#'+objId).append(optHtml);
			$('#'+objId).val(area2);
			
        }
		,error:function(request,status,error){
		        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
	
} 