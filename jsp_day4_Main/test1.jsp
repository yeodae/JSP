<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="test2.jsp" name="evt">
		<input type="text" name="stuNo">
		<input type="button" value="검색" onclick="evtKind()">  
	</form>
</body>
</html>
<script>
	function evtKind(text){
		/* document.evt.btnKind.value = text; */
		document.evt.submit();
}
</script>