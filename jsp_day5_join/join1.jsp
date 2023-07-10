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
<%@ include file="../jdbc_set.jsp" %>
	<form action="join2.jsp" name="join" method="post">
		<div>ID : <input type="text" name="id">
		<input type="button" value="ID중복체크" onclick="id2()">
		</div>
		<div>PW : <input type="text" name="pw1"></div>
		<div>PWV : <input type="text" name="pw2"></div>
		<div>NAME : <input type="text" name="name"></div>
		<div>PHONE : <input type="text" name="tel"></div>
		<div>AGE : <input type="text" name="age"></div>
		<div>ADDR <input type="text" name="addr"></div>
		<div><input type="button" onclick="join2()" value="회원가입"></div>
	</form>
</body>
</html>
<script>
	function id2(){ // 아이디 중복체크
		var id = document.join.id.value;
		
		if(id=="" || id==undefined){ // 아이디 빈칸 체크
			alert("아이디를 입력해주세요.");
			document.join.id.focus();
			return;
		}
		
		if(!/^[A-Za-z0-9]+$/.test(id)){
			alert("아이디는 한글사용금지");
			join.id.select();
			return;
		}
		
		if()
		
		else{
			alert("사용할 수 있는 ID입니다.");
		}
	}
	
	function join2(){
		var pw1 = document.join.pw1.value;
		var pw2 = document.join.pw2.value;
		var join=document.join;
		
		if(pw1 != pw2){ //두 패스워드 일치하는지 확인
			alert("두 패스워드가 다릅니다.");
			join.pw2.select();
			return;
		}
		
		if(pw1 == "" || pw1==undefined){
			alert("패스워드를 입력해주세요.");
			document.join.pw1.focus();
			return;
		}
		
		var name = document.join.name.value; 
		if(name=="" || name==undefined){ // 이름 빈칸 체크
			alert("이름을 입력해주세요.");
			document.join.name.focus();
			return;
		}
		var id = document.join.id.value;
		if(id=="" || id==undefined){ // 아이디 빈칸 체크
			alert("아이디를 입력해주세요.");
			document.join.id.focus();
			return;
		}
		join.submit();
	}
 
</script>