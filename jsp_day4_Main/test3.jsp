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
	 
	try{
	Statement stmt = conn.createStatement();
	ResultSet srs = stmt.executeQuery("select * from student");
	
	String stuName = request.getParameter("stu_Name");
	String stuDept = request.getParameter("stu_Dept");
	String stuGrade = request.getParameter("stu_Gread");
	String stuHeight = request.getParameter("stu_Height");
	
	String update = "UPDATE STUDENT SET STU_HEIGHT ='" + stuHeight + "', STU_DEPT = '" + stuDept + "', STU_GRADE = '" + stuGrade + "' WHERE STU_NO = " + stuName;
	stmt.executeUpdate(update);
	out.println("STUDENT 테이블 업데이트 성공했습니다.");
	
	}catch(SQLException e){
		out.println(e.getMessage());
	}
	%>
</body>
</html>