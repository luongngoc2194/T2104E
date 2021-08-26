create table Tours(
	TourID int Primary key identity,
	TourName nvarchar(200) not null,
	Days tinyint,
	Nights tinyint,
	Image varchar(150),
	Description nvarchar(500) ,
	Price money check(Price>0)
);
create table TourDetails(
	TourDetailID int Primary key identity,
	TourID int Foreign key references Tours(TourID),
	Day tinyint,
	Place varchar(100) Not null,
	Detail nvarchar(200) ,
	Vehicle nvarchar(100)
);

insert into Tours (TourName, Days,Nights,Image,Description,Price)
values (N'Hạ Long', 3,2,'img1',N'Tour 2 người',10000000.0000),
		(N'Vũng Tàu', 2,2,'img2',N'Tour 15 người',1500000.0000),
		(N'Cần Thơ', 7,6,'img3',N'Tour gia đình',20000000.0000);

INSERT INTO TourDetails (TourID, Day,Place,Detail,Vehicle)
VALUES (1, 10,'Ha Long',N'Chi Tiết liên hệ hotline 01','Máy Bay'),
		(2, 10,'Vung Tau',N'Chi Tiết liên hệ hotline 02','Xe khách'),
		(3, 10,'Can Tho',N'Chi Tiết liên hệ hotline 03','Xe 4 chỗ');

select * from Tours where TourName like N'Hạ Long'

select * from Tours where Days<3 and Nights<3 and Price <10000000

create index TourName_index
on Tours (TourName);

create view v_Tourln as select A.TourName, A.Price, B.Day, B.Place, B.Detail, B.Vehicle  from Tours A inner join TourDetails B on B.TourID=A.TourID;


CREATE PROCEDURE sp_FindTourByName @toursName nvarchar(80)
AS
SELECT * FROM Tours WHERE TourName = @toursName
GO;
