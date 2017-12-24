<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
.dropdown {
	-moz-border-bottom-colors: none;
	-moz-border-left-colors: none;
	-moz-border-right-colors: none;
	-moz-border-top-colors: none;
	background: #fff;
	border-image: none;
	border-radius: 3px;
	border-style: solid;
	border-width: 1px;
	box-shadow: 0 1px 1px rgba(0, 0, 0, 0.08);
	display: inline-block;
	height: 50px;
	overflow: hidden;
	position: relative;
	width: 200px;
	margin-right: 10px;
	border-color: red;
}

.dropdown:before, .dropdown:after {
	-moz-border-bottom-colors: none;
	-moz-border-left-colors: none;
	-moz-border-right-colors: none;
	-moz-border-top-colors: none;
	border-color: #888888 rgba(0, 0, 0, 0);
	border-image: none;
	border-style: dashed;
	border-width: 4px;
	content: "";
	height: 0;
	pointer-events: none;
	position: absolute;
	right: 10px;
	top: 9px;
	width: 0;
	z-index: 2;
}

.dropdown:before {
	border-bottom-style: solid;
	border-top: medium none;
}

.dropdown:after {
	border-bottom: medium none;
	border-top-style: solid;
	margin-top: 27px;
}

.dropdown-select {
	background: none repeat scroll 0 0 rgba(0, 0, 0, 0) !important;
	border: 0 none;
	border-radius: 0;
	color: #62717A;
	font-size: 18px;
	height: 50px;
	line-height: 14px;
	margin: 0;
	padding: 6px 8px 6px 10px;
	position: relative;
	text-shadow: 0 1px #FFFFFF;
	width: 130%;
}

.dropdown-select:focus {
	color: #394349;
	outline: 2px solid #49AFF2;
	outline-offset: -2px;
	width: 100%;
	z-index: 3;
}

.dropdown-select>option {
	background: none repeat scroll 0 0 #F2F2F2;
	border-radius: 3px;
	cursor: pointer;
	margin: 3px;
	padding: 6px 8px;
	text-shadow: none;
}

.row {
	margin-left: 0px;
	width: 1140px;
}

#find {
	float: right;
	padding-top: 140px;
	padding-right: 20px;
	width: 580px;
	height: 100px;
}

input[type="text"] {
	width: 300px;
	height: 45px;
	font-size: 18px;
	margin-bottom: 20px;
	background-color: #fff;
	padding-left: 40px;
	border: none;
}

.btn-login {
	height: 45px;
	color: #fff;
	cursor: pointer;
	background-color: #2ECC71;
	padding: 15px 25px;
	border: none;
	margin-bottom: 20px;
}

#title {
	position: absolute;
	left: 60%;
	top: 45%;
	padding: 20px;
	transform: translate(-50%, -50%);
}

#title1 {
	color: red;
	font-size: 30px;
	font-family: Times New Roman;
	width: 600px;
}

#header {
	overflow: auto;
}

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
				<img alt="logo" src="resources/image/logo_a.png" height="200px">
				<div id="find">
					<form action="${pageContext.request.contextPath}/listTimKiem.htm"
						id="formUser">
						<div class="form-input">
							<input type="text" id="timKiem" name="timKiem"
								onblur="clearMessage()" placeholder="Nhập từ khóa..." /><span>
								<input type="submit"  value="Tìm kiếm"
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
					<li><span class="glyphicon glyphicon-home"></span><a href="">Trang
							chủ</a></li>
					<li><span class="glyphicon glyphicon-leaf"></span><a
						href="jsp/introduce.jsp">Giới thiệu</a></li>
					<li><span class="glyphicon glyphicon-star"></span><a
						href="${pageContext.request.contextPath}/listBaiVietMoi.htm">Việc
							làm mới </a><img alt="icon-hot"
						src="<c:url value ="resources/image/icon-hot.gif"/>" /></li>
					<li><span class="glyphicon glyphicon-tag"></span><a
						href="jsp/account.jsp">Đăng ký</a></li>
					<li><span class="glyphicon glyphicon-tags"></span><a
						href="jsp/login.jsp">Đăng nhập</a></li>
					<li><span class="glyphicon glyphicon-globe"></span><a href="">Cẩm
							nang việc làm</a>
						<ul>
							<li><a href="jsp/tendency.jsp">Xu hướng việc làm</a></li>
							<li><a href="jsp/CV.jsp">Cách viết CV</a>
							<li><a href="jsp/kiNang.jsp">Kĩ năng phỏng vấn</a></li>
							<li><a href="jsp/cauHoi.jsp">Câu hỏi phỏng vấn thường
									gặp</a></li>
						</ul></li>
					<li><span class="glyphicon glyphicon-send"></span><a
						href="jsp/lienHe.jsp">Liên hệ</a></li>
					<li><span class="glyphicon glyphicon-pencil"></span><a
						href="jsp/vietBai.jsp">Viết bài</a></li>
				</ul>
				<div class="clear"></div>
			</div>
		</div>
		<div class="row" id="welcome">
			<div class="col-md-2" id="he">
				<img src="<c:url value ="/resources/image/icon_hello_1.png"/>" />
			</div>
			<div class="col-md-3" id="hello">
				<p>WELCOME EVERYONE</p>
			</div>
			<div class="col-md-2" id="he">
				<img src="<c:url value ="/resources/image/icon_hello_3.png"/>" />
			</div>
		</div>
		<div id="slide">
			<form class="form-inline"
				action="${pageContext.request.contextPath}/listBaiViet.htm">
				<div id="form_tim_viec">
					<div class="form-group">
						<div class="dropdown">
							<select name="nhomNghe" id="nhomNghe" class="dropdown-select">
								<option value="">Tất cả ngành nghề…</option>
								<option value="Kế toán - Kiểm toán">Kế toán - Kiểm toán</option>
								<option value="Hành chính - Văn phòng">Hành chính - Văn
									phòng</option>
								<option value="Bán hàng">Bán hàng</option>
								<option value="Xây dựng">Xây dựng</option>
								<option value="Điện - Điện tử">Điện - Điện tử</option>
								<option value="Nhân viên kinh doanh">Nhân viên kinh
									doanh</option>
								<option value="Công nghệ thông tin">Công nghệ thông tin</option>
								<option value="Báo chí - Truyền hình">Báo chí - Truyền
									hình</option>
								<option value="Y tế - Dược">Y tế - Dược</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<div class="dropdown">
							<select name="nhomLuong" id="nhomLuong" class="dropdown-select">
								<option value="">Tất cả mức lương…</option>
								<option value="Dưới 3 triệu">Dưới 3 triệu</option>
								<option value="3 - 5 triệu">3 - 5 triệu</option>
								<option value="5 - 7 triệu">5 - 7 triệu</option>
								<option value="7 - 10 triệu">7 - 10 triệu</option>
								<option value="10 - 12 triệu">10 - 12 triệu</option>
								<option value="12 - 15 triệu">12 - 15 triệu</option>
								<option value="15 - 20 triệu">15 - 20 triệu</option>
								<option value="20 - 25 triệu">20 - 25 triệu</option>
								<option value="Trên 25 triệu">Trên 25 triệu</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<div class="dropdown">
							<select name="khuVuc" id="khuVuc" class="dropdown-select">
								<option value="">Tất cả tỉnh thành…</option>
								<option value="Hà Nội">Hà Nội</option>
								<option value="TP. Hồ Chí Minh">TP. Hồ Chí Minh</option>
								<option value="Bình Dương">Bình Dương</option>
								<option value="Bạc Liêu">Bạc Liêu</option>
								<option value="Cà Mau">Cà Mau</option>
								<option value="Hưng Yên">Hưng Yên</option>
								<option value="Nam Định">Nam Định</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<button style="height: 50px" type="submit" class="btn btn-primary">Tìm
							việc</button>
					</div>
				</div>
			</form>
		</div>
		<div id="footer">
			<div class="row">
				<img alt="footer" src="resources/image/footer.jpg" width="400px" height="150px">
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
		console.log("${pageContext.request.contextPath}");
		var el = document.getElementById("header");
		el.style.backgroundSize = "100% 100%";

		var el = document.getElementById("slide");
		el.style.backgroundSize = "100% 100%";

		var el = document.getElementById("footer");
		el.style.backgroundSize = "100% 100%";
	</script>
</body>
</html>
