<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@ include file = "jdbc_set.jsp" %>
	
	<%
	Statement stmt = conn.createStatement();
	ResultSet srs = stmt.executeQuery("select * from student");
	
	String no = request.getParameter("stuNo");
	String name = request.getParameter("stuName");
	String dept = request.getParameter("stuDept");
	String gread = request.getParameter("stuGread");
	
	stmt.executeUpdate("insert into student (stuNo, stuName, stuDept, stuGrade) 
			values(no, name, dept, gread);");

	%>
</body>
</html>