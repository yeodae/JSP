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
		out.println("���̵� : "+human.getId()+"<br>");
		out.println("�̸� : "+human.getName()+"<br>");
		out.println("���� : " +human.getAge()+"<br>");
		out.println("�ڹ����� : " +human.getJava()+"<br>");
		out.println("����Ŭ���� : "+human.getOracle());
	%>
	<hr>
	<jsp:setProperty name="human" property="id" value="kim"/>
	<jsp:setProperty name="human" property="name" value="��浿"/>
	<div>���̵� : <jsp:getProperty property="id" name="human"/> </div>
	<div>�̸� : <%= human.getName() %></div>
	<div>���� : <%= human.getAge() %></div>
	<div>�ڹ����� : <%= human.getJava() %></div>
	<div>����Ŭ���� : <%= human.getOracle() %></div>
</body>
</html>