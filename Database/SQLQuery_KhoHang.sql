create table PhieuKiem(
	Id	varchar(200) primary key,	 
	Ngaygio	varchar(200),	 
	Mota	varchar(200),
);
create table PhieuNhapKho(
	Id	varchar(200) primary key,	 
	Ngaygionhap	varchar(200) check(Ngaygionhap<=getdate()),	 
	Mota	varchar(200),	 
	Loaiphieunhap	varchar(200),	 
	Thongtinthem	varchar(200),
);
create table PhieuXuatKho(
	Id	varchar(200) primary key,	 
	Ngaygioxuat	varchar(200),	 
	Mota	varchar(200),	 
	Loaiphieu	varchar(200),	 
	Thongtinthem	varchar(200),
);
create table LoaiHang(
	Ten	varchar(200),	 
	Id	varchar(200) primary key,
);
create table ThuongHieu(
	Thuonghieu	varchar(200),	 
	Id varchar(200) primary key,
);
create table NhanVien(
	Id	varchar(200) primary key,	 
	Ten	varchar(200),	 
	Dienthoai varchar(200),
);
create table NhaCungCap(
	Ten	varchar(200),	 
	Id	varchar(200) primary key,	 
	Dienthoai	varchar(200),	 
	Diachi	varchar(200),	 
	Email	varchar(200),	 
	Mahopdong	varchar(200),
);
create table HangHoa(
	Ten	varchar(200),	 
	id	varchar(200) primary key,	 
	Hinhanh	varchar(200),	 
	Mota	varchar(200),	 
	Soluongton	varchar(200),	 
	Soluongloi	varchar(200),	 
	ThuonghieuID	varchar(200) foreign key references ThuongHieu(Id),	 
	LoaihangID	varchar(200) foreign key references LoaiHang(Id),
);
create table HanghoaPhieuxuat(
	HanghoaID	varchar(200) foreign key references HangHoa(id),	 
	PhieuxuatID	varchar(200) foreign key references PhieuXuatKho(Id),
);
create table HangHoaPhieuNhap(
	HanghoaID	varchar(200) foreign key references HangHoa(id),	 
	PhieunhapID varchar(200) foreign key references PhieuNhapKho(Id),
);
create table HanghoaPhieukiem(
	HanghoaID	varchar(200) foreign key references HangHoa(id),	 
	PhieuKiemID	varchar(200) foreign key references PhieuKiem(Id),	 
	Soton	varchar(200) check(Soton>=0) ,	 
	soloi	varchar(200) check(soloi>=0 and soloi<100 ),
);
create table HanghoaNhanvien(
	HanghoaID	varchar(200) foreign key references HangHoa(id),	 
	NhanvienID	varchar(200) foreign key references NhanVien(Id),
);
create table HanghoaNhacungcap(
	HanghoaID	varchar(200) foreign key references HangHoa(id),	 
	NhacungcapID	varchar(200) foreign key references NhaCungCap(Id),
);
drop table HangHoaPhieuNhap;