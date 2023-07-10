<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="../js/code.jquery.com_jquery-3.7.0.min.js"></script>
<title>Insert title here</title>
<style>

</style>
</head>
<body>
<%@ include file="../jdbc_set.jsp" %>
<form action="jdbc_checkDelete.jsp">
<%
		request.setCharacterEncoding("UTF-8");
		String stuNo[] = request.getParameterValues("stu");
		ResultSet rs = null; // 검색 결과를 담기 위한 객체
		Statement stmt = null; // 쿼리 호출을 위한 객체
		
		try{
			stmt = conn.createStatement();
			
			for(int i = 0; i<stuNo.length; i++){
				String delete = "DELETE FROM STUDENT WHERE STU_NO = " + stuNo[i];
				rs=stmt.executeQuery(delete);
			}
			out.println("선택 테이블이 삭제되었습니다.");
			/* while(rs.next()){
				stmt = conn.createStatement();
				String sql = "SELECT * FROM STUDENT WHERE STU_NO = " + stuNo;
				rs = stmt.executeQuery(sql);
				String delete = "DELETE FROM STUDENT WHERE STU_NO = " + stuNo;
				stmt.executeUpdate(delete);
				out.println("STUDENT 테이블 삭제 성공했습니다.");
		}  */
	}catch(SQLException e){
		out.println(e.getMessage());
	}
	%>
	<input type="submit" value="뒤로가기">
	</form>
</body>
</html>
​ <script>
	
</script>