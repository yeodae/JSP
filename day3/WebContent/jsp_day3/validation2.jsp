<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
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
	//check 함수 생성
	// id에 영어 대소문자만 입력 가능하도록
	// 숫자 특수문자 한글 등이 입력되고 전송을 누르면 "영어 대소문자만 가능" 알림
	// 패스워드는 숫자만 가능하게 아닐경우 "패z`스워드는 숫자만 가능" 알림
	function check(){
    var id = document.login.id.value;
    var pw = document.login.pw.value;

    var regExp = /^[a-z]+[a-z0-9]{5,19}$/g;
    var pwdExp = /^(?=.*\d)(?=.*[a-zA-Z])[0-9a-zA-Z]{8,16}$/;

    if(!regExp.test(id)){
        alert("ID값 6~20자 영문 숫자만");
        login.id.select();
        return;
    }
    else if(!pwdExp.test(pw)){
        alert("PWD값 8~16자 영문,숫자조합만");
        login.pw.select();
        return;
    }
    login.submit();
}
	
	
</script>