<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

	<form name="login" action="join_up_del.jsp" method="post">
	<div> 학번 : <input type="text" name = "stuNo">
	</div>
	<div> 학과 : <input type="text" name = "stuDept">
	</div>
	<div> 학년 : <input type="text" name = "stuGrade">
	</div>
	<div><input type = "submit" value = "학생추가" onclick="check()"></div>
	
	</form>
</body>
</html>