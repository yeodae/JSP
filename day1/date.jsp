
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Document</title>
</head>
<body>
    <%@ page info = "그저 주석" %>
    <%-- "그저 주석" --%>
    
   time : <%= new java.util.Date() %> <br>

   <%@ page import="java.util.Date" %>
   time : <%= new Date() %>
 
</body>
</html>