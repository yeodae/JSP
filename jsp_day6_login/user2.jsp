<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table{
		border-collapse: collapse;
		text-align : center;
	}
	th, td{
		border : 1px solid black;
		padding : 5px 10px;
	}
</style>
</head>
<body>
<%@ include file="../jdbc_set.jsp" %>
<form name="list">
	<table>
		<tr>
			<th></th>
			<th>아이디</th>
			<th>이름</th>
			<th>핸드폰번호</th>
			<th>나이</th>
			<th>정지여부</th>
			<th>기능</th>
			<th>시도횟수</th>
		</tr>
		<%
			ResultSet rs = null;
			Statement stmt = null;
			try {
				String sql = "select * from TBL_USER WHERE STATUS = 'U' ORDER BY U_ID ASC";
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);
				while (rs.next()) {
					String uId = rs.getString("U_ID"); 
					String pw = rs.getString("PWD");
					String uName = rs.getString("U_NAME");
					String phone 
						= rs.getString("PHONE") != null ? rs.getString("PHONE") : "-";
					String age 
						= rs.getString("AGE")  != null ? rs.getString("AGE") : "-";
					String banYn 
						= rs.getString("BANYN").equals("Y") ? "정지" : "";
					String btnYn
						= rs.getString("BANYN").equals("Y") ? "해제" : "정지";
					int cnt = rs.getInt("CNT"); 
		%>
			<tr>
				<td>
					<input type="radio" name="user" value="<%=uId%>">
				</td>
				<td><%=uId%></td>
				<td><%=uName%></td>
				<td><%=phone%></td>
				<td><%=age%></td>
				<td style="color:red"><%=banYn%></td>
				<td><input type="button" value="<%=btnYn%>" onclick="banChange('<%=rs.getString("BANYN")%>','<%=uId%>')"></td>
				<td>
				<% if(cnt >= 5){ %>
					<input type="button" value="초기화" onclick="cntChange('<%=uId%>')">
				<% } %>
				</td>
			</tr>
			
		<%
				}
			}catch (SQLException ex) {
				out.println("Member 테이블 호출이 실패했습니다.<br>");
				out.println("SQLException: " + ex.getMessage());
			} 
		%>
	</table>
	<input type="button" onclick="userUpdate('<%=request.getParameter("U_ID")%>')" value="수정"/>
	<input type="button" onclick="userRemove()" value="삭제"/>
</form>
</body>
</html>
<script>
	function userRemove(){
		if(!confirm("정말 삭제하시겠습니까?")){
			return;
		}
		var form = document.list;
		location.href = "user2_del.jsp?uId=" + form.user.value;
	}
	function userUpdate(uId){ //유저 정보 수정
		var uId = document.list.user.value;
		window.open("user_update.jsp?uId="+uId,"update"
				,"width=500, height=500");
	}
	
	function banChange(kind, uId){
		if(kind == "N"){
			kind = "Y";
		}else{kind="N"}
		window.open("user_ban.jsp?uId="+uId+"&kind="+kind,"popup"
				,"width=500, height=500");
	}
	function cntChange(uId){ // 로그인 시도횟수
		window.open("user_cnt.jsp?uId="+uId,"popup"
				,"width=500, height=500");
	}
	
	function getReturn(){
		location.reload();
	}
</script>