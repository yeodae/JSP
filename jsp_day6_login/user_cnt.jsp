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
<form name="check">
	<%
		String uId = request.getParameter("uId");
		String kind = request.getParameter("kind");
		
		ResultSet rs = null; // 검색 결과를 담기 위한 객체
		Statement stmt = null; // 쿼리 호출을 위한 객체
		
		try {
			stmt = conn.createStatement();
			String update = "UPDATE TBL_USER SET CNT = 0 WHERE U_ID = '" + uId + "'";
			stmt.executeUpdate(update);
			out.println("초기화되었습니다.");
			
			
			
		} catch (SQLException ex) {
			out.println("STUDENT 테이블 삽입이 실패했습니다.<br>");
			out.println("SQLException: " + ex.getMessage());
		} 
	%>
	<input type=button onclick="back()" value="되돌아가기">
</form>
</body>
</html>
<script>
function back(){
	window.opener.getReturn();
	window.close();
}
	
</script>