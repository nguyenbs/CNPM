
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Người tìm việc - Việc tìm người</title>
<meta charset="UTF-8">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
	integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb"
	crossorigin="anonymous">
<link rel="stylesheet" href="resource/css/style.css" type="text/css">
<!--  <link rel="stylesheet" href= "/resource/js/bootstrap.min.css" type="text/css"> -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous">
	
</script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"
	integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"
	integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ"
	crossorigin="anonymous"></script>
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
.row{
	margin-left: 0px;
	width: 1140px;
}
</style>
</head>
<body>
	<div class="container">
		<!-- Xác định độ rộng Website -->

		<div id=header>
			<div id="title">
				<div id="title1">CĐV WORK</div>
				<div id="title2">Nói không với thất nghiệp</div>
			</div>
		</div>
		<div class="wrapper">
			<div class="main_menu">
				<ul>
					<li><a href="">Trang chủ</a></li>
					<li><a href="jsp/introduce.jsp">Giới thiệu</a></li>
					<li><a href="">Việc làm mới </a><img alt="icon-hot"
						src="resource/image/icon-hot.gif" /></li>
					<li><a href="jsp/account.jsp">Đăng ký</a></li>
					<li><a href="jsp/login.jsp">Đăng nhập</a></li>
					<li><a href="">Cẩm nang việc làm</a>
						<ul>
							<li><a href="jsp/tendency.jsp">Xu hướng việc làm</a></li>
							<li><a href="jsp/CV.jsp">Cách viết CV</a>
							<li><a href="jsp/kiNang.jsp">Kĩ năng phỏng vấn</a></li>
							<li><a href="">Câu hỏi phỏng vấn thường gặp</a></li>
						</ul></li>
					<li><a href="jsp/lienHe.jsp">Liên hệ</a></li>
				</ul>
				<div class="clear"></div>
			</div>
		</div>
		<div class="row" id="welcome">
			<div class="col-2" id="he">
				<img src="resource/image/icon_hello_1.png" />
			</div>
			<div class="col-md-3" id="hello">
				<p>WELCOME EVERYONE</p>
			</div>
			<div class="col-md-2" id="he">
				<img src="resource/image/icon_hello_3.png" />
			</div>
		</div>
		<div id="slide">
			<form class="form-inline" action="${pageContext.request.contextPath}/listBaiViet.html">
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
				<div class="col-md-4">Trên con dường thành công không bao giờ
					có dấu chân của những kẻ lười biếng</div>
				<div class="col-md-4">Hãy đến với chúng tôi để nhận được những
					thông tin và chia sẻ cơ hội việc làm uy tín nhất</div>
				<div class="col-md-4">Nếu thấy hay và bổ ích, đừng ngần ngại
					chia sẻ các thông tin này đến những người xung quanh bạn.</div>
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
