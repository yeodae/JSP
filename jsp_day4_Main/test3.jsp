<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
      <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<style>
	
</style>
<body>
	<%@ include file = "jdbc_set.jsp" %>
	
	<%
	 
	
	Statement stmt = conn.createStatement();
	ResultSet srs = stmt.executeQuery("select * from student");
	
	String no = request.getParameter("stu_Name");
	String name = request.getParameter("stu_Dept");
	String dept = request.getParameter("stu_Gread");
	String gread = request.getParameter("stu_Height");
	
	stmt.executeUpdate("insert into student (stu_Name, stu_Dept, stu_Gread, stu_Grade)values(no, name, dept, gread);");
	%>
</form>
</body>
</html>