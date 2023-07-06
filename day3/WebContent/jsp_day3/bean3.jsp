<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="human" class="day3.com.dao.Human"/>
	<%
		out.println("아이디 : "+human.getId()+"<br>");
		out.println("이름 : "+human.getName()+"<br>");
		out.println("나이 : " +human.getAge()+"<br>");
		out.println("자바점수 : " +human.getJava()+"<br>");
		out.println("오라클점수 : "+human.getOracle());
	%>
	<hr>
	<jsp:setProperty name="human" property="id" value="kim"/>
	<jsp:setProperty name="human" property="name" value="김길동"/>
	<div>아이디 : <jsp:getProperty property="id" name="human"/> </div>
	<div>이름 : <%= human.getName() %></div>
	<div>나이 : <%= human.getAge() %></div>
	<div>자바점수 : <%= human.getJava() %></div>
	<div>오라클점수 : <%= human.getOracle() %></div>
</body>
</html>