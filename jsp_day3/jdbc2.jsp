<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
table,th,td{
	border: 1px solid black;
	border-collapse: collapse;
	padding : 5px;
}
</style>
</head>
<body>
	<%@ include file = "jdbc_set.jsp" %>
	<%
	 Statement stmt = conn.createStatement();
	 ResultSet rs = stmt.executeQuery("select * from student");
	%>
	<table>
		<tr>
			<th>�̸�</th>
			<th>�й�</th>
		</tr>
	<%
	while (rs.next()) {
		String name = rs.getString("stu_name");
		String no = rs.getString("stu_no");
	
	%>
		<tr>
			<td><%=name%></td>
			<td><%=no%></td>
		</tr>
	<%
	}
	rs.close();
	%>
	</table>
</body>
</html>