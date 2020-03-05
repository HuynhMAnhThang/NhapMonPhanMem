<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta charset="utf-8">
<title>Quản lý tài khoản</title>
<style type="text/css">
.layout {
	width: 1080px;
	height: 800px;
	margin: 0 auto;
	margin-top: -7px;
	background-color: #FAEBD7;
}

body {
	background-image: url("img/1.jpg");
	background-repeat: no-repeat;
	background-size: 100%;
}

.inputTK {
	background-image: url("img/iconsearch.png");
	background-position: 6px 5px;
	background-repeat: no-repeat;
	background-size: 7%;
	width: 400px;
	border-radius: 20px;
	border: 1px solid #ddd;
	padding: 12px 20px 12px 40px;
}

.acout {
	padding-left: 40px;
	width: 40px;
	height: 40px;
}

.timKiem {
	padding-top: 50px;
	width: 900px;
	margin: 0 auto;
}

th {
	width: 100px;
}

td {
	text-align: center;
	padding-top: 30px;
}

.tennguoidung {
	text-align: left;
}

.checkbox {
	
}

h1 {
	padding-top: 50px;
	padding-right: 50px;
	text-align: center;
}

table {
	width: 900px;
	margin: 0 auto;
}

.Xoa {
	padding-bottom: 10px;
	padding-left: 880px;
}

button {
	width: 100px;
	height: 25px;
	background-color: orange;
	border-radius: 5px;
	border: 1px;
}

a {
	color: black;
	text-decoration: none;
}

.logo {
	margin: 0 auto;
	width: 60px;
	height: 60px;
}

.sidenav {
	height: 100%;
	width: 0;
	position: fixed;
	z-index: 1;
	top: 0;
	left: 0;
	background-color: #111;
	overflow-x: hidden;
	transition: 0.5s;
	padding-top: 60px;
}

.sidenav a {
	padding: 8px 8px 8px 32px;
	text-decoration: none;
	font-size: 25px;
	color: #818181;
	display: block;
	transition: 0.3s;
}

.sidenav a:hover {
	color: #f1f1f1;
}

.sidenav .closebtn {
	position: absolute;
	top: 0;
	right: 25px;
	font-size: 36px;
	margin-left: 50px;
}

@media screen and (max-height: 450px) {
	.sidenav {
		padding-top: 15px;
	}
	.sidenav a {
		font-size: 18px;
	}
}

.sidenav1 {
	height: 100%;
	width: 0;
	position: fixed;
	z-index: 1;
	top: 0;
	right: 0;
	background-color: #111;
	overflow-x: hidden;
	transition: 0.5s;
	padding-top: 60px;
}

.sidenav1 label {
	padding: 8px 8px 8px 32px;
	text-decoration: none;
	font-size: 25px;
	color: #818181;
	display: block;
	transition: 0.3s;
}

.sidenav1 label:hover {
	color: #f1f1f1;
}

label {
	color: white;
}

.uname {
	height: 30px;
	width: 300px;
	border-left-width: 0px;
	margin-left: 20px;
}

tr th {
	text-align: center;
}

tr td {
	text-align: center;
}
</style>
<script type="text/javascript">
function openNav1() {
			document.getElementById("mySidenav1").style.width = "350px";

</script>
<link href="css/bootstrap.min.css" rel="stylesheet" />
<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<div id="mySidenav" class="sidenav">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
		<a href="#">Đăng xuất</a>
		 <a href="QuanLy/QuanLyTaiKhoan.htm">Quản Lý Tài Khoản</a> 
		 <a href="QuanLy/QuanlySanPham.htm">Quản Lý Sản Phẩm</a>
	</div>
	<div class="layout" >
		<form action="" class="timKiem"   style="padding-left: 100px;">
			<img onclick="openNav()" class="logo" alt="logo" src="img/logo.png"> 
			<input class="inputTK" type="text" placeholder="Tìm kiếm"> 
			
			<span class="acout" style=" cursor: pointer" onclick="openNav()"> 
				<img src="img/dangnhap.png"  style="width: 40px;height: 40px;"> Xin chào
			</span>
		</form>
		<h1>QUẢN LÝ TÀI KHOẢN</h1>
		<form action="">
			${message}
			<div class="Xoa">
				<button class="btXoa">Xóa</button>
			</div>

			<table class="table table-hover">
				<tr>
					<th>Họ Và Tên</th>
					<th>Chức vụ</th>
					<th>Tên đăng nhập</th>
					<th>Số điện thoại</th>
					<th>Sửa đổi thông tin</th>
					<th>Lựa chọn</th>
				</tr>
				<c:forEach var="a" items="${nguoidungs}">
					<tr>
						<td class="tennguoidung">${a.tenNguoiDung}</td>
						<td>${a.chucVu}</td>
						<td>${a.taiKhoan}</td>
						<td>${a.dienThoai}</td>
						<td><a href="#">
								<button class="btCapNhat" onclick="openNav1()">Cập nhật</button>
						</a></td>
						<td><input class="checkbox" type="checkbox"></td>

					</tr>
				</c:forEach>
			</table>
		</form>
	</div>


	<!-- form cập nhật tài khoản -->
	<div id="mySidenav1" class="sidenav1">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
		<div class="container">
			<label><b>Tên Đăng Nhập</b></label><br> <input type="text"
				placeholder="Nhập Tên Đăng Nhập..." class="uname" required><br>
			<br> <label for="uname"><b>Họ Và Tên</b></label><br> <input
				type="text" placeholder="Nhập Họ Và Tên ..." class="uname" required><br>
			<br> <label for="uname"><b>Số Điện Thoại</b></label><br> <input
				type="text" placeholder="Nhập Số Điện Thoại..." class="uname"
				required><br> <br> <label for="uname"><b>Chức
					Vụ</b></label> <select id="chucvu" class="uname">
				<option value="nhanvien">Nhân Viên</option>
				<option value="khachhang">Khách Hàng</option>
			</select> <br> <br>

			<button type="submit">Cập Nhật Tài Khoản</button>
		</div>
	</div>

	<!-- kéo slide -->
	<script>
		function openNav() {
			document.getElementById("mySidenav").style.width = "250px";
		}

		function closeNav() {
			document.getElementById("mySidenav").style.width = "0";
		}
	</script>


</body>
</html>