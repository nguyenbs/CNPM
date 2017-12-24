<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
	body{
		margin: 0 auto;
		background-image: url("../resources/image/main_bg.jpg"); 
		background-repeat: no-repeat;
		background-size: 100% 100%;
		
	}
	.container{
		width: 500px;
		height: 400px;
		text-align: center;
		margin: 0 auto;
		background-color: rgba(52,73,94,0.7);
		margin-top: 150px;
		border-radius: 4px;
	}
	.container img{
		width: 140px;
		height: 140px;
		margin-top: -60px;
		margin-right: 30px;
		margin-bottom: 30px;
		
	}
	
	input[type="text"],input[type="password"]{
		width: 300px;
		height: 45px;
		font-size: 18px;
		margin-bottom: 20px;
		background-color: #fff;
		padding-left: 40px;
		border: none;
	}
	.glyphicon{
		font-size: 30px;
	    color: red;
	    margin-top: 15px;
	    margin-right: -35px;
	}
	.btn-login{
		height: 45px;
		color: #fff;
		cursor: pointer;
		background-color: #2ECC71;
		padding: 15px 25px;
		border: none;
		margin-bottom: 20px;
	}
	.btn-cancel{
		height: 45px;
		color: #fff;
		cursor: pointer;
		background-color: #2ECC71;
		padding: 15px 25px;
		border: none;
		margin-bottom: 20px;
	}
	a{
		color: #fff;
		
	}
	.error {
	 	  	color: yellow;
   }
</style>
<head>
	<title>CĐV WORK</title>
</head>
<body>
	<div class="container">
		<img alt="anh admin" src="<c:url value ="../resources/image/icon_admin.png"/>">
		<form method="post" action="${pageContext.request.contextPath}/checkAccount.htm" id = "formUser" onsubmit="return validateForm();">
			<div class="form-input">
				<span class="glyphicon glyphicon-user"></span>
				<input type="text" id="usename" name="usename" onblur = "clearMessage()" placeholder="Nhập tên đăng nhập..."/></br>
				<span id = "usename-error" class = "error"> </span>
			</div>	
			<div class="form-input">
				<span class="glyphicon glyphicon-lock"></span>
				<input type="password" id="password" name="password" onblur = "clearMessage()" placeholder="Nhập mật khẩu..."/></br>
				<span id = "password-error" class = "error"> </span>
			</div>	
			<input type="submit" name="submit" value="ĐĂNG NHẬP" class="btn-login" >
			<input type="button" name="button" value="QUAY LẠI" class="btn-cancel"
				onClick='window.location="../index.jsp"' ></br>
			<a href="#">Quên mật khẩu</a>
		</form>
		
	</div>
</body>
<script>
	function validateForm() {
		
		if (!$("#usename").val().trim()) {
			$("#usename-error").text("Tên đăng nhập không được để trống");
			return false;
		}
		return true;	
	}
	function validateForm() {
		
		if (!$("#password").val().trim()) {
			$("#password-error").text("Mật khẩu không được để trống");
			return false;
		}
		return true;	
	}
	function clearMessage() {
		 if ($("#usename").val()) {
			$("#usename-error").text("");
		}

	}
	function clearMessage() {
		 if ($("#password").val()) {
			$("#password-error").text("");
		}

	}
</script>