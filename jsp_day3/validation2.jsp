<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form name="login" action="success.jsp">
        <div>
            ID : <input type="text" name="id">
        </div>
        <div>
            PW : <input type="password" name="pw">
        </div>
        <input type="button" value="����" onclick="check();">
        </form>
</body>
</html>
<script>
	//check �Լ� ����
	// id�� ���� ��ҹ��ڸ� �Է� �����ϵ���
	// ���� Ư������ �ѱ� ���� �Էµǰ� ������ ������ "���� ��ҹ��ڸ� ����" �˸�
	// �н������ ���ڸ� �����ϰ� �ƴҰ�� "��z`������� ���ڸ� ����" �˸�
	function check(){
    var id = document.login.id.value;
    var pw = document.login.pw.value;

    var regExp = /^[a-z]+[a-z0-9]{5,19}$/g;
    var pwdExp = /^(?=.*\d)(?=.*[a-zA-Z])[0-9a-zA-Z]{8,16}$/;

    if(!regExp.test(id)){
        alert("ID�� 6~20�� ���� ���ڸ�");
        login.id.select();
        return;
    }
    else if(!pwdExp.test(pw)){
        alert("PWD�� 8~16�� ����,�������ո�");
        login.pw.select();
        return;
    }
    login.submit();
}
	
	
</script>