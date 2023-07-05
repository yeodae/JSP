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
    String id1 = request.getParameter("id");
    String pw1 = request.getParameter("pw");
    
    if (id1.equals("test") && pw1.equals("1234")){
        response.sendRedirect("user_1.jsp");
    } else if(id1.equals("admin")&&pw1.equals("admin")){
        response.sendRedirect("admin_1.jsp");
    } else{
        response.sendRedirect("login_1.jsp");
    }
    %>
</form>
</body>
</html>