<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="Test_Main.jsp" name="test">
		<input type="text" name ="stuNo" />
		<div>
			<button onclick="search()">검색</button>
			<button onclick="insert()">삽입</button>
			<button onclick="remove()">삭제</button>
		</div>
	</form>
</body>
</html>
<script>
	function search(){
		var input = document.createElement("input");
		var name = document.createAttribute("name");
		var val = document.createAttribute("value");
		
		name.value = "kind";		
		val.value = "search";
		input.setAttributeNode(name);
		input.setAttributeNode(val);
		input.setAttributeNode(document.createAttribute("hidden"));
		
		document.test.append(input);
		document.test.submit();
	}
	function search(){
		setValue("search");
	}
	function insert(){
		setValue("insert");
	}
	function remove(){
		setValue("remove");
	}
</script>
</script>