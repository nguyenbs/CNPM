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
						src="<c:url value ="../resources/image/icon-hot.gif" />" /></li>
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
			<h3>KỸ NĂNG TRẢ LỜI PHỎNG VẤN XIN VIỆC</h3>
			<div class="row">
				<div class="col-md-5">
					<img alt="gioithieu"
						src="<c:url value ="../resources/image/kynang_1.jpg"/>"
						width="450px" height="300px"> <em
						style="text-align: center;">Hình 1. Phỏng vấn luôn là vòng
						thi căng thẳng và hồi hộp</em>
				</div>
				<div class="col-md-7">
					<p>Một cuộc phỏng vấn xin việc thành công là tổng hòa của rất
						nhiều yếu tố, từ hình thức đến nội dung. Nhiều người trước khi tìm
						được một công việc phù hợp đã phải trải qua nhiều lần phỏng vấn
						xin việc, và không ít lần thất bại. Câu hỏi “tại sao mình thất bại
						trong buổi phỏng vấn đó” dường như chưa được các ứng viên lưu tâm.
						Vì vậy để không lãng phí thời gian và công sức cho những cuộc
						phỏng vấn “ra về tay không”, hãy trang bị cho mình những kỹ năng
						trả lời phỏng vấn xin việc cần thiết nhất.</p>
					<strong>Trang phục nghiêm túc</strong>
					<p>Một trong những kỹ năng phỏng vấn xin việc quan trọng và cơ
						bản nhất chính là vấn đề trang phục. Mặc trang phục nghiêm túc
						chứng tỏ bạn hiểu biết về văn hóa doanh nghiệp và tôn trọng nhà
						tuyển dụng. Dù cho bạn có là người yêu thích sự thoải mái và tiện
						lợi thì cũng đừng nên diện quần jeans và áo pull để tham dự một
						buổi phỏng vấn xin việc.</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-7">
					<strong>Ngôn ngữ cơ thể</strong>
					<p>Ngôn ngữ cơ thể cũng quyết định yếu tố thành bại của bạn
						trong cuộc phỏng vấn không kém ngôn ngữ lời nói. Chỉ một hành động
						nhỏ mà bạn vô tình thể hiện cũng có thể minh chứng cho một thái độ
						tiêu cực đối với nhà tuyển dụng. Liên tục nhìn đồng hồ chứng tỏ
						bạn không dành nhiều thời gian và chưa toàn tâm toàn ý cho cuộc
						phỏng vấn, thậm chí xem đây là một công việc nhàm chán.</p>

					<p>Tư thế ngồi không thẳng lưng, vai xệ, ngọ nguậy trên ghế
						trong khi nói, hai bàn tay thường xuyên làm nhiều hành động thừa
						thãi, ánh mắt nhìn xuống… chứng tỏ bạn đang rất kém tự tin trong
						từng lời nói của mình. Cơ thể truyền tải nhiều thông tin cảm xúc
						hơn bạn nghĩ. Do đó, hãy chú ý đến những cử chỉ tưởng chừng như vô
						cùng nhỏ nhặt trong lúc trả lời phỏng vấn. Hãy ngồi thẳng lưng và
						vai, không ngọ nguậy liên tục trên ghế và không nhìn đồng hồ nhiều
						lần... để tạo ấn tượng tốt nhất với nhà tuyển dụng.</p>
				</div>
				<div class="col-md-5">
					<img src="<c:url value ="../resources/image/kynang_2.jpg"/>"
						width="450" height="300" /> <em style="text-align: center;">Hình
						2. Chứng minh những gì bạn có với nhà tuyển dụng</em>
				</div>
			</div>
			<div class="row">
				<div class="col-md-5">
					<img src="<c:url value ="../resources/image/kynang_3.jpg"/>"
						width="450" height="230" /> <em style="text-align: center;">Hình
						3. Sự tự tin là chìa khóa của cuộc phỏng vấn</em>
				</div>
				<div class="col-md-7">
					<strong>Thái độ tự tin và thẳng thắn</strong>
					<p>Để thể hiện thái độ tự tin và thẳng thắn, hãy luôn luôn nhìn
						thẳng vào mắt nhà tuyển dụng trong lúc phỏng vấn. Khi trao đổi với
						họ, đừng úp mở hoặc ấp úng mà hãy trình bày vấn đề của mình một
						cách mạch lạc và rõ ràng hết sức có thể.</p>
					<strong>Đừng nói “Tôi không biết” hoặc “Tôi không làm
						được”</strong>
					<p>Khi gặp một câu hỏi về một vấn đề nào đó mà bạn chưa từng
						nghe qua, đừng vội trả lời rằng “Tôi không biết” hay “Tôi không
						làm được” vì nhà tuyển dụng sẽ đánh giá bạn là người kém năng lực.
						Thay vào đó, hãy nói khéo léo hơn: “Tôi chưa tìm hiểu” hoặc “Tôi
						sẽ tìm hiểu về vấn đề này” để chứng tỏ bạn là người cầu tiến và
						ham học hỏi. Đây là một trong những kỹ năng trả lời phỏng vấn xin
						việc quan trọng mà nhiều người chưa biết.</p>

				</div>
			</div>
			<div class="row">
				<div class="col-md-7">
					<strong>Sức mạnh của nụ cười</strong>
					<p>Nụ cười là một trong những cách tốt nhất để chúng ta thể
						hiện thái độ chân thành và thân thiện. Vì vậy trong cuộc phỏng
						vấn, hãy tận dụng nụ cười đúng lúc. Chẳng hạn như khi bạn kể về
						một tình huống hài hước đã xảy ra trong một chuyến công tác nào
						đó, tình huống ấy khiến bạn có thêm kinh nghiệm làm việc như thế
						nào…</p>
					<strong>Biết cách đặt câu hỏi để tránh thụ động</strong>
					<p>Suốt buổi phỏng vấn xin việc, bạn đừng trở nên thụ động vì
						chỉ toàn trả lời những câu hỏi được nhà tuyển dụng đặt ra. Một kỹ
						năng trả lời phỏng vấn xin việc rất quan trọng mà không phải người
						xin việc cũng biết đó là biết cách đặt câu hỏi ngược lại. Việc
						thỉnh thoảng đặt câu hỏi cho nhà tuyển dụng khiến buổi phỏng vấn
						trở nên nhẹ nhàng hơn, giống như một buổi nói chuyện thân mật chứ
						không phải là một bài kiểm tra căng thẳng và áp lực. Ngoài ra, nhà
						tuyển dụng cũng sẽ hài lòng khi biết mức độ quan tâm của bạn đối
						với công việc trong tương lai là rất cao.</p>
				</div>
				<div class="col-md-5">
					<img src="<c:url value ="../resources/image/kynang_4.jpg"/>"
						width="450" height="300" /> <em style="text-align: center;">Hình
						4. Sức mạnh của nụ cười</em>
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
