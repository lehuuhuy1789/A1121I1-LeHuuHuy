use quan_ly_sinh_vien;
-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
-- cach 1:
select * from subject 
order by credit desc limit 1;

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
-- cach 1:
select * from subject 
inner join mark on mark.sub_id = subject.sub_id 
order by mark desc limit 1;

-- cach 2:
select subject.sub_id, subject.sub_name, subject.status, max(mark) from mark 
inner join subject on mark.sub_id = subject.sub_id 
group by subject.sub_id;


-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
select student.student_id, student.student_name, student.address, student.phone, avg(mark) from student 
inner join mark on student.student_id = mark.student_id 
group by student.student_id 
order by avg(mark) desc;

