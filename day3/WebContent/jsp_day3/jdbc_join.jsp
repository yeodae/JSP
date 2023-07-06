<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

	<form name="login" action="jdbc_insert1.jsp" method="post">
	<div> 학번 : <input type="text" name = "stuNo">
	</div>
	<div> 이름 : <input type="text" name = "stuName">
	</div>
	<div> 학과 : <input type="text" name = "stuDept">
	</div>
	<div> 학년 : <input type="text" name = "stuGrade">
	</div>
	<div><input type = "button" value = "학생추가" onclick="check()"></div>
	
	</form>
</body>
</html>
<script>
	function check(){
		var id = document.login.stuNo.value;
		if(!/[0-9]{5,10}$/.test(id)){
			alert("8글자로 입력해주세요.");
			return;
		}
		login.submit();
	}
</script>