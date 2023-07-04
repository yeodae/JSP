<html>
<head>
<title>Scripting Tag</title>
</head>
<body>
	<%
		for(int i=0; i<= 10; i++){
            if(i%2==0){
                out.println("<span style='color : red;'>" + i + "</span><br>");
            }
        }
	%>
</body>
</html>