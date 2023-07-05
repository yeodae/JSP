<%@ page contentType="text/html" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<h2>

    <%
    String name = request.getParameter("name");
    out.println("<h2><span style='color: tomato;'>"+name+"</span>님 회원가입을 환영합니다.</h2>");
    %>

</form>
</body>
</html>