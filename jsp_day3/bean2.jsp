<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="calc" class="day3.com.dao.calc"/>
	<%
		int num = calc.process(5);
		out.println(num);
	%>
</body>
</html>