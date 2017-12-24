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

p {
	font-family: Times New Roman;
	font-size: 20px;
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
					<form action="${pageContext.request.contextPath}/listTimKiem.htm"
						id="formUser">
						<div class="form-input">
							<input type="text" id="username" name="username"
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
					<li><span class="glyphicon glyphicon-home"></span><a
						href="../index.jsp">Trang chủ</a></li>
					<li><span class="glyphicon glyphicon-leaf"></span><a href="">Giới
							thiệu</a></li>
					<li><span class="glyphicon glyphicon-star"></span><a
						href="${pageContext.request.contextPath}/listBaiVietMoi.htm">Việc
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
			<h3>VÀI NÉT VỀ CĐV WORK</h3>
			<div class="row">
				<div class="col-md-5">
					<img alt="gioithieu"
						src="<c:url value ="../resources/image/gioithieu_CDV_2.jpg"/>"
						width="500px" height="300px"> <em
						style="text-align: center;">Hình 1. Kiếm việc làm chưa bao
						giờ là dễ</em>
				</div>
				<div class="col-md-7">
					<p>Đang trên đà phát triển theo hướng công nghiệp hóa, hiện đại
						hóa, Việt Nam luôn là điểm sáng thu hút các nhà đầu tư nước ngoài
						như Hàn Quốc, Đài Loan, và đặc biệt là Nhật Bản. Là bộ phận trực
						tiếp tham gia vào các quy trình sản xuất vì thế mà việc phát triển
						nguồn nhân lực cũng đóng vai trò hết sức quan trọng trong việc
						phát triển kinh tế của doanh nghiệp.</p>

					<p>Tuy nhiên, theo số liệu thống kê của Viện Khoa học Lao động
						và xã hội, tỉ lệ thất nghiệp của cả nước tính đến hết tháng 6 –
						2014 ở khoảng 1,84%, nằm trong top những nước có tỉ lệ thất nghiệp
						thấp trên thế giới. Tuy nhiên, điều đó không có nghĩa là Việt Nam
						đang có tình trạng việc làm ổn định cho người dân.</p>
				</div>
			</div>


			<div class="row">
				<div class="col-md-7">
					<p>Theo đánh giá của Ngân hàng thế giới ( World Bank), thì nước
						ta đang rất thiếu lao động có trình độ tay nghề, công nhân kĩ
						thuật bậc cao và chất lượng nguồn nhân lực Việt Nam cũng thấp hơn
						nhiều so với các nước khác. Trong khi tồn tại một nghịch lý đó là
						cử nhân, thạc sĩ ra trường không có việc làm vẫn còn ở mức báo
						động.</p>

					<p>Từ con số 72.000 người không có việc làm tăng lên đến
						162.000 người trong đầu năm nay, trong đó, nhóm người không có
						chuyên môn kỹ thuật chiếm gần 60% tổng số lao động thất nghiệp,
						nhóm có bằng đại học và trên đại học chiếm gần 17%. Như vậy, so
						với thế giới, Việt Nam thuộc diện có tỉ lệ thất nghiệp thấp nhưng
						đối với tình hình lao động việc làm trong nước thì tỉ lệ thất
						nghiệp vẫn chiếm tỉ lệ cao. Trong khi đó, các dự án đầu tư trực
						tiếp còn hiệu lực của doanh nghiệp nước ngoài vào Việt Nam là trên
						16.300 dự án, với tổng số vốn đầu tư thực tế khoảng 238 tỷ USD đã
						tạo ra không ít việc làm cho người lao động.</p>
				</div>
				<div class="col-md-5">
					<img src="<c:url value ="../resources/image/gioithieu_CDV_1.jpg"/>"
						width="500" height="300" /> <em style="text-align: center;">Hình
						2.Khó khăn trong định hướng nghề nghiệp</em>
				</div>
			</div>
			<div class="row">
				<div class="col-md-5">
					<img src="<c:url value ="../resources/image/gioithieu_CDV_3.jpg"/>"
						width="440" height="230" /> <em style="text-align: center;">Hình
						3. Hợp tác - Chia sẻ thành công cùng CĐV WORK</em>
				</div>
				<div class="col-md-7">
					<p>Từ những vấn đề bất cập trên, CĐV WORK đã ra đời như một
						kênh thông tin giữa nhà tuyển dụng và người lao động. Doanh nghiệp
						vừa có thể giới thiệu quảng bá hình ảnh của công ty mình, vừa đua
						ra các tiêu chí để lựa chọn những ứng cử viên sáng giá nhất. Còn
						người lao động, vừa có thể tìm hiểu nhu cầu về việc làm mới nhất
						của xã hội, vừa có thể xin ứng cử vào vòng phỏng vấn của doanh
						nghiệp, giảm tối thiểu lượng người thất nghiệp trong độ tuổi lao
						động. Vậy nên mới nói CĐV WORK là NGƯỜI TÌM VIỆC - VIỆC TÌM NGƯỜI
						là vậy</p>
					<p>Rất hoan nghênh các doanh nghiệp và người lao động ghé thăm
						và ủng hộ cho CĐV WORK. Hãy yên tâm vì đã có CĐV WORK luôn đồng
						hành bên bạn trên con đường sự nghiệp</p>
					<p>Good luck to you!</p>
				</div>
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
