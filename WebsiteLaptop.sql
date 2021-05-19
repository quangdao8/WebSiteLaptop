create table KhachHang
(
	MaKH int identity primary key,
	HoTen nvarchar(100),
	TaiKhoan nvarchar(50),
	MatKhau nvarchar(50),
	Email nvarchar(100),
	DiaChi nvarchar(100),
	DienThoai varchar(30),
	GioiTinh nvarchar(3),
	NgaySinh date,
)

create table TheLoai
(
	MaLoai int identity primary key,
	TenLoai nvarchar(100)
)

create table HangSX
(
	MaHangSX int identity primary key,
	TenHangSX nvarchar(100),
	DiaChi nvarchar(100),
	DienThoai varchar(30),
)

create table PhienBan
(
	MaPhienBan int identity primary key,
	TenPhienBan nvarchar(50),
	MaHangSX int references HangSX(MaHangSX),
)

create table Laptop
(
	MaLap int identity primary key,
	TenLap nvarchar(100),
	GiaBan decimal(18,0),
	MoTa nvarchar(Max),
	AnhBia nvarchar(50),
	NgayCapNhat datetime,
	SoLuongTon int ,
	MaHangSX int references HangSX(MaHangSX),
	MaLoai int references TheLoai(MaLoai),
	MaPhienBan int references PhienBan(MaPhienBan)
)

create table DonHang
(
	MaDonHang int identity primary key,
	DaThanhToan int ,
	TinhTrangGiaoHang int,
	NgayDat datetime,
	NgayGiao datetime,
	MaKH int references KhachHang(MaKH)
)

create table ChiTietDonHang
(
	MaLap int references Laptop(MaLap),
	MaDonHang int references DonHang(MaDonHang),
	SoLuong int ,
	DonGia nchar(10),
	primary key(MaLap,MaDonHang)
)