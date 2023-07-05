<%@ page contentType="text/html" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Document</title>
</head>
<body>
    <div>이동된 페이지</div>

    <%--전송받은 정보 getParameter명령어로 출력 %>

    <div>아이디 : <%= request.getParameter("id") %></div>
    <div>비밀번호 : <%= request.getParameter("pwd")%> </div>
</body>
</html>