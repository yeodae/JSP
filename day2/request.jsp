<%@ page contentType="text/html" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Document</title>
</head>
<body>
    <%--
    페이지 전환시 데이터 전송이 필요할때
    method="get" = 디폴트값 ex)게시판검색 및 페이지이동
    method="post" = 보안이 필요할때 사용 ex)로그인
    --%>

    <form action="response.jsp" method="post">
        <div>아이디 : <input type="text" name="id"></div>
        <div>패스워드 : <input type="text" name="pwd"></div>
        <input type="submit" value="전송">
    </form>
</body>
</html>