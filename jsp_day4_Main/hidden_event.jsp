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
<%@ include file="jdbc_set.jsp" %>
	<%
		String stuNo = request.getParameter("stuNo");
		String kind = request.getParameter("btnKind");
		
		Statement stmt = null; // �˻� ����� ��� ���� ��ü
		ResultSet rs = null; // ���� ȣ���� ���� ��ü
		
		try{
			stmt = conn.createStatement();
			
			if(kind.equals("search")){
				//db �˻�(select)
				String sql = "SELECT * FROM STUDENT WHERE STU_NO = " + stuNo;
				rs = stmt.executeQuery(sql);
				
				if(rs.next()){
					out.println("�̸� : "+rs.getString("stu_name"));
					out.println(",�й� : "+rs.getString("stu_no"));
				}else{
					out.println("�˼�������");
				}
				
			}else if(kind.equals("insert")){
				//db ����(insert)	
				//�Ȱ��� �й��� �����ϸ� "�̹� �ִ� �й��Դϴ�."
				//������ ���� �Ǿ����ϴ�.
				/* String select = "SELECT COUNT(*) AS CNT FROM STUDENT WHERE STU_NO = " + stuNo;
				rs = stmt.executeQuery(select);
				rs.next();
				int cnt = Integer.parseInt(rs.getString("CNT"));
				if(cnt == 1){
					out.println("�̹� �ִ� �й��Դϴ�.");
				}else{
					String sql = "INSERT INTO STUDENT(STU_NO) VALUES('"+stuNo+"')";
					stmt.executeUpdate(sql);
					out.println("���� �Ǿ����ϴ�.");
				}*/
				String select = "SELECT COUNT(*) AS CNT FROM STUDENT WHERE STU_NO = " + stuNo;
				rs = stmt.executeQuery(select);
				if(rs.next()){
					out.println("�̹� �ִ� �й��Դϴ�.");
				}else{
					String sql = "INSERT INTO STUDENT(STU_NO) VALUES('"+stuNo+"')";
					stmt.executeUpdate(sql);
					out.println("���� �Ǿ����ϴ�.");
					
				}
				//������ �ϸ� 1�� �Ѿ���� �ƴϸ� 0�� �Ѿ��
			}else if(kind.equals("remove")){
				//db ����(remove)
				String sql = "DELETE FROM STUDENT WHERE STU_NO = " + stuNo;
				int num = stmt.executeUpdate(sql);
				out.println("���� �Ǿ����ϴ�.");
			}
			
		}catch(SQLException e){
			out.println(e.getMessage());
		}
		
		
	%> 
	
</body>
</html>