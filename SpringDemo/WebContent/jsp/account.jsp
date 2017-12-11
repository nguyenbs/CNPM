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
		width: 1000px;
		height: 800px;
		text-align: center;
		margin: 0 auto;
		background-color: rgba(52,73,94,0.7);
		margin-top: 150px;
		margin-bottom:90px;
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
		height: 50px;
		font-size: 18px;
		margin-bottom: 20px; 
		background-color: #fff;
		padding-left: 40px;
		border: none;
	}
	.form-checkbox{
		color: #fff;
		font-size: 18px;
		padding-left: 40px;
		margin-bottom: 20px;
		border: none;
	}
	.form-checkbox span{
		float:left;
		padding-left: 40px;
	}
	.glyphicon{
		font-size: 30px;
	    color: red;
	    margin-top: 15px;
	    margin-right: -35px;
	}
	.btn-login, .btn-cancel{
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
	p{
		font-size: 20px;
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
		<form  method="post" action="${pageContext.request.contextPath}/insertAccount.html" id = "formUser" onsubmit="return validateForm();">
			<div class="row">
				<div class="col-md-6">
					<p>Thông tin đăng nhập</p>
					<div class="form-input">
						<span class="glyphicon glyphicon-user"></span>
						<input type="text" id="username" name="username" onblur = "clearMessage()" placeholder="Nhập tên đăng nhập của bạn..."/></br>
						<span id = "username-error" class = "error"> </span>
					</div>	
					<div class="form-input">
						<span class="glyphicon glyphicon-lock"></span>
						<input type="password" id="password" name="password" onblur = "clearMessage()" placeholder="Nhập mật khẩu..."/></br>
						<span id = "password-error" class = "error"> </span>
					</div>	
					<div class="form-input">
						<span class="glyphicon glyphicon-globe"></span>
						<input type="password" id="repeat_password" name="repeat_password" onblur = "clearMessage()" placeholder="Nhập lại mật khẩu..."/></br>
						<span id = "repeat_password-error" class = "error"> </span>
					</div>
				</div>
				<div class="col-md-6">
					<p>Thông tin cá nhân</p>
					<div class="form-input">
						<span class="glyphicon glyphicon-user"></span>
						<input type="text" id="name" name="name" onblur = "clearMessage()" placeholder="Nhập họ tên của bạn..."/></br>
						<span id = "name-error" class = "error"> </span>
					</div>	
					<div class="form-input">
						<span class="glyphicon glyphicon-star"></span>
						<input type="text" id="birthday" name="birthday" placeholder="Nhập ngày sinh..."/>
					</div>	
					<div class="form-input">
						<span class="glyphicon glyphicon-envelope"></span>
						<input type="text" id="email" name="email" onblur = "clearMessage()" placeholder="Nhập email của bạn..."/></br>
						<span id = "email-error" class = "error"> </span>
					</div>	
					<div class="form-checkbox">
						<span>Giới tính:</span>
						<input type="radio" name="sex" /> Nam &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="sex" /> Nữ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</div>	
					<div class="form-input">
						<span class="glyphicon glyphicon-home"></span>
						<input type="text" name="address" placeholder="Nhập địa chỉ hiện tại..."/>
					</div>	
					<div class="form-input">
						<span class="glyphicon glyphicon-phone-alt"></span>
						<input type="text" id="phone" name="phone" onblur = "clearMessage()" placeholder="Nhập số đện thoại..."/></br>
						<span id = "phone-error" class = "error"> </span>
					</div>
				</div>	
			</div>
			<input type="submit" name="submit" value="ĐĂNG KÝ" class="btn-login" >
			<input type="button" name="button" value="QUAY LẠI" class="btn-cancel" id="btn-cancel" 
				onClick='window.location="../index.jsp"'>
		</form>
		
	</div>
</body>
<script>
	function validateForm() {
		
		if (!$("#username").val().trim()) {
			$("#username-error").text("Tên đăng nhập không được để trống");
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
	function validateForm() {
	
		if (!$("#repeat_password").val().trim()) {
			$("#repeat_password-error").text("Mật khẩu xác nhận không được để trống");
			return false;
			}
		return true;	
	}
	function validateForm() {
	
		if (!$("#name").val().trim()) {
			$("#name-error").text("Họ tên không được để trống");
			return false;
		}
	return true;	
	}
	function validateForm() {
		
		if (!$("#email").val().trim()) {
			$("#email-error").text("Email không được để trống");
			return false;
		}
		return true;	
	}
	function validateForm() {
		
		if (!$("#phone").val().trim()) {
			$("#phone-error").text("Số điện thoại không được để trống");
			return false;
		}
		return true;	
	}
	function clearMessage() {
		 if ($("#username").val()) {
			$("#username-error").text("");
		}

	}
	function clearMessage() {
		 if ($("#password").val()) {
			$("#password-error").text("");
		}

	}
	function clearMessage() {
		 if ($("#repeat_password").val()) {
			$("#repeat_password-error").text("");
		}

	}
	function clearMessage() {
		 if ($("#name").val()) {
			$("#name-error").text("");
		}

	}
	function clearMessage() {
		 if ($("#email").val()) {
			$("#email-error").text("");
		}

	}
	function clearMessage() {
		 if ($("#phone").val()) {
			$("#phone-error").text("");
		}

	}
</script>
<script type="text/javascript">
    $(document).ready(function(){
        $( "#birthday" ).datepicker();
        $( "#birthday" ).datepicker( "option", "dateFormat", "dd/mm/yy" );
        $( "#birthday" ).val('<c:out value="${birthday}"/>');

    });
</script>