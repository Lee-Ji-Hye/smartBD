<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<HTML>
<script>
$("input[name='profile_img']").change(function(e){
    e.preventDefault();
 
    var file = this.files[0];
        reader = new FileReader();
   
    reader.onload = function (event) {
        var img = new Image();
        img.src = event.target.result;
        if (img.width > 700 || img.height > 500) { // holder width
          img.width = 700;
          img.height = 500;
        }
        $('#holder').empty();
        $('#holder').append(img);
    };
    reader.readAsDataURL(file);
   
    return false;
});
</script>
 
<!-- 2. DY가 짠 첨부파일 미리보기 소스-->

<script>
var upload = document.getElementsByTagName('input')[0],
    holder = document.getElementById('holder');
 
upload.onchange = function (e) {
    e.preventDefault();
   
    var file = upload.files[0],
        reader = new FileReader();
   
   
    reader.onload = function (event) {
        var img = new Image();
        img.src = event.target.result;
        if (img.width > 700 || img.height > 500) { // holder width
          img.width = 700;
          img.height = 500;
        }
        holder.innerHTML = '';
        holder.appendChild(img);
    };
    reader.readAsDataURL(file);
   
    return false;
};
</script>
<BODY>
  <form  action="write.ref" method="post" enctype="multipart/form-data">
        <input type="file" name="files">
        <div id="holder"></div>
        <textarea rows="5" cols="100" name="contents"></textarea><br>
        <input type="submit" value="글쓰기">
    </form>

</BODY>
</HTML>
 


</html>