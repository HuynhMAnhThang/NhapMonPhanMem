<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta charset="utf-8">
<title>Giỏ Hàng </title>
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
	background-image: url("img/searchicon.png");
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
	height: 35px;
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

.cuoigiohang {
	margin: 50px 20px 100px 0px;
	text-align: center;
}

.gia {
	font-size: 35px;
	margin: 0px 100px 0px 0px;
}

.btngiohang {
	text-align: center;
	font-size: 20px;
	background-color: orange;
	border: none;
	border-radius: 4px;
}
</style>
</head>
<body>

	<div class="layout">
		<form action="" class="timKiem">
			<img onclick="openNav()" alt="logo" src="img/logo.png" height="60px" width="60px"
				align="center"> <input class="inputTK" type="text"
				placeholder="Tìm kiếm"> <a href="#"><button
					class="btGioHang">Giỏ hàng</button></a> <span class="acout"
				style="font-size: 20px; cursor: pointer" onclick="openNav()">
				<img alt="" class="acout" src="img/dangnhap.png" align="center">
				Xin chào
			</span>
		</form>

		<h1>GIỎ HÀNG CỦA TÔI</h1>
		<form action="">
			<table id="table">
				<tr>
					<th>Stt</th>
					<th>Tên sản phẩm</th>
					<th>Mô tả</th>
					<th>Giá</th>
					<th>Số lượng</th>
					<th>Thành tiền</th>
					<th>Lựa chọn</th>
				</tr>
				<c:forEach var="a" items="${SanPham}">
					<tr>
						<td style="text-align: center;">${a.maSanPham}</td>
						<td style="text-align: center;">${a.tenSanPham}</td>
						<td style="text-align: center;">${a.moTa}</td>
						<td style="text-align: center;">${a.donGia}</td>
						<td style="text-align: center;">${a.soLuong}</td>
						<td style="text-align: center;">${a.donGia*a.soLuong}</td>
						<td style="text-align: center;"><input class="checkbox"
							type="checkbox"></td>
					</tr>
				</c:forEach>
			</table>
			<hr>
			<div id="mySidenav" class="sidenav">
				<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
				<a href="#">Giỏ hàng của tôi</a> <a href="#">Đăng Xuất</a>
			</div>
			<div class="cuoigiohang">
				<a class="gia">Tổng Tiền Thanh Toán : <span id="val"></span>
				 <script type="text/javascript">
					var table = document.getElementById("table"), sumVal = 0;
					for (var i = 1; i < table.rows.length; i++) {
						sumVal = sumVal
								+ parseInt(table.rows[i].cells[5].innerHTML);
					}
					document.getElementById("val").innerHTML = sumVal;
				</script>
				</a>
				<button class="btGioHang">Mua thêm</button>
				&nbsp;&nbsp;
				<button class="btGioHang">Xóa</button>
				&nbsp;&nbsp;
				<button class="btGioHang">Thanh Toán</button>
			</div>
		</form>
	</div>

</body>
</html>