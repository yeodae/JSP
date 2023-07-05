<%@ page contentType="text/html" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    
    <title>Document</title>
</head>
<body>
    <div>client ip : <%= request.getRemoteAddr() %></div>
    <div>요청 uri : <%= request.getRequestURI() %></div>
    <div>메소드 : <%= request.getMethod() %></div>
    <div>서버 포트 : <%= request.getServerPort() %></div>
    <div>쿼리문 : <%= request.getQueryString() %></div>
</body>
</html>