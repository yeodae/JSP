<%@ page contentType="text/html" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Document</title>
</head>
<body>
    <%-- 로그인 처리 
     id:test ,pwd:1234로 요청 했을때 로그인 성공, 그외는 실패
     로그인 성공시 빨간색 성공 메시지 출력 --%>
    <%
    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");

    %>
    <%

    if(id.equals("test") && pwd.equals("1234")){
        out.println(" 성공 ")
    }else{
        out.println(" 실패 ")
    }
    %>
</body>
</html>