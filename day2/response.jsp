<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <%
    String userId = request.getParameter("id");
    String pwd = request.getParameter("pwd");
    
    if (userId.equals("test") && pwd.equals("1234")) {
        response.sendRedirect("success.jsp");
    } else {
        response.sendRedirect("fail.jsp");
    }
    %>
</body>
</html>