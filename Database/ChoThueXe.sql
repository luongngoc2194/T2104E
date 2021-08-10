create table NhaCungCap(
	MaNhaCC nchar(20) primary key,
	TenNhaCC nvarchar(100) not null unique,
	DiaChi nvarchar(255) not null,
	SoDT nchar(20) not null unique,
	MaSoThue nchar(20) not null unique
);

create table LoaiDichVu(
	MaLoaiDV nchar(20) primary key,
	TenLoaiDV nvarchar(100) not null unique
);

create table MucPhi(
	MaMP nchar(20) primary key,
	DonGia decimal(12,4) not null check(DonGia>0),
	MoTa ntext 
);

create table DongXe(
	DongXe nchar(20) primary key,
	HangXe nvarchar(100) not null,
	SoChoNgoi int not null check(SoChoNgoi>0)
);

create table DangKyCungCap(
	MaDKCC nchar(20) primary key,
	MaNhaCC nchar(20) foreign key references NhaCungCap(MaNhaCC),
	MaLoaiDV nchar(20) foreign key references LoaiDichVu(MaLoaiDV),
	DongXe nchar(20) foreign key references DongXe(DongXe),
	MaMP nchar(20) foreign key references MucPhi(MaMP),
	NgayBDCC date not null check(NgayBDCC<=getdate()),
	NgayKTCC date not null ,
	SLXeDK int not null check(SLXeDK>0) 
);


INSERT INTO NhaCungCap (MaNhaCC, TenNhaCC, DiaChi,SoDT,MaSoThue)
VALUES 
	('NCC001', N'Cty TNHH Toàn Pháp', 'Hai Chau',05113999888,568941),
	('NCC002', N'Cty Cổ Phần Đông Du', 'Lien Chieu',05113999889,456789),
	('NCC003', N'Ông Nguyễn Văn A', 'Hoa Thuan',05113999898,321456),
	('NCC004', N'Cty Cổ Phần Toàn Cầu Xanh', 'Hai Chau',05113658945,513364),
	('NCC005', N'Cty TNHH AMA', 'Thanh Khe',05113875466,546546),
	('NCC006', N'Bà Trần Thị Bích Vân', 'Lien Chieu',05113587469,524545),
	('NCC007', N'Cty TNHH Phan Thành', 'Thanh Khe',05113987456,113021),
	('NCC008', N'Ông Phan Đình Nam', 'Hoa Thuan',05113532456,121230),
	('NCC009', N'Tập Đoàn Đông Nam Á', 'Lien Chieu',05113987121,533654),
	('NCC010', N'Cty Cổ Phần Dạng Đông', 'Lien Chieu',05113569654,187864);

INSERT INTO LoaiDichVu (MaLoaiDV, TenLoaiDV)
VALUES 
	('DV01', N'Dịch vụ xe taxi'),
	('DV02', N'Dịch vụ xe buyt công cộng theo tuyến cố định'),
	('DV03', N'Dịch vụ xe cho thuê theo hợp đồng');

INSERT INTO MucPhi (MaMP, DonGia, MoTa)
VALUES 
	('MP01', 10.0000, N'Áp dụng từ 1/2015'),
	('MP02', 15.0000, N'Áp dụng từ 2/2015'),
	('MP03', 20.0000, N'Áp dụng từ 1/2010'),
	('MP04', 25.0000, N'Áp dụng từ 2/2011');

INSERT INTO DongXe (DongXe, HangXe, SoChoNgoi)
VALUES 
	('Hiace', 'Toyota', 16),
	('Vios', 'Toyota', 5),
	('Escape', 'Toyota', 5),
	('Cerato', 'Toyota', 7),
	('Forte', 'Toyota', 5),
	('Starex', 'Toyota', 7),
	('Grand-i10', 'Toyota', 7);

INSERT INTO DangKyCungCap (MaDKCC, MaNhaCC, MaLoaiDV,DongXe,MaMP,NgayBDCC,NgayKTCC,SLXeDK)
VALUES 
	('DK001', 'NCC001', 'DV01','Hiace',    'MP01','2015-11-20','2016-11-20',4),
	('DK002', 'NCC002', 'DV02','Vios',     'MP02','2015-11-20','2017-11-20',3),
	('DK003', 'NCC003', 'DV03','Escape',   'MP03','2017-11-20','2018-11-20',5),
	('DK004', 'NCC005', 'DV01','Cerato',   'MP04','2015-11-20','2019-11-20',7),
	('DK005', 'NCC002', 'DV02','Forte',    'MP03','2019-11-20','2020-11-20',1),
	('DK006', 'NCC004', 'DV03','Starex',   'MP04','2016-11-10','2021-11-20',2),
	('DK007', 'NCC005', 'DV01','Cerato',   'MP03','2015-11-30','2016-01-25',8),
	('DK008', 'NCC006', 'DV01','Vios',     'MP02','2016-02-28','2016-08-15',9),
	('DK009', 'NCC005', 'DV03','Grand-i10','MP02','2016-04-27','2017-04-30',10),
	('DK010', 'NCC006', 'DV01','Forte',    'MP02','2015-11-21','2016-02-22',4),
	('DK011', 'NCC007', 'DV01','Forte',    'MP01','2016-12-25','2017-02-20',5),
	('DK012', 'NCC007', 'DV03','Cerato',   'MP01','2016-04-16','2017-12-20',6),
	('DK013', 'NCC003', 'DV02','Cerato',   'MP01','2015-12-21','2016-12-21',8),
	('DK014', 'NCC008', 'DV02','Cerato',   'MP01','2016-05-20','2016-12-30',1),
	('DK015', 'NCC003', 'DV01','Hiace',    'MP02','2018-04-24','2019-11-20',6),
	('DK016', 'NCC001', 'DV03','Grand-i10','MP02','2016-06-22','2016-12-21',8),
	('DK017', 'NCC002', 'DV03','Cerato',   'MP03','2016-09-30','2019-09-30',4),
	('DK018', 'NCC008', 'DV03','Escape',   'MP04','2017-12-13','2018-09-30',2),
	('DK019', 'NCC003', 'DV03','Escape',   'MP03','2016-01-24','2016-12-30',8),
	('DK020', 'NCC002', 'DV03','Cerato',   'MP04','2016-05-03','2017-10-21',7),
	('DK021', 'NCC006', 'DV01','Forte',    'MP02','2015-01-30','2016-12-30',9),
	('DK022', 'NCC002', 'DV02','Cerato',   'MP04','2016-07-25','2017-12-30',6),
	('DK023', 'NCC002', 'DV01','Forte',    'MP03','2017-11-30','2018-05-20',5),
	('DK024', 'NCC003', 'DV03','Forte',    'MP04','2017-12-23','2019-11-30',8),
	('DK025', 'NCC003', 'DV03','Hiace',    'MP02','2016-08-24','2017-10-25',1);


SELECT * FROM NhaCungCap;
SELECT * FROM LoaiDichVu;
SELECT * FROM MucPhi;
SELECT * FROM DongXe;
SELECT * FROM DangKyCungCap;

drop table DangKyCungCap;
drop table NhaCungCap;
drop table LoaiDichVu;
drop table MucPhi;
drop table DongXe;