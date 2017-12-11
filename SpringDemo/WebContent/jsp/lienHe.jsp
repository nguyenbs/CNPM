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
						href="jsp/vietBai.jsp">Viết bài</a></li>
				</ul>
				<div class="clear"></div>
			</div>
		</div>
		<div id="page">
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
			<h3>LIÊN HỆ VỚI CHÚNG TÔI</h3>
			<div class="row">
				<div class="col-md-5">
					<img alt="gioithieu"
						src="<c:url value ="../resources/image/lienhe_1.png"/>"
						width="450px" height="300px"> <em
						style="text-align: center;">Hình 1. Hãy liên hệ để có sự tư
						vấn tốt nhất</em>
				</div>
				<div class="col-md-7">
					<strong>CĐV WORK - Sự lựa chọn hàng đầu trong tư vấn, cung
						cấp thông tin việc làm miễn phí và chính xác nhất</strong>
					<p>Giấy phép hoạt động dịch vụ việc làm số: 17343/SLĐTBXH do Sở
						Lao Động Thương Binh & Xã Hội TP.Hà Nội cấp</p>
					<p>
						<strong>Trụ sở: </strong>Tòa nhà T5 - Đại học Khoa Học Tự Nhiên -
						Đại học Quốc Gia Hà Nội
					</p>
					<p>
						<strong> Điện thoại: </strong>0904616491
					</p>
					<p>
						<strong>Email hỗ trợ NTV: </strong>doainguyen1997@gmail.com
					</p>
					<p>
						<strong>Email hỗ trợ NTD: </strong>doainh@vhc.com.vn
					</p>
					<p>
						Mọi thông tin chi tiết về CĐV WORK, kính mời quý khách truy cập
						tại địa chỉ <a>www.cdvwork.vn</a>
					</p>
					<strong>CĐV WORK - Tự hào là 1 trong 10 website việc làm
						lớn nhất Việt Nam</strong>
				</div>

			</div>

			<div id="footer">
				<div class="row">
					<img alt="footer" src="../resources/image/footer.jpg" width="400px"
						height="150px">
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
