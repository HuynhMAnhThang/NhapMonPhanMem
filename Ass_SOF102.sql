Create database Ass_SOF102
Go

Use Ass_SOF102
Go

Drop table NguoiDung
Go
Create table NguoiDung(
	MaNguoiDung		int identity(1, 1) not null primary key,
	TenNguoiDung	Nvarchar(50) not null,
	TaiKhoan		Varchar(30) unique not null,
	MatKhau			Varchar(30) not null,
	ChucVu 			Varchar(30) not null,
	DienThoai		int null,
)

Drop table HoaDon
Go
Create table HoaDon(
	MaHoaDon		int identity(1, 1) not null primary key,
	MaNguoiDung		int not null Foreign key References NguoiDung,
	NgayLapHoaDon	Datetime not null
)

Drop table LoaiSanPham
Go
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
	DonGia		Float not null,
	SoLuong		int null,
	Mota		Ntext null
	
)

Drop table HoaDonChiTiet
Go
Create table HoaDonChiTiet(
	MaHoaDonChiTiet		int identity(1, 1) not null primary key,
	MaHoaDon	int not null Foreign key References HoaDon,
	MaSanPham		int not null Foreign key References SanPham,
	DonGia		Money not null Default(0),
	SoLuong		int not null Default(0), 
	TongTien  	Float
)

Select * from NguoiDung
Select * from HoaDon
Select * from LoaiSanPham
Select * from SanPham
Select * from HoaDonChiTiet

Insert into NguoiDung values(N'Huỳnh Mạnh Thắng', 'Thanghm', '123', 'admin', null)
Insert into NguoiDung values(N'Nguyễn Cường Thịnh', 'Thinhnc', '123', 'admin', null)
Insert into NguoiDung values(N'Nguyễn Anh Đức', 'ducna', '321', 'kh', null)
Insert into NguoiDung values(N'Trịnh Bá Năng', 'nangtb', '123', 'admin', null)
Insert into NguoiDung values(N'Quan Phương Nam', 'namqp', '123', 'admin', null)
Insert into NguoiDung values(N'Đỗ Thành Dũng', 'dungdt', '123', 'admin', null)
Insert into NguoiDung values(N'Khách hàng 1', 'kh1', '321', 'kh', null)

Insert into HoaDon values(7, '10/22/2016')
Insert into HoaDon values(4, '9/5/2019')
Insert into HoaDon values(3, '8/4/2011')
Insert into HoaDon values(4, '7/22/2000')
Insert into HoaDon values(2, '4/7/2007')
Insert into HoaDon values(1, '1/12/2020')

Insert into LoaiSanPham values(N'Cá')
Insert into LoaiSanPham values(N'Rau')
Insert into LoaiSanPham values(N'Thịt')
Insert into LoaiSanPham values(N'Hoa quả')

Insert into SanPham values(1, N'Cá chép', 145000, 30, N'Giá cá chép giòn thịt')
Insert into SanPham values(2, N'Rau Su hào', 24000, 50, null)
Insert into SanPham values(3, N'Thịt đùi bò', 245000, 30, N'Thịt đùi bò')
Insert into SanPham values(3, N'Móng giò heo', 79000, 30, N'Móng giò heo Bỉ')
Insert into SanPham values(1, N'Cá hồi đông lạnh', 249000, 30, N'Cá hồi đông lạnh nguyên con')

Insert into HoaDonChiTiet values(1, 3, 245000, 1, 245000)
Insert into HoaDonChiTiet values(3, 2, 24000, 2, 48000)
Insert into HoaDonChiTiet values(4, 5, 249000, 1, 249000)
Insert into HoaDonChiTiet values(3, 5, 249000, 1, 249000)
Insert into HoaDonChiTiet values(4, 3, 79000, 3, 237000)