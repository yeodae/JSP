<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
	<%@ include file = "../jdbc_set.jsp" %>
	<%
	 Statement stmt = conn.createStatement();
	 ResultSet rs = stmt.executeQuery("select * from TBL_USER");
	%>
	<table>
		<tr>
			<th></th>
			<th>아이디</th>
			<th>이름</th>
			<th>핸드폰번호</th>
			<th>나이</th>
			<th>정지여부</th>
		</tr>
	<%
	while (rs.next()) {
		String uId = rs.getString("U_ID");
		String name = rs.getString("U_NAME");
		String tel 
			= rs.getString("PHONE") != null ? rs.getString("PHONE") : "-";
		String age 
			= rs.getString("AGE") != null ? rs.getString("AGE") : "-";
		String bab 
			= rs.getString("BANYN").equals("Y") ?  "정지" : "";
		
		/* if(tel==null){
			tel = "-";
		}
		if(bab.equals("N")){
			bab = "정지";
		}*/
	%>
		<tr>
			<td><input type="radio"></td>
			<td><%=uId%></td>
			<td><%=name%></td>
			<td><%=tel%></td>
			<td><%=age%></td>
			<td><%=bab%></td>
		</tr>
	<%
	}
	rs.close();
	%>
	
	</table>
	<input type="button" value="수정">
	<input type="button" value="삭제">
</body>
</html>