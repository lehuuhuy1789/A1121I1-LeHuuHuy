USE quan_ly_sinh_vien;
-- Bước 1: Sử dụng câu lệnh Use QuanLySinhVien để sử dụng cơ sở dữ liệu:
SELECT * FROM student;
-- Bước 2: Sử dụng câu lệnh Select * và lấy dữ liệu học viên từ bảng 
-- Student để hiển thị danh sách tất cả các học viên như sau:
SELECT * FROM student
WHERE Status = true;
-- Bước 3: Để hiển thị danh sách học viên đang theo học cần phải sử dụng 
-- câu lệnh select ... from kèm theo where để xét điều kiện truy vấn như sau:
SELECT * FROM subject
WHERE credit < 10;
-- Bước 4: Sử dụng điều kiện where Credit < 10 và from Subject để lấy ra danh sách các 
-- môn học có thời gian học nhỏ hơn 10:
SELECT S.student_id, S.student_name, C.class_name
FROM student S join class C on S.class_id = C.class_iD;
-- Bước 5: Sử dụng câu lệnh Join và where để hiển thị danh sách học viên lớp A1
SELECT S.student_id, S.student_name, C.class_name
FROM student S join class C on S.class_id = C.class_id
WHERE C.class_name = 'A1';
-- Bước 6: Hiển thị điểm môn CF của các học viên 
-- Hiển thị tất cả các điểm đang có của học viên
SELECT S.student_id, S.student_name, Sub.sub_name, M.mark
FROM student S join mark M on S.student_id = M.student_id join subject Sub on M.sub_id = Sub.sub_id;
-- Sử dụng câu lệnh Where để hiển thị điểm môn CF của các học viên
SELECT S.student_id, S.student_name, Sub.sub_name, M.mark
FROM student S join mark M on S.student_id = M.student_id join subject Sub on M.sub_id = Sub.sub_id
WHERE Sub.sub_name = 'CF';