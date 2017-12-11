<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Người tìm việc - Việc tìm người</title>
<meta charset="UTF-8">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="<c:url value ="/resources/css/style.css" />" type="text/css">
<style type="text/css">
.glyphicon {
	font-size: 20px;
	color: yellow;
	margin-right: 5px;
	margin-left: -15px;
}
</style>
</head>
<body>
	<div class="container">
		<!-- Xác định độ rộng Website -->

		<div id=header>
			<div id="logo">
				<img alt="logo" src="../resources/image/logo_a.png" height="200px">
				<div id="find">
					<form action="${pageContext.request.contextPath}/find.html"
						id="formUser">
						<div class="form-input">
							<input type="text" id="username" name="username"
								onblur="clearMessage()" placeholder="Nhập từ khóa..." /><span>
								<input type="submit" name="submit" value="Tìm kiếm"
								class="btn-login">
							</span>
						</div>
					</form>
				</div>
			</div>
			<div id="title">
				<div id="title1">KÊNH TƯ VẤN VIỆC LÀM TRỰC TUYẾN</div>
			</div>
		</div>
		<div class="wrapper">
			<div class="main_menu">
				<ul>
					<li><span class="glyphicon glyphicon-home"></span><a
						href="../index.jsp">Trang chủ</a></li>
					<li><span class="glyphicon glyphicon-leaf"></span><a
						href="introduce.jsp">Giới thiệu</a></li>
					<li><span class="glyphicon glyphicon-star"></span><a
						href="${pageContext.request.contextPath}/listBaiVietMoi.html">Việc
							làm mới </a><img alt="icon-hot"
						src="<c:url value ="../resources/image/icon-hot.gif"/>" /></li>
					<li><span class="glyphicon glyphicon-tag"></span><a
						href="account.jsp">Đăng ký</a></li>
					<li><span class="glyphicon glyphicon-tags"></span><a
						href="login.jsp">Đăng nhập</a></li>
					<li><span class="glyphicon glyphicon-globe"></span><a href="">Cẩm
							nang việc làm</a>
						<ul>
							<li><a href="tendency.jsp">Xu hướng việc làm</a></li>
							<li><a href="CV.jsp">Cách viết CV</a>
							<li><a href="kiNang.jsp">Kĩ năng phỏng vấn</a></li>
							<li><a href="cauHoi.jsp">Câu hỏi phỏng vấn thường gặp</a></li>
						</ul></li>
					<li><span class="glyphicon glyphicon-send"></span><a
						href="lienHe.jsp">Liên hệ</a></li>
					<li><span class="glyphicon glyphicon-pencil"></span><a
							href="vietBai.jsp">Viết bài</a></li>
				</ul>
				<div class="clear"></div>
			</div>
		</div>
		<div class="cont">
			<div class="row" id="welcome">
				<div class="col-md-2" id="he">
					<img src="<c:url value ="../resources/image/icon_hello_1.png"/>" />
				</div>
				<div class="col-md-3" id="hello">
					<p>WELCOME EVERYONE</p>
				</div>
				<div class="col-md-2" id="he">
					<img src="<c:url value ="../resources/image/icon_hello_3.png"/>" />
				</div>
			</div>
		</div>

	
			<c:forEach items="${listBaiViet}" var="item">
				<div class="row">
				<div class="col-md-5">
					<img alt="anhcongty" src="${item.anhCT}" width="450px"
						height="300px">
				</div>
				<div class="col-md-7">
					<h2>${item.tenCT}</h2>
					<p>
						<strong>Cần tuyển: </strong> <strong
							style="color: red; font-size: 15px;">${item.tenViecLam}</strong>
					</p>
					<p>
						<strong>Mức lương: </strong><strong
							style="color: red; font-size: 15px;">${item.mucLuong}</strong>
					</p>
					<p>Số lượng : ${item.soLuong}</p>
					<p>Địa điểm làm việc : ${item.diaDiem}</p>
					<a style="color: red; float: right;" href="">XEM CHI TIẾT</a>

				</div>
				</div>
			</c:forEach>
		

		<div id="footer">
			<div class="row">
				<img alt="footer" src="../resources/image/footer.jpg" width="400px" height="150px">
			</div>
			<div class="row">
				<div class="col-md-12">XIN CẢM ƠN QUÝ KHÁCH</div>
			</div>
			<div class="row">
				<div class="col-md-12" style="float: bottom">Bản quyền thuộc
					về công ty TNHH ba thành viên CĐV WORK</div>
			</div>
		</div>
	</div>


	<script>
		var el = document.getElementById("header");
		el.style.backgroundSize = "100% 100%";

		var el = document.getElementById("slide");
		el.style.backgroundSize = "100% 100%";

		var el = document.getElementById("footer");
		el.style.backgroundSize = "100% 100%";
	</script>
</body>
</html>
