<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Hello Word</title>
<base href="${pageContext.servletContext.contextPath}/">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;
background-image: url("img/1.jpg");
	background-repeat: no-repeat;
	background-size: 100%;}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.container {
  padding: 16px;
}


/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {

  .cancelbtn {
     width: 100%;
  }
}
</style>
</head>
<body>

  
  <form class="modal-content animate" action="/action_page.php" method="post">
    <div class="container">
      <label ><b>Mã Loại </b></label>
      <input type="text" placeholder="Nhập Mã Loại..." name="uname" required>

    <label for="uname"><b>Mã Sản Phẩm </b></label>
      <input type="text" placeholder="Nhập Mã Sản Phẩm ..." name="uname" required>
      
      <label for="uname"><b>Tên Sản Phẩm </b></label>
      <input type="text" placeholder="Nhập Tên Sản Phẩm..." name="uname" required>
      
      <label for="uname"><b>Đơn Giá</b></label>
      <input type="text" placeholder="Nhập Đơn Giá..." name="uname" required>
        
         <label for="uname"><b>Số Lượng</b></label>
      <input type="text" placeholder="Nhập Số Lượng..." name="uname" required>
      
      <label for="uname"><b>Mô Tả</b></label>
      <br>
    <textarea id="subject" name="subject" placeholder="Nhập Mô Tả.." style="height:100px"></textarea>   
      <button type="submit">Cập Nhật Sản Phẩm</button>
    
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button"><a href="QuanLy/QuanlySanPham.htm">Cancel</a></button>

    </div>
  </form>

</body>
</html>
