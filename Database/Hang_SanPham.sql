create table Hang(
	MaSoHang int primary key,
	TenHang varchar(100) not null unique,
	DiaChi varchar(100) not null,
	SoDT varchar(20) not null unique
);

create table SanPham(
	MaSP int primary key,
	TenSP nvarchar(100) not null unique,
	MoTa ntext,
	DonVi nvarchar(20) not null,
	GiaSP decimal(12) not null check(GiaSP >= 0),
	SoLuongSP int not null check(SoLuongSP >= 0),
	MaSoHang int foreign key references Hang(MaSoHang) not null 
);

INSERT INTO Hang (MaSoHang, TenHang, DiaChi, SoDT)
VALUES (123, 'Asus', 'USA', '983232');

INSERT INTO SanPham (MaSP, TenSP, MoTa,DonVi, GiaSP, SoLuongSP, MaSoHang)
VALUES  (1, N'Máy Tính T450', N'Máy nhập cũ', N'Chiếc',1000,10,123),
		(2, N'Điện Thoại Nokia5670', N'Điện thoại đang hot', N'Chiếc',200,200,123),
		(3, N'Máy In Samsung 450', N'Máy in đang loại bình', N'Chiếc',100,10,123);

--4. Viết các câu lênh truy vấn để
--a) Hiển thị tất cả các hãng sản xuất.
select * from Hang;
--b) Hiển thị tất cả các sản phẩm.
select * from SanPham;

--5. Viết các câu lệnh truy vấn để
--a) Liệt kê danh sách hãng theo thứ thự ngược với alphabet của tên.
select * from Hang order by TenHang desc;

--b) Liệt kê danh sách sản phẩm của cửa hàng theo thứ thự giá giảm dần.
select * from SanPham order by GiaSP desc;

--c) Hiển thị thông tin của hãng Asus.
select * from Hang where TenHang like 'Asus';

--d) Liệt kê danh sách sản phẩm còn ít hơn 11 chiếc trong kho
select * from SanPham where SoLuongSP <11;

--e) Liệt kê danh sách sản phẩm của hãng Asus
select * from SanPham where MaSoHang in (select MaSoHang from Hang where TenHang like 'Asus');

--6. Viết các câu lệnh truy vấn để lấy
--a) Số hãng sản phẩm mà cửa hàng có.
select count(*) from Hang;

--b) Số mặt hàng mà cửa hàng bán.
select count(*) from SanPham;

--c) Tổng số loại sản phẩm của mỗi hãng có trong cửa hàng.
select MaSoHang, sum(SoLuongSP) as SL_SP from SanPham group by MaSoHang;

--d) Tổng số đầu sản phẩm của toàn cửa hàng
select sum(SoLuongSP) as TongSP from SanPham;

--7. Thay đổi những thay đổi sau trên cơ sở dữ liệu
--a) Viết câu lệnh để thay đổi trường giá tiền của từng mặt hàng là dương(>0).
--b) Viết câu lệnh để thay đổi số điện thoại phải bắt đầu bằng 0.
--c) Viết các câu lệnh để xác định các khóa ngoại và khóa chính của các bảng.
drop table Hang;
drop table SanPham;