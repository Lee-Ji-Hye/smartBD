<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp" %>
<%@ include file="../../common/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p class="h2" align="center">
 나의 납부 현황
</p>
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
<%@ include file="../../common/footer.jsp" %>