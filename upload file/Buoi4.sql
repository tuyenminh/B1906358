create table sinhvien (
    stt number(10,1),
    mssv varchar(15),
    hoten varchar(50),
    ghichu varchar(50)
);
INSERT INTO sinhvien VALUES('1','B2110834','Do Minh Khang','');
INSERT INTO sinhvien VALUES('2','B2110908', 'Tran Tue Man','');
INSERT INTO sinhvien VALUES('3','B2102035', 'Le Huynh Han','');
INSERT INTO sinhvien VALUES('4','B2109184', 'Nguyen Hoang Huy','');
INSERT INTO sinhvien VALUES('5','B2113068', 'Tran Chanh Nam','');
INSERT INTO sinhvien VALUES('6','B2102257', 'Nguyen Tri Tai','');
INSERT INTO sinhvien VALUES('7','B2112043', 'Tran Nhut Nhu Quynh','');
INSERT INTO sinhvien VALUES('8','B2103387', 'Huynh Kim Ngoc','');
INSERT INTO sinhvien VALUES('9','B2102009', 'Nguyen Ngoc Yen Vy','');
INSERT INTO sinhvien VALUES('10','B2112078', 'Bui Khanh Tam','');


create table nganhtt (
    mssv varchar(15),
    nganhtt varchar(50),
    FOREIGN KEY (mssv) REFERENCES sinhvien(mssv)
);
INSERT INTO nganhtt VALUES('B2110834','Cong nghe ky thuat hoa hoc (CTCLC)');
INSERT INTO nganhtt VALUES('B2110908', 'Cong nghe ky thuat hoa hoc (CTCLC)');
INSERT INTO nganhtt VALUES('B2102035', 'Cong nghe sinh hoc (CTTT)');
INSERT INTO nganhtt VALUES('B2109184', 'Cong nghe sinh hoc (CTTT)');
INSERT INTO nganhtt VALUES('B2113068', 'Cong nghe sinh hoc (CTTT)');
INSERT INTO nganhtt VALUES('B2102257', 'Cong nghe sinh hoc (CTTT)');
INSERT INTO nganhtt VALUES('B2112043', 'Cong nghe sinh hoc (CTTT)');
INSERT INTO nganhtt VALUES('B2103387', 'Cong nghe sinh hoc (CTTT)');
INSERT INTO nganhtt VALUES('B2102009', 'Cong nghe sinh hoc (CTTT)');
INSERT INTO nganhtt VALUES('B2112078', 'Cong nghe sinh hoc (CTTT)');

create table loaidiemxt (
    mssv varchar(15),
    loaidiemxt varchar(50),
    FOREIGN KEY (mssv) REFERENCES sinhvien(mssv)
);

INSERT INTO loaidiemxt VALUES('B2110834','Diem thi THPT');
INSERT INTO loaidiemxt VALUES('B2110908', 'Diem thi THPT');
INSERT INTO loaidiemxt VALUES('B2102035', 'Diem hoc ba');
INSERT INTO loaidiemxt VALUES('B2109184', 'Diem thi THPT');
INSERT INTO loaidiemxt VALUES('B2113068', 'Diem thi THPT');
INSERT INTO loaidiemxt VALUES('B2102257', 'Diem thi THPT');
INSERT INTO loaidiemxt VALUES('B2112043', 'Diem hoc ba');
INSERT INTO loaidiemxt VALUES('B2103387', 'Diem thi THPT');
INSERT INTO loaidiemxt VALUES('B2102009', 'Diem thi THPT');
INSERT INTO loaidiemxt VALUES('B2112078', 'Diem thi THPT');

create table diemxt (
    mssv varchar(15),
    diemxt float,
    FOREIGN KEY (mssv) REFERENCES sinhvien(mssv)
);

INSERT INTO diemxt VALUES('B2110834','22,45');
INSERT INTO diemxt VALUES('B2110908', '21,60');
INSERT INTO diemxt VALUES('B2102035', '26,79');
INSERT INTO diemxt VALUES('B2109184', '25,10');
INSERT INTO diemxt VALUES('B2113068', '24,55');
INSERT INTO diemxt VALUES('B2102257', '24,40');
INSERT INTO diemxt VALUES('B2112043', '23,57');
INSERT INTO diemxt VALUES('B2103387', '22,15');
INSERT INTO diemxt VALUES('B2102009', '21,40');
INSERT INTO diemxt VALUES('B2112078', '20,75');
