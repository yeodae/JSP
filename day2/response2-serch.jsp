<%@ page contentType="text/html" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
    <%
    String url = request.getParameter("site");
    response.sendRedirect
    ("https://www." + request.getParameter("site") + ".com");
    %>
    
    
   
</body>
</html>