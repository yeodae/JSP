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
		String pw = request.getParameter("pw");
		
		ResultSet rs = null; // 검색 결과를 담기 위한 객체
		Statement stmt = null; // 쿼리 호출을 위한 객체
		stmt = conn.createStatement();
		
		rs = stmt.executeQuery("select * from tbl_user");
	
		String name = request.getParameter("U_NAME");
		String tel = request.getParameter("PHONE");
		String age = request.getParameter("AGE");
		String addr = request.getParameter("ADDR");
		
		try {
			
			if(rs.next()){
				String update = "UPDATE TBL_USER SET U_NAME = '"+name+"', PHONE = '"+tel+"', AGE = '"+age+"', ADDR = '"+addr+"' WHERE PWD = '" + pw + "'";
				stmt.executeUpdate(update);
				out.println("업데이트 완료.");	
			}else{
				out.println("정보 어디감???");	
			}
			
		} catch (SQLException ex) {
			out.println("STUDENT 테이블 삽입이 실패했습니다.<br>");
			out.println("SQLException: " + ex.getMessage());
		} 
	%>
	
	<div> 이름 : <input type="text" value="<%=name%>" name = "name">
	</div>
	<div> 번호 : <input type="text" value="<%=tel%>" name = "tel">
	</div>
	<div> 나이 : <input type="text" value="<%=age%>" name = "age">
	</div>
	<div> 주소 : <input type="text" value="<%=addr%>" name = "addr">
	</div>
	<div><input type = "submit" value = "변경" onclick="check()"></div>
	
	
	<input type=button onclick="back()" value="되돌아가기">
</form>
</body>
</html>

<script>
function back(){
	window.opener.getReturn();
	window.close();
}
function check(){
	
}
	
</script>