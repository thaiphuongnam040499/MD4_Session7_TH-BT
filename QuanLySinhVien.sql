Create Database QuanLyDiemSV CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci;
use QuanLyDiemSV;
/*=============DANH MUC KHOA==============*/
Create table DMKhoa(
	MaKhoa char(2) primary key,
	TenKhoa nvarchar(30)not null
);
/*==============DANH MUC SINH VIEN============*/
Create table DMSV(
MaSV char(3) not null primary key,
HoSV nvarchar(15) not null,
TenSV nvarchar(7)not null,
Phai nchar(7),
NgaySinh datetime not null,
NoiSinh nvarchar (20),
MaKhoa char(2),
HocBong float
);
/*===================MON HOC========================*/
create table DMMH(
MaMH char (2) not null,
TenMH nvarchar (25)not null,
SoTiet tinyint,
Constraint DMMH_MaMH_pk primary key(MaMH)
);
/*=====================KET QUA===================*/
Create table KetQua
(
MaSV char(3) not null,
MaMH char (2)not null ,
LanThi tinyint,
Diem decimal(4,2),
Constraint KetQua_MaSV_MaMH_LanThi_pk primary key (MaSV,MaMH,LanThi)
);
/*==========================TAO KHOA NGOAI==============================*/
Alter table dmsv
add Constraint DMKhoa_MaKhoa_fk foreign key (MaKhoa)
References DMKhoa (MaKhoa);
Alter table KetQua
add constraint KetQua_MaSV_fk foreign key (MaSV) references DMSV (MaSV);
Alter table KetQua
add constraint DMMH_MaMH_fk foreign key (MaMH) references DMMH (MaMH);
/*==================NHAP DU LIEU====================*/
/*==============NHAP DU LIEU DMMH=============*/
Insert into DMMH(MaMH,TenMH,SoTiet)
values('01','Cơ Sở Dữ Liệu',45);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('02','Trí Tuệ Nhân Tạo',45);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('03','Truyền Tin',45);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('04','Đồ Họa',60);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('05','Văn Phạm',60);
/*==============NHAP DU LIEU DMKHOA=============*/
Insert into DMKhoa(MaKhoa,TenKhoa)
values('AV','Anh Văn');
Insert into DMKhoa(MaKhoa,TenKhoa)
values('TH','Tin Học');
Insert into DMKhoa(MaKhoa,TenKhoa)
values('TR','Triết');
Insert into DMKhoa(MaKhoa,TenKhoa)
values('VL','Vật Lý');
/*==============NHAP DU LIEU DMSV=============*/
Insert into DMSV
values('A01','Nguyễn Thị','Hải','Nữ','1990-03-20','Hà Nội','TH',130000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A02','Trần Văn','Chính','Nam','1992-12-24','Bình Định','VL',150000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A03','Lê Thu Bạch','Yến','Nữ','1990-02-21','TP Hồ Chí Minh','TH',170000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A04','Trần Anh','Tuấn','Nam','1990-12-20','Hà Nội','AV',80000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('B01','Trần Thanh','Mai','Nữ','1991-08-12','Hải Phòng','TR',0);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('B02','Trần Thị Thu','Thủy','Nữ','1991-01-02','TP Hồ Chí Minh','AV',0);
/*==============NHAP DU LIEU BANG KET QUA=============*/
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','01',1,3);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','01',2,6);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','02',2,6);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','03',1,5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','01',1,4.5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','01',2,7);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','03',1,10);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','05',1,9);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','01',1,2);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','01',2,5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','03',1,2.5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','03',2,4);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A04','05',2,10);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B01','01',1,7);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B01','03',1,2.5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B01','03',2,5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B02','02',1,6);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B02','04',1,10);

-- 1. Liệt kê danh sách sinh viên, gồm các thông tin sau: Mã sinh viên, Họ sinh
-- viên, Tên sinh viên, Học bổng. Danh sách sẽ được sắp xếp theo thứ tự Mã
-- sinh viên tăng dần
select MaSV, HoSV, TenSV, HocBong from DMSV order by MaSV asc;
-- 2. Danh sách các sinh viên gồm thông tin sau: Mã sinh viên, họ tên sinh viên,
-- Phái, Ngày sinh. Danh sách sẽ được sắp xếp theo thứ tự Nam/Nữ.
select MaSV, HoSV, TenSV, Phai, NgaySinh from DMSV order by Phai asc;
-- 3. Thông tin các sinh viên gồm: Họ tên sinh viên, Ngày sinh, Học bổng. Thông
-- tin sẽ được sắp xếp theo thứ tự Ngày sinh tăng dần và Học bổng giảm dần
select MaSV, HoSV, TenSV, NgaySinh, HocBong from DMSV order by NgaySinh asc, HocBong desc;
-- 4. Danh sách các môn học có tên bắt đầu bằng chữ T, gồm các thông tin: Mã
-- môn, Tên môn, Số tiết.
select MaMH, TenMH, SoTiet from DMMH where TenMH like "T%"; 
-- 5. Liệt kê danh sách những sinh viên có chữ cái cuối cùng trong tên là I, gồm
-- các thông tin: Họ tên sinh viên, Ngày sinh, Phái.
select HoSV, TenSV, NgaySinh, Phai from DMSV where TenSV like "%I";
-- 6. Danh sách những khoa có ký tự thứ hai của tên khoa có chứa chữ N, gồm
-- các thông tin: Mã khoa, Tên khoa.
select MaKhoa, TenKhoa from DMkhoa where TenKhoa like "_N%";
-- 7. Liệt kê những sinh viên mà họ có chứa chữ Thị
select HoSV, TenSV from DMSV where HoSV like "%Thị%";
-- 8. Cho biết danh sách các sinh viên có học bổng lớn hơn 100,000, gồm các
-- thông tin: Mã sinh viên, Họ tên sinh viên, Mã khoa, Học bổng. Danh sách sẽ
-- được sắp xếp theo thứ tự Mã khoa giảm dần
select s.MaSV, s.HoSV, s.TenSV, k.MaKhoa, s.HocBong from DMSV s join DMKhoa k where s.HocBong > 100000 order by k.MaKhoa desc;
-- 9. Liệt kê các sinh viên có học bổng từ 150,000 trở lên và sinh ở Hà Nội, gồm
-- các thông tin: Họ tên sinh viên, Mã khoa, Nơi sinh, Học bổng.
select s.HoSv, s.TenSV, k.MaKhoa, s.NoiSinh, s.HocBong from DMSV s join DMKhoa k on s.MaKhoa = k.MaKhoa where s.HocBong > 150000 and s.NoiSinh like "Hà Nội";
-- 10.Danh sách các sinh viên của khoa Anh văn và khoa Vật lý, gồm các thông
-- tin: Mã sinh viên, Mã khoa, Phái.
select s.MaSV, k.MaKhoa, s.Phai from DMSV s join DMKhoa k on s.MaKhoa = k.MaKhoa where k.MaKhoa in ("AV","VL"); 
-- 11.Cho biết những sinh viên có ngày sinh từ ngày 01/01/1991 đến ngày
-- 05/06/1992 gồm các thông tin: Mã sinh viên, Ngày sinh, Nơi sinh, Học
-- bổng.
select MaSV, NgaySinh, NoiSinh, HocBong from DMSV where NgaySinh > "1991-1-1" and NgaySinh < "1992-6-5";
-- 12.Danh sách những sinh viên có học bổng từ 80.000 đến 150.000, gồm các
-- thông tin: Mã sinh viên, Ngày sinh, Phái, Mã khoa.
select s.MaSv, s.NgaySinh, s.Phai, k.MaKhoa, s.HocBong from DMSV s join DMKhoa k where s.HocBong >=80000 and s.HocBong <= 150000;
-- 13.Cho biết những môn học có số tiết lớn hơn 30 và nhỏ hơn 45, gồm các thông
-- tin: Mã môn học, Tên môn học, Số tiết
select MaMH, TenMH, SoTiet from DMMH where SoTiet > 30 and SoTiet < 45;
-- 14.Liệt kê những sinh viên nam của khoa Anh văn và khoa tin học, gồm các
-- thông tin: Mã sinh viên, Họ tên sinh viên, tên khoa, Phái.
select s.MaSV, s.HoSV, s.TenSV, k.TenKhoa, s.Phai from DMSV s join DMKhoa k where s.Phai = "Nam" and k.MaKhoa in ("AV","TH");
-- 15.Liệt kê những sinh viên nữ, tên có chứa chữ N
select HoSv, TenSv, Phai from DMSV where Phai = "Nữ" and TenSV like "%N%";
-- 16.Danh sách sinh viên có nơi sinh ở Hà Nội và sinh vào tháng 02, gồm các
-- thông tin: Họ sinh viên, Tên sinh viên, Nơi sinh, Ngày sinh.
select HoSV, TenSV, NoiSinh, NgaySinh from DMSV where month(NgaySinh) = 2 and NoiSinh like "Hà Nội";
-- 17.Cho biết những sinh viên có tuổi lớn hơn 20, thông tin gồm: Họ tên sinh
-- viên, Tuổi,Học bổng.
select HoSv, TenSv, HocBong, NgaySinh, TIMESTAMPDIFF(YEAR, NgaySinh, CURDATE()) AS Tuoi from DMSV where TIMESTAMPDIFF(YEAR, NgaySinh, CURDATE()) >20;
-- 18.Danh sách những sinh viên có tuổi từ 20 đến 25, thông tin gồm: Họ tên sinh
-- viên, Tuổi, Tên khoa.
select HoSv, TenSv, HocBong, NgaySinh, TIMESTAMPDIFF(YEAR, NgaySinh, CURDATE()) AS Tuoi from DMSV 
where TIMESTAMPDIFF(YEAR, NgaySinh, CURDATE()) >20 and TIMESTAMPDIFF(YEAR, NgaySinh, CURDATE()) <25;
-- 19.Danh sách sinh viên sinh vào mùa xuân năm 1990, gồm các thông tin: Họ
-- tên sinh viên,Phái, Ngày sinh.
select concat(hoSv," ",TenSv) as HọTên, Phai, NgaySinh from DMSV where year(NgaySinh) = 1990 and month(NgaySinh) in (1, 2, 3);
-- 20.Cho biết thông tin về mức học bổng của các sinh viên, gồm: Mã sinh viên,
-- Phái, Mã khoa, Mức học bổng. Trong đó, mức học bổng sẽ hiển thị là “Học
-- bổng cao” nếu giá trị của field học bổng lớn hơn 500,000 và ngược lại hiển
-- thị là “Mức trung bình”
 select MaSV, Phai, MaKhoa,case when HocBong > 500000 then 'Học bổng cao'
else 'Mức trung bình' end as MucHocBong from DMSV;
-- 21.Cho biết tổng số sinh viên của toàn trường
select count(MaSV) as TongSV from DMSV;
-- 22.Cho biết tổng sinh viên nam và tổng sinh viên nữ.
select Phai, count(*) as TongSV from DMSV group by Phai;
-- 23.Cho biết tổng số sinh viên của từng khoa. 
select k.MaKhoa, count(*) as TongSV from DMSV s join DMKhoa k on s.MaKhoa = k.MaKhoa group by K.MaKhoa;
-- 24.Cho biết số lượng sinh viên học từng môn
select m.TenMH, count(*) as TongSV from DMMH m join KetQua kq on m.MaMH = kq.MaMH join DMSV s on kq.MaSV = s.MaSV group by m.MaMH; 
-- 25.Cho biết số lượng môn học mà sinh viên đã học(tức tổng số môn học có
-- trong bảng kq)
select s.TenSV, count(TenMH) as TongMon from DMMH m join KetQua kq on m.MaMH = kq.MaMH join DMSV s on kq.MaSV = s.MaSV group by s.TenSV;
-- 26.Cho biết tổng số học bổng của mỗi khoa.
select MaKhoa, SUM(HocBong) as TongHocBong from DMSV group by MaKhoa;
-- 27.Cho biết học bổng cao nhất của mỗi khoa.
select MaKhoa, max(HocBong) as TongHocBong from DMSV group by MaKhoa;
-- 28.Cho biết tổng số sinh viên nam và tổng số sinh viên nữ của mỗi khoa
select MaKhoa, Phai, COUNT(*) as TongSV from DMSV group by MaKhoa, Phai;
-- 29.Cho biết số lượng sinh viên theo từng độ tuổi.
select floor(datediff(curdate(), NgaySinh)/365) as Tuoi, count(*) as TongSV from DMSV
group by Tuoi;
-- 30.Cho biết những năm sinh nào có 2 sinh viên đang theo học tại trường.
select year(NgaySinh) as NamSinh, COUNT(*) as TongSV from DMSV
group by NamSinh having TongSV = 2;
-- 31.Cho biết những nơi nào có hơn 2 sinh viên đang theo học tại trường.
select NoiSinh, COUNT(*) as TongSV from DMSV
group by NoiSinh having TongSV = 2;
-- 32.Cho biết những môn nào có trên 3 sinh viên dự thi.
select m.TenMH, count(*) as TongSV from DMMH m join KetQua kq on m.MaMH = kq.MaMH
group by m.TenMH having TongSV > 3;
-- 33.Cho biết những sinh viên thi lại trên 2 lần
select s.TenSV, kq.LanThi from DMSV s join KetQua kq on s.MaSV = kq.MaSV where kq.LanThi >= 2;
-- 34.Cho biết những sinh viên nam có điểm trung bình lần 1 trên 7.0
select s.TenSV, kq.Diem from DMSV s join KetQua kq on s.MaSV = kq.MaSV where kq.LanThi = 1 and kq.Diem >=7.0;
-- 35.Cho biết danh sách các sinh viên rớt trên 2 môn ở lần thi 1.
select s.MaSV, s.HoSV, s.TenSV from DMSV s inner join KetQua kq on s.MaSV = kq.MaSV 
join DMMH m on kq.MaMH = m.MaMH WHERE kq.LanThi = 1 AND kq.Diem < 5 GROUP BY s.MaSV HAVING COUNT(*) >= 2;
-- 36.Cho biết danh sách những khoa có nhiều hơn 2 sinh viên nam
select k.TenKhoa, COUNT(s.Phai = 'Nam') as TongSV from DMKhoa k join DMSV s on k.MaKhoa = s.MaKhoa where s.phai = "Nam" > 2 
group by k.TenKhoa;
-- 37.Cho biết những khoa có 2 sinh viên đạt học bổng từ 200.000 đến 300.000. 
select k.TenKhoa , s.TenSV, s.HocBong, count(*) as TongSV from DMSV s join DMKhoa k on s.MaKhoa = k.MaKhoa group by s.MaSV 
having (select s.HocBong from DMSV s where s.HocBong>200000 and s.HocBong<300000);
-- 38. Cho biết số lượng sinh viên đậu và số lượng sinh viên rớt của từng môn
-- trong lần thi 1.
select kq.MaMH, SUM(Diem >5) as SoLuongSVDau, SUM(Diem < 5) as SoLuongSVRot
from KetQua kq join DMMH m on kq.MaMH = m.MaMH
where kq.LanThi = 1 group by kq.MaMH;
-- 39.Cho biết sinh viên nào có học bổng cao nhất.
select TenSv, HocBong from DMSV where HocBong = (select max(HocBong) from DMSV);
-- 40.Cho biết sinh viên nào có điểm thi lần 1 môn cơ sở dữ liệu cao nhất.
select s.TenSv, kq.Diem, m.TenMH from DMSV s join KetQua kq on s.MaSV = kq.MaSV join DMMH m on kq.MaMH = m.MaMH 
where kq.Diem = (select max(kq.Diem) from KetQua kq join DMMH m on kq.MaMH = m.MaMH where m.MaMH = "01" ) and kq.lanthi = 1; 
-- 41.Cho biết sinh viên khoa anh văn có tuổi lớn nhất.
select TenSV, floor(datediff(curdate(), NgaySinh)/365) as Tuoi from DMSV
where MaKhoa = 'AV' order by NgaySinh asc limit 1;
-- 42.Cho biết khoa nào có đông sinh viên nhất.
select MaKhoa, COUNT(*) as TongSV from DMSV
group by MaKhoa order by TongSV desc limit 1;
-- 43.Cho biết khoa nào có đông nữ nhất
select k.TenKhoa, COUNT(*) as SoLuongNu from DMSV s inner join DMKhoa k ON s.MaKhoa = k.MaKhoa
where s.Phai = 'Nữ' group by k.TenKhoa order by SoLuongNu desc limit 1;
-- 44.Cho biết môn nào có nhiều sinh viên rớt lần 1 nhiều nhất
select m.TenMH, COUNT(*) as SoLuong from KetQua kq inner join DMMH m on kq.MaMH = m.MaMH
where kq.LanThi = 1 and kq.Diem < 5 group by m.TenMH order by SoLuong desc limit 1;
-- 45.Cho biết sinh viên không học khoa anh văn có điểm thi môn phạm lớn hơn
-- điểm thi văncủa sinh viên học khoa anh văn.

-- 46.Cho biết sinh viên có nơi sinh cùng với Hải.
select NoiSinh from DMSV where TenSV like "%Hải%";
select TenSV, NoiSinh from DMSV where NoiSinh like "Hà Nội";
-- 47.Cho biết những sinh viên nào có học bổng lớn hơn tất cả học bổng của
-- sinh viên thuộc khoa anh văn
select * from DMSV where HocBong > (select MAX(HocBong) from DMSV where MaKhoa = 'AV');
-- 48.Cho biết những sinh viên có học bổng lớn hơn bất kỳ học bổng của sinh viên
-- học khóa anh văn
select * from DMSV where HocBong > (select MAX(HocBong) from DMSV where MaKhoa = 'AV');
-- 49. cho biết sinh viên nào có điểm thi môn cơ sở dữ liệu lần 2 lớn hơn tất cả điểm
-- thi lần 1 môn cơ sở dữ liệu của những sinh viên khác.

-- 50.Cho biết những sinh viên đạt điểm cao nhất trong từng môn
select s.HoSV, s.TenSV, MAX(kq.Diem) as DiemCaoNhat
from DMSV s join KetQua kq on s.MaSV = kq.MaSV join DMMH m on m.MaMH = kq.MaMH group by s.MaSV;
-- 51.Cho biết những khoa không có sinh viên học
select k.TenKhoa from DMKhoa k where k.TenKhoa 
not in (select k.TenKhoa from DMKhoa k join DMSV s on s.MaKhoa = k.MaKhoa);
-- 52.Cho biết sinh viên chưa thi môn cơ sở dữ liệu.
select s.TenSV from DMSV s where s.TenSV not in 
(select s.TenSV from DMSV s join KetQua kq on s.MaSV = kq.MaSV where kq.MaMH like "01");
-- 53.Cho biết sinh viên nào không thi lần 1 mà có dự thi lần 2.
select s.TenSV,kq.LanThi from DMSV s join KetQua kq on s.MaSV = kq.MaSV 
where s.TenSV not in (select s.TenSV,kq.LanThi from DMSV s join KetQua kq on s.MaSV = kq.MaSV where kq.LanThi = 1) group by kq.MaSV; 

