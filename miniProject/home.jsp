<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
 		@font-face {
    font-family: 'Ramche';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2307-1@1.1/Ramche.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
	}
         *{
          font-family: "Ramche";
         }
         
        #Lbody{
        	box-sizing: border-box; 
            margin: 0;
             padding: 0;
             margin-top: 130px;
        }
        #Lcontainer{
        	width: 1920px;
            border: 1px solid white;
            text-align: center;
            margin: 0 auto; 
           
            justify-content: center;
            align-items: center;
            border-radius: 10px;
            box-shadow: -5px -5px 10px #fff, 5px 5px 30px

            #babebc;
            overflow: hidden;
            font-size:15px;
           
        }
        #Limg{
            margin: 5px auto;
            display: flex;
        }
        form input {
            background: #eee;
            padding: 16px;
            margin: 8px 0;
            width: 60%;
            border: 0;
            outline: none;
            border-radius: 20px;
            box-shadow: inset 7px 2px 10px #babebc, inset -5px -5px 12px #fff;
        }
      
        [type="radio"] {
        vertical-align: middle;
        appearance: none;
        background-color: white;
        box-shadow: none;
        padding: 2px;
        width: 2px;
        
        }
        [type="submit"]{
            width: 20%;
            padding: 10px;
            
        }
       label:hover{
            border-bottom: 3px solid orange;
            cursor: pointer;
        }
        input:checked + label {
            color:rgb(233, 151, 0);
            border-bottom: 3px solid orange;
            font-weight: bold;
        }
        .submit:hover{
            cursor: pointer;
            color: rgb(233, 151, 0);
            font-weight: bold;
        }
         #logoBox{
            margin: 0 auto;
            padding: 0;
            width: 300px;   
        }
        #idbox{
            float: left;
        }
        #pwbox{
            float: right;
        }
        .find{
            margin: 20px;
            font-size: 13px;
        }
        .find:hover{
            font-weight: bold;
        }
        .find a{
            text-decoration: none;
            color: #bbb;
        }
        footer{
			display: flex;
			width: 1000px;
			margin: 0 auto;
			margin-top: 100px;
			}
		.box1{
			float:left;
			margin : 0 auto;
			display:block;
		}
        
    </style>
</head>

<body id="Lbody">
	<jsp:include page="header2.jsp"/>
	<%-- <%@ include file="header2.jsp" %> --%>
	<div id="Lcontainer">
		<div class="box1">
			<img src="홈메인.PNG">
		</div>
		<a href="login.jsp">
		<div class="box1">
			<img src="홈2.PNG">
		</div>
		</a>
		<div class="box1">
			<img src="홈메인2.PNG">
		</div>
		<div class="box1">
			<img src="홈메인3.PNG">
		</div>
		<div class="box1">
			<img src="홈메인4.PNG">
		</div>
		<div class="box1">
			<img src="홈메인5.PNG">
		</div>

	</div>
	<%-- <%@ include file="footer.jsp" %> --%>
	<footer><%@ include file="footer2.jsp" %></footer>
</body>
</html>