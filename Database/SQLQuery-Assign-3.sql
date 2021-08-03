create table SinhVien (
	TenSV varchar(60),
	MaSV varchar(25) primary key ,  
	NgaySinh date
);

create table Lop (
	MaLop varchar(25) primary key,
	TenLop varchar(60),
	PhongHoc varchar(25)
);

create table MonThi (
	TenMonThi varchar(60),
	MaMonThi varchar(25) primary key,
	DiemThi varchar(60),
	Ketqua varchar(25),
	MaLop varchar(25) foreign key references Lop(MaLop)
);

create table SV_Lop (
	MaSV varchar(25) foreign key references SinhVien(MaSV),
	MaLop varchar(25) foreign key references Lop(MaLop)
);