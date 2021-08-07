create table Khachhang(
	Ten	varchar(255) not null,	 
	Diachi	varchar(255),	 
	DIenthoai	varchar(255) not null,
	Id	varchar(25) primary key
);

create table MatHang(
	Masp	varchar(25) primary key,	 
	Tensp	varchar(50) not null,	 
	Mota	text,
);

create table DonHang(
	Ma	varchar(25) primary key,	 
	Thoigian	datetime not null check(Thoigian<=getdate()),	 
	khachhangId	varchar(25) not null foreign key references Khachhang(Id)
);

create table DonHangMathang(
	DonHangma	varchar(25) not null foreign key references DonHang(Ma),	 
	MatHangMasp	varchar(25) not null foreign key references MatHang(Masp),	 
	Soluong	int check(Soluong>=1)
);
