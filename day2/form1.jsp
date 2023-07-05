<%@ page contentType="text/html" pageEncoding="utf-8" %>
<html>
<head>
<title>Form Processing</title>
</head>
<body>
	<h3>회원가입</h3>
	<form action="form1_view.jsp" name="member" method="post">
		<div>	아이디 : 
            <input type="text" name="id"> 
            <input type="button" value="아이디 중복검사"></div>
		<div>	비밀번호 : 
            <input type="password" name="passwd"></div>
		<div>	이름 : 
            <input type="text" name="name"></div>
		<div>	연락처 : 
            <select name="phone1">
                <option value="010">010</option>
                <option value="011">011</option>
                <option value="016">016</option>
                <option value="017">017</option>
                <option value="019">019</option>
            </select>
			- <input type="text" maxlength="4" size="4" name="phone2"> -
			<input type="text" maxlength="4" size="4" name="phone3"></div>
		<div> 성별 : 
            <input type="radio" name="gender" value="남성" checked>남성 
				<input	type="radio" name="gender" value="여성" >여성</div>
		<div>취미 : 독서<input type="checkbox" name="hobby"     value="독서" checked>
				운동<input type="checkbox" name="hobby" value="운동"> 
				영화<input type="checkbox" name="hobby" value="영화"></div>
        <div><textarea name="textarea" cols="30" rows="3" placeholder="가입인사를 입력해주세요"></textarea></div>
		<div>	<input type="submit" value="가입하기"> 
			<input type="reset"	value="다시쓰기"></div>
	</form>
</body>
</html>