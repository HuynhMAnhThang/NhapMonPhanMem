Create database Ass_SOF302
Go

Use Ass_SOF302
Go

Drop table NguoiDung
Go
Create table NguoiDung(
	MaNguoiDung		int identity(1, 1) not null primary key,
	TenNguoiDung		Nvarchar(50) not null,
	TaiKhoan	Varchar(30) unique not null,
	MatKhau		Varchar(30) not null,
	ChucVu 		Varchar(30) not null,
	DienThoai	int null,
)

Drop table HoaDon
Go
Create table HoaDon(
	MaHoaDon		int identity(1, 1) not null primary key,
	MaNguoiDung		int not null Foreign key References NguoiDung,
	NgayLapHoaDon	Datetime not null
)

Create table LoaiSanPham(
	MaLoaiLoaiSanPham		int identity not null Primary key,
	TenLoaiSanPham		Nvarchar(50) not null,
	
)

Drop table SanPham
Go
Create table SanPham(
	MaSanPham		int identity(1, 1) not null primary key,
	MaLoaiLoaiSanPham	int not null Foreign key References LoaiSanPham,
	TenSanPham		Nvarchar(50) not null,
	DonGia		Money not null,
	SoLuong		int null,
	Mota		Ntext null
	
)

Drop table HoaDonChiTiet
Go
Create table HoaDonChiTiet(
	MaHoaDonChiTiet		int identity(1, 1) not null primary key,
	MaHoaDon	int not null Foreign key References HoaDon,
	MaSanPham		int not null Foreign key References SanPham,
	DonGia		Money not null,
	SoLuong		int not null,
	TongTien	Money
)

Select * from NguoiDung
Select * from HoaDon
Select * from HoaDonChiTiet
Select * from SanPham
Select * from LoaiSanPham