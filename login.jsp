<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<meta charset="utf-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/cfc06d4855.js" crossorigin="anonymous"></script>
<style>
*{
	margin:0;
	padding: 0;
	font-family: Century Gothic;
}

header{
	background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)), url(mainhouse.jpg);
	height: 100vh;
	background-size: cover;
	background-position:center;
}
ul{
	float: right;
	list-style-type: none;
	margin-top:50px;
}
ul li{
	display:inline-block;
}
ul li a{
	border-radius: 4px;
	color: #fff;
	padding:5px 20px;
	border: 1px solid transparent;
	text-decoration: none;
	transition: 0.6s ease; 

}
ul li a:hover{
	background-color: #fff;
	color:#000;
}
ul li.active a{
	background-color: #fff;
	color:#000;
}
.logo img{
	float: left;
	width: 500px;
	height: auto;
}
.main{
	max-width:1400px;
	margin: auto;
}
.title{
	position: absolute;
	top: 50%;
	left: 50%;
	transform:translate(-50%,-50%);
}

.title h3{
	color:#fff;
	font-size: 30pt;
	text-align: center;
}
.button{
	position: absolute;
	top: 250%;
	left: 50%;
	transform:translate(-50%,-50%);
}
.btn{
	border:1px solid #fff;
	padding: 10px 30px;
	color: #fff;
	text-decoration:none;
	transition: 0.6s ease;
	
}
.btn:hover{
	background-color: #fff;
	color:#000;
}

	</style>
	</head>
	<body>
		<header>
			<div class="main">
				<div class="logo">
					<a href="hp.html"><img src="logo.png"></a>
				</div>
				<ul>
					<li><a href="about.html">ABOUT</a></li>
					<li><a href="shop2.html">SHOP</a></li>
					<li><a href="magazine.html">MAGAZINE</a></li>
					<li><a href="contact.html">CONTACT</a></li>
					<li><a href="login.html">LOG-IN</a></li>
				</ul>
			</div>
			<div class="title">
		<%
            request.setCharacterEncoding("utf-8");
			String strEmail = request.getParameter("email");
			String strPw = request.getParameter("pw");
			if (strEmail.equals("asdf@asdf") && strPw.equals("asdf")){
		%>
			<h3>!!환영합니다!!</h3><br>
				<div class="button">
					<a href="hp.html" class="btn">홈으로</a>
				</div>
		<%}else{ %>
			<h3>아이디 또는 비밀번호가 일치하지 않습니다.</h3><br>
				<div class="button">
					<a href="login.html" class="btn">돌아가기</a>
					<a href="hp.html" class="btn">홈으로</a>
				</div>
		<%
			}
		%>
			</div>
			
	</header>
</body>
</html>