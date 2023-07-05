<%@ page contentType="text/html" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Document</title>
</head>
<body>

    <%-- 
    백터 이터레이터와 비슷한느낌 ~ 순차적으로 접근
    --%>

    <%@page import="java.util.Enumeration"%>
    <%
        Enumeration en = request.getHeaderNames();
        while(en.hasMoreElements()){
            String name = (String) en.nextElement();
            String value = request.getHeader(name);
    %>
        <div><span style="color:red;"><%=name%></span>
             : <span style="color:blue;"><%=value%></span></div>
    <%
        }
    %>
</body>
</html>