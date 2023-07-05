<%@ page contentType="text/html" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <%--실시간 새로고침--%>
   <%
    response.setIntHeader("Refresh",10);
   %>

   <%= (new java.util.Date()).toLocaleString() %>
   <br>
   <a href="response_date.jsp" target="_blank">Google 홈페이지로 이동하기</a>
   
   <form action="response2-serch.jsp" method="post">
   <div>링크 : 
    <input type="text" name="site">
    <input type="submit" value="제출">
</div>
</form>

</body>
</html>