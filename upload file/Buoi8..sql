-- Vi du 1:
-- Ham tra ve nam cua 1 ngay truyen vao tu tham so
CREATE OR REPLACE FUNCTION GETYEAR(pDate IN Date)
    RETURN NUMBER IS
BEGIN
    RETURN EXTRACT(year from pDate);
    EXCEPTION
    WHEN OTHERS THEN RETURN 0;
END;
select * from emp;
--goi ham GETYEAR
SELECT hiredate, GETYEAR (hiredate) as HireYear

FROM emp;
--cau 1
--tao thu tuc xoa nhan vien ra khoi danh sach voi tham so truyen vao la ma nhan vien
CREATE OR REPLACE PROCEDURE Del_Emp (p_EmpNo NUMBER) IS
BEGIN
    DELETE FROM emp WHERE empno = p_EmpNo;
    COMMIT;
END;
--tim nhn vien co ma 7654 co trong bang khong
SELECT * FROM Emp WHERE empno = 7654;
-- thuc thi thu tuc nay
EXECUTE Del_Emp(7654);
-- tim lai nhan vien co ma 7654 co trong bang khong
SELECT * FROM Emp WHERE empno = 7654;
--ket qua: khong con

-- cau 2
--viet ham tinh tong tien luong cua 1 phong ban
CREATE OR REPLACE FUNCTION get_dept_salary(dno number) RETURN NUMBER
IS
    all_sal NUMBER;
BEGIN
    all_sal:= 0;
    FOR emp_sal IN
        (SELECT SAL FROM EMP WHERE DEPTNO = dno
        AND SAL IS NOT NULL)
    LOOP
        all_sal:= all_sal + emp_sal.sal;
    END LOOP;
    RETURN all_sal;
END get_dept_salary;
-- goi ham get_dept_salary voi ma phong ban la 30
SELECT get_dept_salary(30) AS Tsal FROM DUAL;
-- goi ham get_dept_salary voi ma phong ban la 30 vaf truyen vao 1 bien
DECLARE
result NUMBER;
BEGIN
    result := get_dept_salary(20);
    dbms_output.put_line(result);
END;
-- CAU 4: thu tuc voi tham so vao va ra
--tao bang jobs
CREATE TABLE jobs (
    job_id int,
    job_name varchar(50),
    min_salary int,
    max_salary int
    );
insert into jobs values ('3572', 'Ke toan', '1000', '3000');
insert into jobs values ('3428', 'Ban hang', '500', '2000');
insert into jobs values ('2429', 'Kiem tra hang', '300', '2000');
insert into jobs values ('1297', 'Giao hang', '700', '2500');
insert into jobs values ('9836', 'Tu van khach hang', '1000', '3500');
Create or replace procedure MucLuong (p_jobid jobs.job_id%TYPE,
    min_lg OUT jobs.min_salary%type,
    max_lg OUT jobs.max_salary%type) IS
begin
    select min_salary, max_salary into min_lg, max_lg
    from jobs
    where JOB_ID = p_jobid;
    exception
    when no_data_found then
        dbms_output.put_line ('Ma cong viec ' || p_jobid || 'khong tim thay');
    when others then
    dbms_output.put_line ('Khong biet loi gi');
end;
--thu goi thu tuc
set serveroutput on;
declare
min1 jobs.min_salary%type;
max1 jobs.max_salary%type;
begin
    MucLuong('&Nhap_ma_cong_viec',min1, max1);
    dbms_output.put_line ('Min = '|| to_char(min1) || ' Max = '
    || to_char(max1));
end;