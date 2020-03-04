<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>	
	<base href="${pageContext.servletContext.contextPath}/">
	<meta charset="ISO-8859-1">
	<title>Đơn hàng đã thanh toán</title>
	<style type="text/css">
		.layout{
	 		width: 1080px;
	 		height:800px;
	 		margin: 0 auto;
	 		margin-top: -26px;
	 		background-color: #FAEBD7;
	 	}
	 	body{
	 		background-image: url("img/1.jpg");
	 		background-repeat: no-repeat;
	 		background-size: 100%;
	 	}
	 	.inputTK{
 	 		background-image: url("img/searchicon.png");
 	 		background-position: 7px 5px;
	 		background-repeat: no-repeat;
	 		background-size: 8%;
	 		width: 300px;
	 		border-radius: 20px;
	 		border: 1px solid #ddd;
  			margin-bottom: 12px;
	 		padding: 12px 20px 12px 40px; 		 
	 	}
	 	.acout{
	 		padding-left: 40px;
	 		width: 40px;
	 		height: 40px;
	 	}
	 	.timKiem{
	 		padding-top: 50px;
	 		width: 800px;
	 		margin: 0 auto;
	 	}
	 	button{
	 		width: 70px;
			height: 25px;
			background-color: orange;
			border-radius: 5px;
			border: 1px;
	 	}
	 	.btGioHang{
	 		width: 100px;
	 		height: 30px;
	 	}
	 	h1{
	 		padding-top: 50px;
	 		padding-right: 50px;
	 		text-align: center;
	 	}
	 	a{
			color: black;
			text-decoration: none;
		}
		table{
			width: 900px;	 	
	 		margin: 0 auto;
	 	}	
	 	th{
	 		width: 100px;
	 	}
	 	td{
	 		padding-top: 30px;
	 	}
	 	.thanhToan{
	 		padding-top: 20px;
	 		padding-left: 140px;
	 	}
	 	.btXoa{
	 		float: right;
	 		margin-right: 120px;
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
		  .sidenav {padding-top: 15px;}
		  .sidenav a {font-size: 18px;}
		}
	</style>
</head>
<body>
	<div id="mySidenav" class="sidenav">
	  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
	  <a href="#">Đăng xuất</a>
	  <a href="#">Đơn hàng của tôi</a>
	</div>
	<div class="layout">
		<form action="" class="timKiem">
			<a href="#"><img alt="logo" src="img/logo.png" height="60px" width="60px" align="center"></a>
			<input class="inputTK" type="text" placeholder="Tìm kiếm">
			<a href="#"><button class="btGioHang">Giỏ hàng</button></a>
			<span class="acout" style="font-size:20px;cursor:pointer" onclick="openNav()"> 
				<img alt="" class="acout" src="img/dangnhap.png" align="center"> Xin chào
			</span>
		</form>
		<h1>ĐƠN HÀNG ĐÃ THANH TOÁN</h1>
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
				<c:forEach var="b" items="${HDCTs}">
					<tr>
						<td style="text-align: center;"></td>
						<td style="text-align: center;"></td>
						<td style="text-align: center;"></td>
<%-- 						<td style="text-align: center;">${b.sanphamentity.tenSanPham}</td> --%>
<%-- 						<td style="text-align: center;">${b.sanphamentity.moTa}</td> --%>
						<td style="text-align: center;">${b.donGia} đ</td>
						<td style="text-align: center;">${b.soLuong}</td>
						<td style="text-align: center;">${b.donGia * b.soLuong} đ</td>
						<td style="text-align: center;">
							<input class="checkbox" type="checkbox">
						</td>
					</tr>
				</c:forEach>
<!-- 				<tr> -->
<!-- 					<td style="text-align: center;">1</td> -->
<!-- 					<td style="text-align: center;">Thịt bò</td> -->
<!-- 					<td style="text-align: center;">Thịt mông tươi ngon</td> -->
<!-- 					<td style="text-align: center;">12 $</td> -->
<!-- 					<td style="text-align: center;">1</td> -->
<!-- 					<td style="text-align: center;">12 $</td> -->
<!-- 					<td style="text-align: center;"> -->
<!-- 						<input class="checkbox" type="checkbox"> -->
<!-- 					</td> -->
<!-- 				</tr> -->
			</table>
			<hr>
 			<div class="thanhToan">
 				Tổng tiền đã thanh toán:<span id="val"></span> đ
 				<button class="btXoa">Xóa</button>
 			</div>
		</form>
	</div>
	<script>
		function openNav() {
		  document.getElementById("mySidenav").style.width = "250px";
		}
		
		function closeNav() {
		  document.getElementById("mySidenav").style.width = "0";
		}
		var table = document.getElementById("table"), sumVal;
		for (var i = 0; i < table.rows.length; i++) {
			sumval = sumval + parseInt(table.rows[i].cells[5].innerHTML);
			document.getElementById("val").innerHTML = sumval;
		}
	</script>
</body>
</html>