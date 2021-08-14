create table KhachHang(
	Id int primary key identity,
	Ten nvarchar(100) not null,
	CMT int not null unique ,
	ĐiaChi nvarchar(225) 
);
create table ThueBao(
	SoTB varchar(20) primary key,
	LoaiTB nvarchar(20) not null,
	NgayDK date not null,
	KH_Id int not null foreign key references KhachHang(Id) 
);


--3. Viết các câu lệnh để thêm dữ liệu vào các bảng
insert into KhachHang (Ten,CMT,ĐiaChi)
values  (N'Nguyễn Nguyệt Nga',123456789,N'Hà Nội'),
		(N'Nguyễn Nguyệt Nga 1',823456782,N'Hà Nội 1'),
		(N'Nguyễn Nguyệt Nga 2',523456783,N'Hà Nội 2'),
		(N'Nguyễn Nguyệt Nga 3',623456784,N'Hà Nội 3');

insert into ThueBao (SoTB,LoaiTB,NgayDK,KH_Id)
values  (123443789,N'Trả trước','2012/12/02',1),
		(162456789,N'Trả trước','2012/12/02',2),
		(823456782,N'Trả sau','2016/12/02',3),
		(523456783,N'Trả trước','1992/12/02',4),
		(623456784,N'Trả sau','2020/12/02',2),
		(833456789,N'Trả luôn','2019/12/02',1);
update ThueBao set NgayDK = '2019/12/02' where SoTB = 833456789;
--4. Viết các câu lênh truy vấn để
select *from KhachHang;
select *from ThueBao;

--5. Viết các câu lệnh truy vấn để lấy

--a) Hiển thị toàn bộ thông tin của thuê bao có số: 123443789
select * from KhachHang where Id in (select KH_Id from ThueBao where SoTB=123443789)
--b) Hiển thị thông tin về khách hàng có số CMTND: 123456789
select * from KhachHang where CMT = 123456789;
--c) Hiển thị các số thuê bao của khách hàng có số CMTND:123456789
select SoTB from ThueBao where KH_Id in (select Id from KhachHang where CMT = 123456789);
--d) Liệt kê các thuê bao đăng ký vào ngày 12/12/02
select SoTB from ThueBao where NgayDK = '2012/12/02';
--e) Liệt kê các thuê bao có địa chỉ tại Hà Nội
select SoTB from ThueBao where KH_Id in (select Id from KhachHang where ĐiaChi like N'Hà Nội');

--6. Viết các câu lệnh truy vấn để lấy
--a) Tổng số khách hàng của công ty.
select count(*)as TongKH from KhachHang;
--b) Tổng số thuê bao của công ty.
select count(*)as TongTB from ThueBao;
--c) Tổng số thuê bào đăng ký ngày 12/12/09.
select count(*)as TongTB from ThueBao where NgayDK = '2012/12/02';
--d) Hiển thị toàn bộ thông tin về khách hàng và thuê bao của tất cả các số thuê bao.
select A.* ,B.* from KhachHang A inner join ThueBao B on B.KH_Id = A.Id;

--7. Thay đổi những thay đổi sau trên cơ sở dữ liệu
--a) Viết câu lệnh để thay đổi trường ngày đăng ký là not null.
????????????????????????????
--b) Viết câu lệnh để thay đổi trường ngày đăng ký là trước hoặc bằng ngày hiện tại.
alter table ThueBao add check (NgayDK<=getdate());
--c) Viết câu lệnh để thay đổi số điện thoại phải bắt đầu 09
update ThueBao set SoTB = '09'+SoTB;
--d) Viết câu lệnh để thêm trường số điểm thưởng cho mỗi số thuê bao.



alter table ThueBao add DiemThuong int  check(DiemThuong>=0)  default 0; --default ko ăn
alter table ThueBao drop column DiemThuong ;--Lỗi khi xóa