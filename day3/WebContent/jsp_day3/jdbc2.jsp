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
	<%@ include file="jdbc_set.jsp" %>
	<%
	Statement stmt = conn.createStatement();
	ResultSet srs = stmt.executeQuery("select * from student");
	%>
	
	<table>
		<tr>
			<th>이름</th>
			<th>학번</th>
		</tr>
		
	<%
	while (srs.next()) {
		String sname = srs.getString("stu_name");
		String sno = srs.getString("stu_no");
		
	%>
	<tr>
		<td><%=sname%></td>
		<td><%=sno%></td>
	</tr>
	<%
	}
	srs.close();
	%>
	
	</table>
</body>
</html>