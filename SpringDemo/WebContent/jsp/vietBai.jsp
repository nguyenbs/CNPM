<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body {
	margin: 0 auto;
	background-image: url("../resources/image/main_bg.jpg");
	background-repeat: no-repeat;
	background-size: 100% 100%;
}

.container {
	width: 1000px;
	height: 1700px;
	text-align: center;
	margin: 0 auto;
	background-color: rgba(52, 73, 94, 0.7);
	margin-top: 90px;
	border-radius: 4px;
}

.container img {
	width: 140px;
	height: 140px;
	margin-top: -60px;
	margin-right: 30px;
	margin-bottom: 30px;
}

input[type="text"], input[type="password"] {
	width: 700px;
	height: 45px;
	font-size: 18px;
	margin-bottom: 20px;
	background-color: #fff;
	padding-left: 40px;
	border: none;
}

.glyphicon {
	font-size: 30px;
	color: red;
	margin-top: 15px;
	margin-right: -35px;
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

.btn-cancel {
	height: 45px;
	color: #fff;
	cursor: pointer;
	background-color: #2ECC71;
	padding: 15px 25px;
	border: none;
	margin-bottom: 20px;
}

a {
	color: #fff;
}

.error {
	color: yellow;
}
</style>
<head>
<title>CĐV WORK</title>
</head>
<body>
	<div class="container">
		<h3 style="color: #fff">CẬP NHẬT BÀI VIẾT</h3>
		<!-- <img alt="anh admin" src="../resource/image/icon_admin.png"> -->
		<form method="post" action="${pageContext.request.contextPath}/insertBaiViet.html" id="formVietBai"
			onsubmit="return validateForm();">
			<div class="form-input">
				<span class="glyphicon glyphicon-credit-card"></span><input type="text"
					id="tenBV" name="tenBV" onblur="clearMessage()"
					placeholder="Nhập tên bài viết..." /> <span id="tenBV-error"
					class="error"> </span>
			</div>
			<div class="row" style="padding-left: 57px">
				<div class="col-md-5">
					<div class="form-input">
						<span class="glyphicon glyphicon-lock"></span> <input
							style="width: 210px" type="text" id="maCT" name="maCT"
							onblur="clearMessage()" placeholder="Nhập mã công ty..." /> <span
							id="maCT-error" class="error"> </span>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-input">
						<span class="glyphicon glyphicon-star"></span><input
							style="width: 330px" type="text" id="tenCT" name="tenCT"
							onblur="clearMessage()" placeholder="Nhập tên công ty..." /> <span
							id="tenCT-error" class="error"> </span>
					</div>
				</div>
			</div>
			<div class="row" style="padding-left: 57px">
				<div class="col-md-5">
					<div class="form-input">
						<span class="glyphicon glyphicon-glass"></span><input
							style="width: 210px" type="text" id="tenViecLam"
							name="tenViecLam" onblur="clearMessage()"
							placeholder="Nhập tên việc làm..." /> <span
							id="tenViecLam-error" class="error"> </span>

					</div>
				</div>
				<div class="col-md-6">
					<div class="form-input">
						<span class="glyphicon glyphicon-fire"></span><input type="text"
							style="width: 330px" id="nhomNghe" name="nhomNghe"
							onblur="clearMessage()" placeholder="Nhập nhóm nghề..." /> <span
							id="nhomNghe-error" class="error"> </span>
					</div>
				</div>
			</div>

			<div class="row" style="padding-left: 57px">
				<div class="col-md-5">
					<div class="form-input">
						<span class="glyphicon glyphicon-usd"></span><input type="text"
							style="width: 210px" id="mucLuong" name="mucLuong"
							onblur="clearMessage()" placeholder="Nhập mức lương..." /> <span
							id="mucLuong-error" class="error"> </span>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-input">
						<span class="glyphicon glyphicon-log-in"></span> <input
							style="width: 330px" type="text" id="nhomLuong" name="nhomLuong"
							onblur="clearMessage()" placeholder="Nhập nhóm lương..." /> <span
							id="nhomLuong-error" class="error"> </span>
					</div>
				</div>
			</div>

			<div class="row" style="padding-left: 57px">
				<div class="col-md-5">
					<div class="form-input">

						<span class="glyphicon glyphicon-picture"></span> <input
							style="width: 210px" type="text" id="anhCT" name="anhCT"
							onblur="clearMessage()" placeholder="Nhập ảnh công ty..." /> <span
							id="anhCT-error" class="error"> </span>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-input">
						<span class="glyphicon glyphicon-equalizer"></span> <input
							style="width: 330px" type="text" id="kinhNghiem"
							name="kinhNghiem" onblur="clearMessage()"
							placeholder="Nhập kinh nghiệm..." /> <span id="kinhNghiem-error"
							class="error"> </span>
					</div>
				</div>
			</div>

			<div class="form-input">
				<span class="glyphicon glyphicon-education"></span> <input type="text"
					id="bangCap" name="bangCap" onblur="clearMessage()"
					placeholder="Nhập bằng cấp..." /> <span id="password-error"
					class="error"> </span>
			</div>
			<div class="row" style="padding-left: 57px">
				<div class="col-md-5">
					<div class="form-input">
						<span class="glyphicon glyphicon-user"></span> <input type="text"
							style="width: 210px" id="soLuong" name="soLuong"
							onblur="clearMessage()" placeholder="Nhập số lượng..." /> <span
							id="password-error" class="error"> </span>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-input">
						<span class="glyphicon glyphicon-bookmark"></span> <input type="text"
							style="width: 330px" id="chucVu" name="chucVu"
							onblur="clearMessage()" placeholder="Nhập chức vụ..." /> <span
							id="chucVu-error" class="error"> </span>
					</div>
				</div>
			</div>

			<div class="row" style="padding-left: 57px">
				<div class="col-md-5">
					<div class="form-input">

						<span class="glyphicon glyphicon-map-marker"></span> <input type="text"
							style="width: 210px" style="width: 210px" id="diaDiem"
							name="diaDiem" onblur="clearMessage()"
							placeholder="Nhập địa điểm..." /> <span id="password-error"
							class="error"> </span>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-input">
						<span class="glyphicon glyphicon-adjust"></span> <input type="text"
							style="width: 330px" id="khuVuc" name="khuVuc"
							onblur="clearMessage()" placeholder="Nhập khu vực..." /> <span
							id="khuVuc-error" class="error"> </span>
					</div>
				</div>
			</div>
			<div class="row" style="padding-left: 57px">
				<div class="col-md-5">
					<div class="form-input">

						<span class="glyphicon glyphicon-random"></span> <input type="text"
							style="width: 210px" id="hinhThucLamViec" name="hinhThucLamViec"
							onblur="clearMessage()" placeholder="Nhập hình thức..." /> <span
							id="hinhThucLamViec-error" class="error"> </span>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-input">
						<span class="glyphicon glyphicon-flag"></span> <input type="text"
							style="width: 330px" id="thoiGianThuViec" name="thoiGianThuViec"
							onblur="clearMessage()" placeholder="Nhập thời gian thử việc..." />
						<span id="thoiGianThuViec-error" class="error"> </span>
					</div>
				</div>
			</div>
			<div class="form-input">
				<span class="glyphicon glyphicon-signal"></span> <input type="text"
					style="height: 100px" id="yeuCauCongViec" name="yeuCauCongViec"
					onblur="clearMessage()" placeholder="Nhập yêu cầu công việc..." />
				<span id="yeuCauCongViec-error" class="error"> </span>
			</div>
			<div class="form-input">
				<span class="glyphicon glyphicon-plus"></span> <input type="text"
					style="height: 80px" id="yeuCauKhac" name="yeuCauKhac"
					onblur="clearMessage()" placeholder="Nhập yêu cầu khác..." /> <span
					id="yeuCauKhac-error" class="error"> </span>
			</div>
			<div class="form-input">
				<span class="glyphicon glyphicon-asterisk"></span> <input type="text"
					style="height: 100px" id="moTaCongViec" name="moTaCongViec"
					onblur="clearMessage()" placeholder="Nhập mô tả công việc..." /> <span
					id="moTaCongViec-error" class="error"> </span>
			</div>
			<div class="form-input">
				<span class="glyphicon glyphicon-gift"></span> <input type="text"
					style="height: 100px" id="quyenLoi" name="quyenLoi"
					onblur="clearMessage()" placeholder="Nhập quyền lợi..." /> <span
					id="quyenLoi-error" class="error"> </span>
			</div>
			<div class="form-input">
				<span class="glyphicon glyphicon-download-alt"></span> <input type="text"
					style="height: 100px" id="hoSo" name="hoSo" onblur="clearMessage()"
					placeholder="Nhập hồ sơ ứng tuyển..." /> <span id="hoSo-error" class="error">
				</span>
			</div>
			<div class="row" style="padding-left: 57px">
				<div class="col-md-5">
					<div class="form-input">
						<span class="glyphicon glyphicon-remove"></span> <input type="text"
							style="width: 210px" id="hanNopHoSo" name="hanNopHoSo"
							onblur="clearMessage()" placeholder="Nhập hạn nộp hồ sơ..." /> <span
							id="hanNopHoSo-error" class="error"> </span>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-input">
						<span class="glyphicon glyphicon-refresh"></span> <input type="text"
							style="width: 330px" id="nguoiLienHe" name="nguoiLienHe" onblur="clearMessage()"
							placeholder="Nhập người liên hệ ..." /> <span
							id="nguoiLienHe-error" class="error"> </span>
					</div>
				</div>
			</div>
			<div class="form-input">
				<span class="glyphicon glyphicon-check"></span> <input type="text"
					id="diaChiLienHe" name="diaChiLienHe" onblur="clearMessage()"
					placeholder="Nhập địa chỉ liên hệ..." /> <span
					id="diaChiLienHe-error" class="error"> </span>
			</div>
			<div class="row" style="padding-left: 57px">
				<div class="col-md-5">
					<div class="form-input">
						<span class="glyphicon glyphicon-envelope"></span> <input type="text"
							style="width: 210px" id="emailLienHe" name="emailLienHe"
							onblur="clearMessage()" placeholder="Nhập email liên hệ..." /> <span
							id="emailLienHe-error" class="error"> </span>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-input">
						<span class="glyphicon glyphicon-phone-alt"></span> <input type="text"
							style="width: 330px" id="dienThoaiLienHe" name="dienThoaiLienHe"
							onblur="clearMessage()" placeholder="Nhập điện thoại liên hệ..." />
						<span id="password-error" class="error"> </span>
					</div>
				</div>
			</div>




			<input type="submit" name="submit" value="ĐĂNG BÀI"
				class="btn-login"> <input type="button" name="button"
				value="QUAY LẠI" class="btn-cancel"
				onClick='window.location="../index.jsp"'>
		</form>

	</div>
</body>
<script>
	function validateForm() {

		if (!$("#usename").val().trim()) {
			$("#usename-error").text("Tên đăng nhập không được để trống");
			return false;
		}
		return true;
	}
	function validateForm() {

		if (!$("#password").val().trim()) {
			$("#password-error").text("Mật khẩu không được để trống");
			return false;
		}
		return true;
	}
	function clearMessage() {
		if ($("#usename").val()) {
			$("#usename-error").text("");
		}

	}
	function clearMessage() {
		if ($("#password").val()) {
			$("#password-error").text("");
		}

	}
</script>