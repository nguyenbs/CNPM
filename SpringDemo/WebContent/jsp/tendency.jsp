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
					<li><span class="glyphicon glyphicon-star"></span><a href="">Việc
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
			<h3>XU HƯỚNG VIỆC LÀM TRONG TƯƠNG LAI</h3>
			<div class="row">
				<div class="col-md-5">
					<img src="<c:url value ="../resources/image/xu_huong_1.jpg"/>"
						height="300px" width="430px" /> <em style="text-align: center;">Hình
						1. Tài chính, ngân hàng cần lao động chất lượng cao</em>
				</div>
				<div class="col-md-7">
					<p>Theo báo cáo xu hướng việc làm do Trung tâm quốc gia dự báo
						và thông tin thị trường lao động (Bộ LĐ-TB-XH) công bố trong năm
						nay, cơ cấu thị trường lao động Việt Nam đã có những thay đổi nghề
						nghiệp trong thời gian gần đây.</p>
					<strong>Tài chính, ngân hàng sẽ cần chất hơn lượng</strong>
					<p>Có thể thấy rõ nhất trong các nhóm ngành kinh tế: tài chính,
						ngân hàng, chứng khoán. “Người Việt Nam thường có xu hướng thích
						chạy theo đám đông. Những năm trước, ai cũng nghĩ phải cho con cái
						theo học ngành đó. Kết quả, sau một thời gian phát triển nóng, gần
						đây có hiện tượng cắt giảm, tái cơ cấu lại lao động. Trong khi đó,
						có những doanh nghiệp sản xuất tìm mỏi mắt không ra kỹ sư, công
						nhân lành nghề.</p>
					<p>Rõ ràng ở Việt Nam công tác dự báo yếu kém, dẫn tới sự định
						hướng lệch trong lựa chọn ngành nghề”,</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-7">
					<strong>Ngành sản xuất và tiêu dùng phát triển bền vững</strong>
					<p>Về xu hướng ngành nghề dài hạn, phát triển bền vững vẫn phải
						là ngành sản xuất và tiêu dùng. Bà Vân Anh khẳng định: “Đây là
						những ngành phát triển bền vững không nóng, không nhanh như tài
						chính ngân hàng, nhưng với chính sách thu hút đầu tư nước ngoài
						vào Việt Nam, chính sách ưu đãi cho các nhà sản xuất, cộng với dân
						số Việt Nam trẻ nên thị trường tiêu thụ rất lớn.</p>
					<p>Chưa nói Việt Nam là nước sản xuất và xuất khẩu ngành hàng
						này ra nước ngoài”. Bà phân tích tiếp: “Khi nói đến sản xuất tiêu
						dùng, đương nhiên họ cần người có tay nghề, những thợ kỹ thuật
						lành nghề. Thay vì học đại học với những ngành phát triển “nóng”
						như: tài chính, kế toán; các bạn trẻ hãy suy nghĩ xem mình phù hợp
						với hướng phát triển nào. Học nghề cũng tốt, nếu mai sau ai đó trở
						thành thợ lành nghề sẽ được trọng dụng”.</p>
				</div>
				<div class="col-md-5">
					<img src="<c:url value ="../resources/image/xu_huong_2.jpg"/>"
						height="300px" width="430px" /> <em style="text-align: center;">Hình
						2. Sản xuất hàng tiêu dùng đang phát triển mạnh</em>

				</div>
			</div>
			<div class="row">
				<div class="col-md-5">
					<img src="<c:url value ="../resources/image/xu_huong_3.jpg"/>"
						height="500px" width="430px" /> <em style="text-align: center;">Hình
						3. Công nghệ phần mềm là xu thế phát triển tất yếu</em>

				</div>
				<div class="col-md-7">
					<strong>Công nghệ, kỹ thuật, kiến trúc, xây dựng nhu cầu
						cao</strong>
					<p>Theo dự báo của Trung tâm dự báo nguồn nhân lực và thông tin
						thị trường lao động TP.HCM, trong giai đoạn từ năm 2011-2015, nhu
						cầu nhân lực tại TP.HCM mỗi năm cần khoảng 265.000 lao động. Nhưng
						tại địa bàn này, tổng số sinh viên các trường ĐH-CĐ tốt nghiệp ra
						trường hằng năm từ 55.000-60.000 người, trong đó các ngành nghề
						chuyên môn kỹ thuật chiếm 40%, quản lý - nghiệp vụ chiếm 60% tổng
						số ngành nghề được đào tạo.</p>
					<p>Theo ông Trần Anh Tuấn, Phó giám đốc trung tâm, các ngành
						nghề có nhu cầu nhân lực cao thuộc khối ngành công nghệ, kỹ thuật,
						kiến trúc, xây dựng. Điển hình như: dệt may - giày da chiếm 35%;
						xây dựng - kiến trúc chiếm 11%; công nghệ thông tin - điện tử -
						viễn thông chiếm 11%... Tuy nhiên, theo tìm hiểu của chúng tôi, số
						lượng đào tạo các khối ngành này hiện tại thấp hơn nhiều so với
						nhu cầu. Ông Nguyễn Quốc Cường, chuyên viên tuyển sinh Cơ quan đại
						diện Bộ GD-ĐT tại TP.HCM, cho biết: “Khối ngành kiến trúc tại
						TP.HCM chỉ có một số trường đào tạo, như ĐH: Kiến trúc, Bách khoa,
						Văn Lang, Quốc tế Hồng Bàng… với tổng chỉ tiêu đào tạo khoảng 300
						sinh viên/năm. Còn ngành xây dựng gồm 12 trường ĐH - CĐ ngoài công
						lập và các trường ĐH: Giao thông vận tải TP.HCM, Giao thông vận
						tải (CS2), Bách khoa, Tôn Đức Thắng, Sư phạm kỹ thuật… thì mỗi năm
						đào tạo được khoảng 2.000 người”.</p>
					<p>Riêng khối ngành dệt may, giày da tại TP.HCM có các trường
						đào tạo như ĐH: Công nghiệp thực phẩm, Công nghiệp, CĐ Công
						thương, CĐ Kinh tế - kỹ thuật Vinatex với tổng chỉ tiêu khoảng
						800. Khối ngành công nghệ thông tin - điện tử - viễn thông của các
						trường tại TP.HCM hằng năm được khoảng 8.000 người.</p>
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
