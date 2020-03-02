<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta charset="utf-8">
<title>Danh Sách Sản Phẩm</title>

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



button {

	width: 150px;
	height: 55px;
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
</style>
</head>
<body>

	<div id="mySidenav" class="sidenav">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
		<a href="#">Đăng xuất</a> <a href="#">Đơn hàng của tôi</a>
	</div>
	<div class="layout">
		<form action="" class="timKiem">
			<a href="#"> <img class="logo" alt="logo" src="img/logo.png"
				height="60px" width="60px" align="center"></a> <input
				class="inputTK" type="text" placeholder="Tìm kiếm"><span
				class="acout" style="font-size: 20px; cursor: pointer"
				onclick="openNav()"> <img alt="" class="acout"
				src="img/dangnhap.png" align="center"> Xin chào </span>
		</form>
		<h1>Danh Sách Sản Phẩm</h1>
		<form action="">
			<table>
				<tr class="ds1">
					<th class="chu">Tên Sản Phẩm</th>
					<th class="chu">Mô tả</th>
					<th class="chu">Giá</th>
					<th class="chu">Lựa Chọn</th>
				</tr>
				<c:forEach var="a" items="${sanpham}">
					<tr>
						<td class="tennguoidung">${a.tenSanPham}</td>
						<td>${a.moTa}</td>
						<td>${a.donGia}</td>
						
						<td style="text-align: center;"><a href="#"><button
									class="btthem">Thêm Vào Giỏ Hàng</button></a></td>
						
					</tr>
				</c:forEach>
			</table>
		</form>
	</div>
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