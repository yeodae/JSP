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
	request.setCharacterEncoding("EUC_KR");
	
	String no = request.getParameter("stuNo");
	String name = request.getParameter("stuName");
	String dept = request.getParameter("stuDept");
	String grade = request.getParameter("stuGrade");
	
	try{
		stmt.executeUpdate("insert into student (stu_no, stu_name, stu_dept, stu_grade)values('" + no + "','" + name + "', '" + dept + "','" + grade + "')");
		out.println("STUDENT ���̺� ������ �����߽��ϴ�.");
	}catch(SQLException ex){
		out.println("STUDENT ���̺� ������ �����߽��ϴ�.<br>");
		out.println("SQLException: " + ex.getMessage());
	}
	

	%>
</body>
</html>