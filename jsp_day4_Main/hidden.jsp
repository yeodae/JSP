<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="hidden_event.jsp" name="evt">
		<input type="text" name="stuNo">
		<input type="text" name="btnKind" hidden>
		<input type="button" value="검색" onclick="evtKind('search')"> 
		<input type="button" value="삽입" onclick="evtKind('insert')"> 
		<input type="button" value="삭제" onclick="evtKind('remove')"> 
	</form>
</body>
</html>
<script>
	function evtKind(text){
		document.evt.btnKind.value = text;
		document.evt.submit();
	}
</script>