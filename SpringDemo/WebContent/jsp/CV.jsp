
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Người tìm việc - Việc tìm người</title>
<meta charset="UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
					<form action="${pageContext.request.contextPath}/listTimKiem.htm"
						id="formUser">
						<div class="form-input">
							<input type="text" id="username" name="username"
								onblur="clearMessage()" placeholder="Nhập từ khóa..." /><span>
								<input type="submit" value="Tìm kiếm"
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
				<div class="col-md-2">
					<img src="<c:url value ="../resources/image/icon_hello_1.png"/>" />
				</div>
				<div class="col-md-3" id="hello">
					<p>WELCOME EVERYONE</p>
				</div>
				<div class="col-md-2">
					<img src="<c:url value ="../resources/image/icon_hello_3.png"/>" />
				</div>
			</div>
			<h3>CV LÀ GÌ</h3>
			<div class="row">

				<div class="col-md-5">
					<img alt="cv" src="<c:url value ="../resources/image/cv_1.jpg"/>"
						height="300px" width="430px"> <em
						style="text-align: center;">Hình 1. Kỹ năng viết CV vô cùng
						quan trọng khi xin việc</em>
				</div>

				<div class="col-md-7">

					<p>Nói nôm na, CV giữ vai trò như tấm vé vượt qua “vòng giữ xe”
						của tuyển dụng. Vừa dễ lại vừa khó.</p>
					<p>CV là viết tắt của cụm từ “Curriculum Vitae”. CV thường được
						dịch là sơ yếu lý lịch, nhưng không phải chỉ có thế. Bản chất của
						CV là tóm tắt những thông tin về trình độ học vấn, kinh nghiệm làm
						việc và các kỹ năng liên quan tới công việc mà ứng viên muốn ứng
						tuyển.</p>
					<p>Văn bản này giữ vai trò quan trọng để nhà tuyển dụng đánh
						giá và xem xét từng ứng viên, thậm chí là nền tảng thiết yếu để
						loại những ứng viên không phù hợp trước vòng phỏng vấn. Ngoài ứng
						tuyển việc làm, CV còn là hồ sơ thiết yếu trong dự tuyển học bổng,
						chương trình trao đổi sinh viên, các cuộc thi có tính sàng lọc,
						cạnh tranh cao.</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">

					<h3>CV GỒM NHỮNG GÌ?</h3>
					<ul type="circle">
						<li>Thông tin cá nhân: họ tên, ngày tháng năm sinh, quê quán,
							số điện thoại và e-mail liên lạc</li>

						<li>Trình độ học vấn: nên liệt kê cấp học từ cao đẳng/đại học
							trở lên. Ngoài ra bạn cũng có thể thêm vào các khóa học chuyên
							môn, nghiệp vụ mà bạn đăng ký học ở các trung tâm.</li>

						<li>Kinh nghiệm làm việc: chỉ nên viết vào CV những công việc
							trong cùng ngành nghề, hoặc có liên quan đến vị trí mà bạn ứng
							tuyển. Nếu bạn đang là sinh viên hoặc có quá ít kinh nghiệm thì
							hãy thay thế bằng các hoạt động xã hội, đội nhóm giúp bạn tích
							lũy được những kỹ năng cần thiết cho công việc.</li>

						<li>Kỹ năng: tin học văn phòng, kỹ năng mềm (giao tiếp,
							thuyết trình), hoặc các kỹ năng đặc thù của công việc như thiết
							kế, lập trình, v.v…</li>

						<li>Mục tiêu nghề nghiệp: nêu rõ những dự định, thành tựu mà
							mình muốn đạt được trong tương lai hoặc bản kế hoạch ngắn gọn các
							việc cần làm để đạt được mục tiêu đó. Có thể viết mục tiêu ngắn
							hạn và dài hạn để thể hiện bạn là người có chí tiến thủ và biết
							lập kế hoạch rõ ràng.</li>

						<li>Chứng chỉ và giải thưởng (nếu có): ví dụ chứng chỉ ngoại
							ngữ (IELTS, TOEFL iBT), tin học, giải thưởng của các cuộc thi
							chuyên môn, v.v…</li>
					</ul>

					<h3>MỘT SỐ LƯU Ý KHI VIẾT CV</h3>
					<ul style="list-style-type: square">

						<li>Không dùng từ ngữ quá khoa trương, to tát</li>

						<li>Trình bày ngắn gọn, súc tích</li>

						<li>Không viết tất cả những công việc bạn làm, kỹ năng bạn có
							vào CV, vì chúng có thể khiến CV của bạn trở nên dài dòng, lan
							man</li>

						<li>Chú ý đến những từ khóa trong yêu cầu công việc để đưa
							vào CV thông tin phù hợp</li>

						<li>Viết ngắn gọn và súc tích, độ dài từ 1 - 2 trang là phù
							hợp nhất</li>
					</ul>
				</div>
				<div class="col-md-6">
					<img alt="cv_mau"
						src="<c:url value ="../resources/image/cv_2.png"/>" height="800px"
						width="540px"> <em style="text-align: center;">Hình 2.
						CV mẫu tương đối chuẩn, đầy đủ và khá bắt mắt</em>
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
