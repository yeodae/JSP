<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "../jdbc_set.jsp" %>
	
	<%
	Statement stmt = conn.createStatement();
	request.setCharacterEncoding("UTF-8");
	String ujoin = "SELECT * FROM TBL_USER";
	ResultSet rs = stmt.executeQuery(ujoin);
	
	String ID = request.getParameter("id");
	String PW = request.getParameter("pw1");
	String PWV = request.getParameter("pw2");
	String NAME = request.getParameter("name");
	String PHONE = request.getParameter("tel");
	String AGE = request.getParameter("age");
	String ADDR = request.getParameter("addr");
	
	try{
		stmt.executeUpdate("insert into TBL_USER (U_ID, PWD, U_NAME, PHONE, AGE, ADDR)values('" + ID + "','" + PW + "', '" + NAME + "','" + PHONE + "','"+AGE+"','"+ADDR+"')");
		out.println("TBL_USER 테이블 삽입이 성공했습니다.");
	}catch(SQLException ex){
		out.println("TBL_USER 테이블 삽입이 실패했습니다.<br>");
		out.println("SQLException: " + ex.getMessage());
	}
	

	%>
</body>
</html>
<script>
</script>