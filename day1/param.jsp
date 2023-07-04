<%@ page contentType="text/html" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Document</title>
</head>
<body>
    <jsp:forward page ="param_view.jsp">
        <jsp:param name="id" value="test123"/>
        <jsp:param name="name" value="hong"/>
    </jsp:forward>
</body>
</html>