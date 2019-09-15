<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../../common/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<table class="table" align="center" style="width: 1100px;">
  <thead>
    <tr style="background-color: #b9d2ec!important;" align="center">
      <th rowspan="2">구분</th>
      <th rowspan="2">금액</th>
      <th rowspan="2">관리비</th>
      <th scope="col" >입금 일자</th>
      <th scope="col" >월세 입금</th>
      <th scope="col" >월세 입금</th>
      <th rowspan="2">미납</th>
      <th rowspan="2">비고</th>
    </tr>
  </thead>
  
    <c:forEach var="dto" items="${dto}">
    <tr align="center">
      <th scope="row">${dto.rt_type}</th>
      <td>${dto.rt_pay}</td>
      <td>10000</td>
      <td>${dto.rt_date1}</td>
      <td>통장</td>
      <td>300000</td>
      <td>0</td>
      <td>비고란</td>
    </tr>
    </c:forEach>
    
  </tbody>
</table>


</body>
</html>