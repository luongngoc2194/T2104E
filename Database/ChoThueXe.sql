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
	('Escape', 'Ford', 5),
	('Cerato', 'KIA', 7),
	('Forte', 'KIA', 5),
	('Starex', 'Huyndai', 7),
	('Grand-i10', 'Huyndai', 7);

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


drop table DangKyCungCap;
drop table NhaCungCap;
drop table LoaiDichVu;
drop table MucPhi;
drop table DongXe;

--sửa dữ liêu đã nhập

update NhaCungCap set DiaChi = 'Ha Noi' where TenNhaCC like N'Cty TNHH Toàn Pháp';--với chuỗi thì dung like , số thì dùng =

update NhaCungCap set DiaChi = 'Ha Noi' where TenNhaCC like N'Cty TNHH Toàn Pháp' or MaNhaCC like 'NCC002';--lọc các đối tượng thỏa mãn 1 trong
update NhaCungCap set DiaChi = 'Ha Noi' where MaNhaCC in (NCC001 ,NCC002 ,NCC003);--lọc các đối tượng thỏa mãn 1 trong 

update NhaCungCap set DiaChi = 'Ha Noi' where TenNhaCC like N'Cty TNHH%'; --lọc đối tượng có bắt đầu chuỗi Cty TNHH
update NhaCungCap set DiaChi = 'Ha Noi' where TenNhaCC like N'%Toàn Pháp'; --lọc đối tượng có kết thúc chuỗi Toàn Pháp
update NhaCungCap set DiaChi = 'Ha Noi' where TenNhaCC like N'%TNHH%'; --lọc đối tượng có chuỗi TNHH

--Xóa dữ liêu

delete from NhaCungCap where MaNhaCC in (NCC001 ,NCC002 ,NCC003);

--Truy vấn dữ liêu mở rộng

--Truy vấn thông thường
SELECT MaNhaCC,DiaChi,TenNhaCC FROM NhaCungCap;
SELECT MaNhaCC as newMaNhaCC,DiaChi,TenNhaCC FROM NhaCungCap;--hiện cột và đổi tên cột trên hiển thị / as


--Truy vấn lọc dữ liệu
SELECT * FROM NhaCungCap where MaNhaCC like N'NCC001              ';

--Thông ke số lượng

SELECT count(*) as SLDon FROM NhaCungCap where MaNhaCC like N'NCC001              ';--đếm số row
SELECT sum(SLXeDK) as TongSoXe FROM DangKyCungCap;
SELECT avg(SLXeDK) as TB_TongSoXe FROM DangKyCungCap;

select MaNhaCC,sum(SLXeDK) as TongSoXe,count(*) as SLDon,avg(SLXeDK) as TB_TongSoXe FROM DangKyCungCap  group by MaNhaCC;
select MaNhaCC,sum(SLXeDK) as TongSoXe,count(*) as SLDon,avg(SLXeDK) as TB_TongSoXe FROM DangKyCungCap where SLXeDK>10 group by MaNhaCC having MaNhaCC in ('NCC002              ','NCC003              ');

--truy vấn con
SELECT * FROM NhaCungCap where MaNhaCC in (select MaNhaCC FROM DangKyCungCap where SLXeDK =4 );


--Săp xếp 
select * from NhaCungCap order by MaSoThue asc;-- bé --> lớn ,abc ,cũ -->mơi
select * from NhaCungCap order by MaSoThue desc;

--Xem bảng
SELECT * FROM NhaCungCap;
SELECT * FROM LoaiDichVu;
SELECT * FROM MucPhi;
SELECT * FROM DongXe;
SELECT * FROM DangKyCungCap;

--Câu 3 :Liệt kê những dòng xe có số chỗ ngồi trên 5 chỗ.
select * from DongXe where SoChoNgoi > 5;

--Câu 4: Liệt kê thông tin của các nhà cung cấp đã từng đăng ký cung cấp những dòng xe
--thuộc hãng xe “Toyota” với mức phí có đơn giá là 15.000 VNĐ/km hoặc những dòng xe thuộc hãng xe “KIA” với mức phí có đơn giá là 20.000 VNĐ/km


select * from NhaCungCap 
	where MaNhaCC in (select MaNhaCC from DangKyCungCap where DongXe in (select DongXe from DongXe where HangXe like 'KIA' ) 
															and MaMP in (select MaMP from MucPhi where DonGia > 20.0000)) 
	or MaNhaCC in (select MaNhaCC from DangKyCungCap where DongXe in (select DongXe from DongXe where HangXe like 'Toyota' ) 
															and MaMP in (select MaMP from MucPhi where DonGia > 15.0000)) ;

select * from NhaCungCap where MaNhaCC in 
										(select MaNhaCC from DangKyCungCap where DongXe in 
																							(select DongXe from DongXe where HangXe like 'KIA' ) 
																				and MaMP in 
																							(select MaMP from MucPhi where DonGia > 20.0000)
										) 
							or MaNhaCC in 
										(select MaNhaCC from DangKyCungCap where DongXe in 
																							(select DongXe from DongXe where HangXe like 'Toyota' ) 
																				and MaMP in 
																							(select MaMP from MucPhi where DonGia > 15.0000)
										) ;

--Câu 5: Liệt kê thông tin toàn bộ nhà cung cấp được sắp xếp tăng dần theo tên nhà cung cấp và giảm dần theo mã số thuế
--Câu 6: Đếm số lần đăng ký cung cấp phương tiện tương ứng cho từng nhà cung cấp với
--yêu cầu chỉ đếm cho những nhà cung cấp thực hiện đăng ký cung cấp có ngày bắt đầu cung cấp là “20/11/2015”



--Xem bảng
SELECT * FROM NhaCungCap;
SELECT * FROM LoaiDichVu;
SELECT * FROM MucPhi;
SELECT * FROM DongXe;
SELECT * FROM DangKyCungCap;