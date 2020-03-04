<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<base href="${pageContext.servletContext.contextPath}/">
<style type="text/css">
body {
	font-family: Arial, Helvetica, sans-serif;
}

* {
	box-sizing: border-box
}


input[type=text], input[type=password] {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
	background-color: #ddd;
	outline: none;
}

hr {
	border: 1px solid #f1f1f1;
	margin-bottom: 25px;
}


button {
	background-color: red;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 50%;
	opacity: 0.9;
}

button:hover {
	opacity: 1;
}


.dangky {
	padding: 14px 20px;
	background-color: blue;
}


.dangky, .dangnhap {
	float: center;
	width: 100%;
}



.container {
	padding: 18px;
}


.clearfix::after {
	content: "";
	clear: both;
	display: table;
}


@media screen and (max-width: 300px) {
	.dangky, .dangnhap {
		width: 100%;
	}
}
</style>
</head>
<body>
	<form:form action="DangKy/dangkytaikhoan.htm" modelAttribute="NguoiDung" style="border: 1px solid #ccc">
		<div class="container">
		<h1>Đăng Ký Tài Khoản</h1>
			<p>Vui lòng điền vào mẫu này để tạo một tài khoản.</p>
			<hr>
			<label>Tài Khoản</label>
			<form:input path="taiKhoan" />
		</div>
		<div class="container">
			<label>Mật Khẩu</label>
			<form:input path="matKhau" />
		</div>
		<div class="container">
			<label>Tên Đầy Đủ</label>
			<form:input path="tenNguoiDung" />
		</div>
		<div class="container">
			<label>Số Điện Thoại</label>
			<form:input path="dienThoai" />
		</div>

		<div class="clearfix">
			<button type="button" class="dangky">Đăng Ký</button>
			<button type="submit" class="dangnhap">Đăng Nhập</button>
		</div>
	</form:form>


</body>
</html>