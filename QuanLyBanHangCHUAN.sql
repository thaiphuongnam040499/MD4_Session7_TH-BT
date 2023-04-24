-- Quan Ly Ban Hang
create database QuanLyBanHangChuan;
use QuanLyBanHangChuan;

create table KhachHang(
MaKH varchar(4) primary key,
TenKH varchar(50),
DiaChi varchar(50),
NgaySinh datetime,
SĐT varchar(15) unique
);

create table NhanVien(
 MaNV varchar(4) primary key,
 HoTen varchar(30),
 GioiTinh bit,
 DiaChi varchar(50),
 NgaySinh datetime,
 DienThoai varchar(20),
 Email text,
 NoiSinh varchar(20),
 NgayVaoLam datetime,
 MaNQL varchar(4)
 );

create table NhaCungCap(
MaNCC varchar(5) primary key,
TenNCC varchar(50) not null,
DiaChi varchar(50) not null,
DienThoai varchar(50) not null,
Email varchar(30),
Website varchar(30)
);

create table LoaiSanPham(
MaLoaiSP varchar(4) primary key,
TenLoaiSP varchar(30),
GhiChu varchar(100)
);

create table SanPham(
MaSP varchar(4) primary key,
MaLoaiSP varchar(4),
TenSP varchar(50),
Donvitinh varchar(10),
GhiChu varchar(100)
);

alter table SanPham 
add constraint fk_MaLoaiSP foreign key (MaLoaiSP) references LoaiSanPham(MaLoaiSP);

create table PhieuNhap(
SoPN varchar(5) primary key,
MaNV varchar(4),
foreign key (MaNV) references NhanVien(MaNV),
MaNCC varchar(5),
foreign key (MaNCC) references NhaCungCap(MaNCC),
NgayNhap datetime,
GhiChu varchar(100)
);

create table CTPhieuNhap(
MaSp varchar(4),
foreign key (MaSP) references SanPham(MaSP),
SoPN varchar(5),
foreign key (SoPN) references PhieuNhap(SoPN),
SoLuong smallint default 0,
GiaNhap real check( GiaNhap >= 0 )
);

create table PhieuXuat(
SoPX varchar(5) primary key,
MaNV varchar(4),
foreign key (MaNV) references NhanVien(MaNV),
MaKH varchar(4),
foreign key (MaKH) references KhachHang(MaKh),
NgayBan datetime,
GhiChu text
);

create table CTPhieuXuat(
SoPX varchar(5),
foreign key (SoPX) references PhieuXuat(SoPX),
MaSP varchar(4),
foreign key (MaSP) references SanPham(MaSP),
SoLuong smallint check(SoLuong > 0),
GiaBan real check(GiaBan >0)
);

insert into KhachHang values
("KH01","Nhân Tic","Tây Hồ","1998-12-12","0987654322"),
("KH02","Hiếu Ngốc","Thái Bình","1995-12-12","0987654321");

update KhachHang 
set SĐT = "0987654323" where MaKH = "KH02";

select * from KhachHang;

insert into NhanVien values 
("NV01","Nguyễn Trọng Nhân",1,"Tây Hồ","1998-12-12","0987654322","nhan@gmail.com","Ha Noi","2023-08-19","NQL1"),
("NV02","Tô Trần Hiếu",0,"Thái Bình","1995-09-12","0987654321","hieu@gmail.com","Ha Noi","2023-08-31","NQL1");

update NhanVien
set DiaChi = "TB" where MaNV = "NV02";
select * from NhanVien;


insert into NhaCungCap values
("NCC1","SUNHOUSE","HA NOI","09876555","sunhouse@gmail.com","sunhouse.com.vn"),
("NCC2","SAMSUNG","HA NOI","09876555","samsung@gmail.com","samsung.com.vn");

insert into LoaiSanPham values
("0001","Đồ Gia Dụng","hàng tốt"),
("0002","Đồ Nội Thất","hàng tốt");

insert into SanPham values
("SP01","0001","Máy giặt","VND","tốt"),
("SP02","0002","Quạt","VND","tốt"),
("SP03","0003","Đèn","VND","tốt"),
("SP04","0004","Lò vi sóng","VND","tốt"),
("SP05","0005","Tủ lạnh","VND","tốt");

insert into PhieuNhap values
("PN03","NV01","NCC1",concat("2023-",month(current_date()),"-01") ,18),
("PN04","NV02","NCC2",concat("2023-",month(current_date()),"-02"),30);

select * from PhieuNhap;

insert into PhieuXuat values
("PX01", "NV01", "KH01", current_date(),"đã xuất"),
("PX02", "NV01", "KH01", current_date(),"đã xuất");


 