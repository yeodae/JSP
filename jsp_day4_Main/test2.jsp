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
	<form action="test3.jsp" name="go">
	<%@ include file="jdbc_set.jsp" %>
	<%
		String stuNo = request.getParameter("stuNo");
	
		Statement stmt = null; // �˻� ����� ��� ���� ��ü
		ResultSet rs = null; // ���� ȣ���� ���� ��ü
		
		try{
			stmt = conn.createStatement();
			
			String sql = "SELECT * FROM STUDENT WHERE STU_NO = " + stuNo;
			rs = stmt.executeQuery(sql);
			
			if(rs.next()){
				String na = rs.getString("stu_name");
				String de = rs.getString("stu_dept");
				String gr = rs.getString("stu_grade");
				String he = rs.getString("stu_height");
				%>
				
	<div>�̸� : <input type="text" name="stuName" value="<%=na%>"> </div>
	<div>�а� : <input type="text" name="stuDept" value="<%=de%>"> </div>
	<div>�г� : <input type="text" name="stuGrade" value="<%=gr%>"> </div>
	<div>Ű : <input type="text" name="stuHeight" value="<%=he%>"> </div>
	<div><input type="button" value="����" onclick="gogo()"></div>
	</form>
			<%
			}
			
			else{
				out.println("�˼�������");
			}
		}catch(SQLException e){
			out.println(e.getMessage());
		}
	%>

</body>
</html>
<script>
function gogo(text){
	document.go.submit();
}
</script>