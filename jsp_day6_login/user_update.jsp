<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../jdbc_set.jsp" %>
<form name="updateForm" action="user_update_sql.jsp">
	<%
		request.setCharacterEncoding("UTF-8");
		String uId = request.getParameter("uId");
		Statement stmt = null;
		ResultSet rs = null;
		
		try{
			stmt = conn.createStatement();
			String select = "SELECT * FROM TBL_USER WHERE U_ID = '"+uId+"'";
			rs = stmt.executeQuery(select);
			if(rs.next()){
				String phone
					=rs.getString("PHONE") != null ? rs.getString("PHONE") : "";
				String age
					=rs.getString("AGE") != null ? rs.getString("AGE") : "";
				String addr
					=rs.getString("ADDR") != null ? rs.getString("ADDR") : "";
				%>
				<input name="uId" value="<%= uId %>" hidden>
				<div>비밀번호 : <input name="pwd" type="password"></div>
				<div>이　　름 : <input name="name" type="text" value="<%= rs.getString("U_NAME")%>"></div>
				<div>핸드폰&nbsp;&nbsp;: <input name="phone" type="text" value="<%= phone %>"></div>
				<div>나　이 : <input name="age" type="text" value="<%= age %>"></div>
				<div>주　소 : <input name="addr" type="text" value="<%= addr %>"></div>
				
				<%
			}
			
			}catch(SQLException e){
			out.println(e.getMessage());
		}
		
	%>
	<input type="submit" onclick="userUpdate()">
</form>
</body>
</html>
<script>

</script>