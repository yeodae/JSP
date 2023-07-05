<%@ page contentType="text/html" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form name="login" action="success.jsp">
        <div>
            ID : <input type="text" name="id">
        </div>
        <div>
            PW : <input type="password" name="pw">
        </div>
        <input type="button" value="전송" onclick="check();">
</form>
</body>
</html>
<script>
    //아이디가 빈값일때 버튼누르면 알림창 아이디입력하게
    //비밀번호가 빈값일때 버튼누르면 알림창 비번입력
    function check(){
        var id = document.login.id.value;
        var pwd = login.pw.value;
    // if(id=="" || id==undefined){
    //     alert("아이디입력");
    //     document.login.id.focus();
    //     return;
    // }
    // else if(pwd=="" || id==undefined){
    //     alert("비번입력");
    //     document.login.pwd.focus();
    //     return;
    // }

    //아이디 4글자 미만 12글자 이상일경우
    //아이디 4~11글자 까지 입력 가능 알림
    if( id.length <= 4 || id.length >= 12){
        alert("아이디 4~11글자 사이 입력");
        login.id.select();
        return;
    }

    login.submit();
}
</script>