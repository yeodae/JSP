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
<% 
	Connection conn;
	Class.forName("oracle.jdbc.driver.OracleDriver"); // MySQL ����̹� �ε�
	String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
	String db_id = "SYSTEM";
	String db_pw = "test123";
	conn = DriverManager.getConnection(db_url, db_id, db_pw);
	out.println("DB ���� �Ϸ�");
%>

<%--
 	Statement stmt = conn.createStatement();
 	ResultSet rs = stmt.executeQuery("select * from student");
 	
 	while(rs.next()){
 		String name = rs.getString("stu_name");
 		String no = rs.getString("stu_no");
 	
 	--%>
</body>
</html>