<%@ page contentType="text/html" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Document</title>
</head>
<body>
    <div>아이디 : <%= request.getParameter("id") %></div>
    <div>이름 : <%= request.getParameter("name") %></div>
</body>
</html>