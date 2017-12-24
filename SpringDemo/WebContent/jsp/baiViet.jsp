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
				<img alt="logo" src="resources/image/logo_a.png" height="200px">
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
						href="index.jsp">Trang chủ</a></li>
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
							<li><a href="jsp/cauHoi.jsp">Câu hỏi phỏng vấn thường gặp</a></li>
						</ul></li>
					<li><span class="glyphicon glyphicon-send"></span><a
						href="jsp/lienHe.jsp">Liên hệ</a></li>
					<li><span class="glyphicon glyphicon-pencil"></span><a
						href="jsp/vietBai.jsp">Viết bài</a></li>
				</ul>
				<div class="clear"></div>
			</div>
		</div>
		<div class="cont">
			<div class="row" id="welcome">
				<div class="col-md-2" id="he">
					<img src="<c:url value ="resources/image/icon_hello_1.png"/>" />
				</div>
				<div class="col-md-3" id="hello">
					<p>WELCOME EVERYONE</p>
				</div>
				<div class="col-md-2" id="he">
					<img src="<c:url value ="resources/image/icon_hello_3.png"/>" />
				</div>
			</div>
		</div>

		<div>
		<c:forEach items="${listBaiViet}" var="item">
		
			<div class="row" style="padding: 15px 0px; ">
				<div class="col-md-5">
					<img alt="anhcongty" src="<c:out value="${item.anhCT}" />" width="450px"
						height="300px">
				</div>
				<div class="col-md-7">
					<strong style="size: 20px;"><c:out value="${item.tenCT}" /></strong>
					<p>
						<strong>Cần tuyển: </strong> <strong
							style="color: red; font-size: 15px;"><c:out value="${item.tenViecLam}" /></strong>
					</p>
					<p>
						<strong>Mức lương: </strong><strong
							style="color: red; font-size: 15px;"><c:out value="${item.mucLuong}" /></strong>
					</p>
					<p>Số lượng : <c:out value="${item.soLuong}" /></p>
					<p>Địa điểm làm việc : <c:out value="${item.diaDiem}" /></p>
					<p>Kinh nghiệm : <c:out value="${item.kinhNghiem}" /></p>
					<p>Bằng cấp : <c:out value="${item.bangCap}" /></p>
					<p>Chức vụ : <c:out value="${item.chucVu}" /></p>
	
					<input type="button" id="btn1" style="color: red; float: left;" value="XEM CHI TIẾT" />
					<input type="button"  id="btn2" style="color: red; float: right;" value="RÚT GỌN" />
				</div>
				<div id="demo" style="display: none">
				<p><strong style="color:red">CÔNG VIỆC</strong></p>
				<p><strong>Hình thức làm việc :</strong> <i><c:out value="${item.hinhThucLamViec}" /></i></p>
				<p><strong>Thời gian thử việc : </strong><i><c:out value="${item.thoiGianThuViec}" /></i></p>
				<p><strong>Yêu cầu công việc : </strong></p><p><c:out value="${item.yeuCauCongViec}" /></p>
				<p><strong>Yêu cầu khác :</strong></p><p> <c:out value="${item.yeuCauKhac}" /></p>
				<p><strong>Mô tả công việc :</strong></p><p><c:out value="${item.moTaCongViec}" /></p>
				<p><strong>Quyền lợi : </strong></p><p><c:out value="${item.quyenLoi}" /></p>
				<p><strong>Hồ sơ bao gồm : </strong></p><p><c:out value="${item.hoSo}" /></p>
				<p><strong>Hạn nộp hồ sơ : </strong><c:out value="${item.hanNopHoSo}" /></p>
				<p><strong style="color:red">LIÊN HỆ</strong></p>
				<p><strong>Người liên hệ : </strong><c:out value="${item.nguoiLienHe}" /></p>
				<p><strong>Địa chỉ liên hệ : </strong><c:out value="${item.diaChiLienHe}" /></p>
				<p><strong>Email liên hệ :</strong> <c:out value="${item.emailLienHe}" /></p>
				<p><strong>Số điện thoại liên hệ :</strong><c:out value="${item.dienThoaiLienHe}" /></p>
			</div>
			</div>
			
		</c:forEach>
		</div>


		<div id="footer">
			<div class="row">
				<img alt="footer" src="resources/image/footer.jpg" width="400px"
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
	<script language="javascript">
		document.getElementById("btn1").onclick = function () {
	    	document.getElementById("demo").style.display = 'block';
		};
		document.getElementById("btn2").onclick = function () {
	    	document.getElementById("demo").style.display = 'none';
		};
	</script>

	<script>
		var el = document.getElementById("header");
		el.style.backgroundSize = "100% 100%";

		var el = document.getElementById("footer");
		el.style.backgroundSize = "100% 100%";
	</script>
</body>
</html>
