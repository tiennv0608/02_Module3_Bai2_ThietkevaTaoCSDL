CREATE database QLdiemthi;
use qldiemthi;
create table HocSinh (
	MaHS Varchar(20) primary key,
	TenHS varchar(50),
	NgaySinh datetime,
	Lop Varchar(20),
	GT varchar(20)
);
create table MonHoc(
	MaHH varchar(20) primary key,
	TenHH varchar(50)
);
create table BangDiem(
	MaHS varchar(20),
	MaHH varchar(20),
	DiemThi int,
	NgayKT datetime,
	primary key (MaHS, MaHH),
	foreign key (MaHS) references HocSinh(MaHS),
	foreign key (MaHH) references MonHoc(MaHH)
);
create table GiaoVien(
	MaGV varchar(20) primary key,
	TenGV varchar(20),
	SDT varchar(10)
);
alter table MonHoc add MaGV varchar(20);
alter table MonHoc add constraint FK_MaGV foreign key (MaGV) references GiaoVien(MaGV);
