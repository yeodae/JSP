<%@ page contentType="text/html" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        table{
            border-collapse: collapse;
            border: 1px solid black;
        }
        th,td{
            border: 1px solid black;
            padding: 10px;
            text-align: center;
        }
    </style>
</head>
<body>
    <%@page import="java.util.Enumeration"%>
    <table>
        <tr>
            <th>key 값</th>
            <th>value 값</th>
        </tr>
    <%
        request.setCharacterEncoding("UTF-8");
        Enumeration en = request.getParameterNames();
    
        while(en.hasMoreElements()){
            String name = (String) en.nextElement();
            String value = request.getParameter(name);
            out.println(
                "<tr><td>"+
                    name+
                    "</td>"+
                    "<td>"+
                        value+
                        "</td>"+
                        "</tr>");
        }
    %>
</table>
    
</body>
</html>