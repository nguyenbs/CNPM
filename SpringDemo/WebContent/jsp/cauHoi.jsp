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
			<h3>TUYỂN TẬP CÁC CÂU HỎI THƯỜNG GẶP TRONG PHỎNG VẤN XIN VIỆC</h3>
			<div class="row">
				<div class="col-md-5">
					<img alt="gioithieu"
						src="<c:url value ="../resources/image/cauhoi_1.jpg"/>"
						width="450px" height="300px"> <em
						style="text-align: center;">Hình 1. Trả lời lịch sự và xúc
						tích vào mấu chốt của vấn đề </em>
				</div>
				<div class="col-md-7">
					<strong>Câu hỏi 1: Hãy nói về bản thân bạn?</strong>
					<p>Cách xử lý: Hãy nhớ rằng nhà tuyển dụng đang hỏi để đánh giá
						sự phù hợp của bạn với vị trí công việc, vì vậy hãy chuẩn bị những
						câu trả lời về bạn nhưng gắn với công việc thay vì những vấn đề cá
						nhân. Bạn chỉ nên trả lời liên quan tới vấn đề cuộc sống cá nhân
						khi người tuyển dụng thực sự đi sâu và muốn tìm hiểu.</p>
					<strong>Câu hỏi 2: Hãy cho tôi biết bạn mơ ước công việc
						gì?</strong>
					<p>Cách trả lời: Nếu như bạn trả lời một cách chân thật về công
						việc trong mơ của bạn thì tất nhiên nhà tuyển dụng sẽ lắng nghe và
						có những đánh giá về mặt cảm tính tốt. Tuy nhiên về mặt lý tính,
						họ sẽ so sánh công việc trong mơ của bạn với công việc thực sự họ
						cần ở bạn và nếu có quá ít điểm chung thì nguy cơ bị loại của bạn
						sẽ tăng lên. Vì vậy nếu vị trí bạn nộp đơn xin việc không phù hợp
						với ước mơ thì hãy đưa ra những câu trả lời khuôn mẫu, ví dụ: mơ
						ước một môi trường làm việc năng động, được giao tiếp, được học
						hỏi để phát triển v.v…</p>
				</div>
				<strong>Câu hỏi 3: Vì sao bạn nghỉ việc ở nơi làm cũ?</strong>
				<p>Đây là 1 trong những câu phỏng vấn xin việc thường gặp nhất.
					Cách xử lý: Hãy đưa ra những câu trả lời mang tính tích cực, ví dụ:
					tôi muốn theo đuổi đam mê mới hoặc một cơ hội mới… và đặc biệt nhấn
					mạnh bằng những từ ngữ tốt đẹp về cơ hội đó. Đừng bao giờ nói xấu
					công ty cũ, sếp cũ hoặc chê bai về chế độ đãi ngộ… Cho dù bạn nghỉ
					việc với bất kỳ lý do gì, hãy mô tả nó theo cách tích cực nhất có
					thể.</p>
			</div>
			<div class="row">
				<div class="col-md-7">
					<strong>Câu hỏi 4: Điểm yếu của bạn là gì?</strong>
					<p>Cách trả lời: Khi gặp câu hỏi này, đừng ngay lập tức liệt kê
						một loạt điểm yếu của mình, cũng không thể khẳng định rằng bạn
						không có điểm yếu. Cách xử lý tốt nhất là chuẩn bị sẵn một vài
						điểm yếu, nhưng ẩn chứa điểm mạnh trong đó. Ví dụ: Tôi hay quên
						nên nhiều khi phải tự sắp xếp một lịch công việc chi tiết và dán
						nó trước mặt bàn… Hoặc tôi không giỏi về cách ăn nói, nên đôi khi
						thật thà quá dễ làm mất lòng… Các câu trả lời khôn khéo sẽ giúp
						bạn biến điểm yếu thành điểm mạnh.</p>
					<strong>Câu hỏi 5: Điểm mạnh của bạn là gì?</strong>
					<p>Cách xử lý: Đối với câu hỏi này, bạn phải chuẩn bị thật tốt
						và nhớ là phải gắn với công việc bạn đang nộp đơn. Hãy nêu các
						điểm bạn thật sự mạnh và hiệu quả bạn sẽ đem lại đối với công việc
						trên, đồng thời đừng quên những ví dụ mà bạn đã thực hiện được ở
						công việc trước đó.</p>

				</div>
				<div class="col-md-5">
					<img src="<c:url value ="../resources/image/cauhoi_2.jpg"/>"
						width="450" height="300" /> <em style="text-align: center;">Hình
						2. Mạch lạc trong lời nói, nhanh trí khi xử lý vấn đề</em>
				</div>
			</div>

			<strong>Câu hỏi 6: Bạn có biết gì về công việc của chúng tôi
				không?</strong>
			<p>Cách trả lời: Câu hỏi này sẽ rất thường gặp, vì vậy hãy dành
				thời gian nghiên cứu thông tin về công ty, website, bạn bè hoặc nếu
				có ai đó quen biết đang làm tại công ty thì càng tuyệt vời. Hãy nhớ
				trả lời câu hỏi nhưng gắn với “sự phù hợp” của bạn với công ty.</p>
			<div class="row">
				<div class="col-md-5">
					<img src="<c:url value ="../resources/image/cauhoi_3.jpg"/>"
						width="450" height="230" /> <em style="text-align: center;">Hình
						3. Sử dụng kiến thức mà mình có để trả lời</em>
				</div>
				<div class="col-md-7">
					<strong>Câu hỏi 7: Vì sao chúng tôi nên tuyển bạn?</strong>
					<p>Cách xử lý: Nếu gặp phải một người phỏng vấn có cá tính, họ
						sẽ đặt câu hỏi mang tính thách thức bạn như trên. Hãy trả lời trên
						những khía cạnh rằng bạn cần công việc phù hợp và công ty cũng cần
						người phù hợp. Nhưng lưu ý đừng so sánh bạn với bất kỳ ai khác.</p>
					<strong>Câu hỏi 8: Bạn có nghĩ bạn là người thành công?</strong>
					<p>Cách trả lời: Tất nhiên là CÓ. Thành công không có nghĩa là
						phải vượt trên tất cả mọi người, vì vậy bạn hãy cho họ biết là bạn
						đã có những thành công gì và nếu cần sẵn sàng giải thích cho họ vì
						sao bạn coi đó là thành công.</p>


				</div>
			</div>

			<strong>Câu hỏi 9: Vì sao bạn lại không có việc làm trong
				thời gian qua?</strong>
			<p>Cách xử lý: Có thể bạn không may mắn trong những lần trước
				hoặc ốm đau, bận việc cá nhân… nhưng hãy lựa chọn cho mình câu trả
				lời khôn ngoan và tương đối thực tế. Ví dụ: thời gian đó tôi tham
				gia khóa học tài chính nâng cao để có sự chuẩn bị tốt hơn hoặc tôi
				tham gia chương trình tiếng Anh tại trung tâm quốc tế để phù hợp với
				công việc sắp tới. Bạn sẽ ghi điểm trong mắt nhà tuyển dụng.</p>
			<div class="row">
				<div class="col-md-7">
					<strong>Câu hỏi 10: Đồng nghiệp cũ thường nói gì về bạn?</strong>
					<p>Cách trả lời: Hãy cho họ biết một vài câu nhận xét của đồng
						nghiệp về bạn mang tính tích cực hoặc có ẩn chứa sự tích cực.
						Nhưng cũng đừng phóng đại những câu nói đó.</p>
					<strong>Câu hỏi 11: Bạn dự định làm cho chúng tôi trong
						bao lâu?</strong>
					<p>Cách xử lý: Nếu bạn nói thời gian cụ thể thì dù ngắn hay dài
						cũng đều dễ bị nhà tuyển dụng bẻ lại. Cách tốt nhất là những câu
						trả lời khéo léo như: “tôi sẽ làm cho công ty mãi nếu như cả hai
						đều hài lòng” hoặc “tôi sẽ làm hết sức nếu như thấy tốt cho cả
						hai”…</p>
					<strong>Câu hỏi 12: Bạn có nghĩ là năng lực của bạn vượt
						so với yêu cầu của chúng tôi?</strong>
					<p>Cách trả lời: Hãy thuyết phục họ rằng bạn là người xin việc
						và đang cần một công việc phù hợp. Đừng biểu lộ những cảm xúc do
						dự hoặc không rõ ràng về năng lực của bạn so với công việc. Hãy
						cho họ thấy bạn là người phù hợp.</p>
				</div>
				<div class="col-md-5">
					<img src="<c:url value ="../resources/image/cauhoi_4.jpg"/>"
						width="450" height="300" /> <em style="text-align: center;">Hình
						4. Hãy tạo một buổi phỏng vấn ấn tượng và thành công</em>
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
