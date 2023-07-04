<%@ page contentType="text/html" pageEncoding="utf-8" %>
<html>
<head>
<title>Scripting Tag</title>
</head>
<body>
    <%@ page info="알림주기용 주석" %>
    <%-- 내부알림 주석(js) --%>
    <!-- 외부공개 주석(html)-->
	<%!
		String str1 = "JSP NOJAM !!";
		String str2 = "JSP 어렵다 !!";
	%>
    
    <h1><a href="http://naver.com" style="text-decoration: none;" target="_blank"><%= str1 %></a></h1>
    <h3><%= str2 %></h3>

</body>
</html>