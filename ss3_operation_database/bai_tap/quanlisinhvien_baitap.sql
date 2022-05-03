use quanlysinhvien;

-- Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’
select * from student
where StudentName like 'h%';

-- Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12
 select * from class
 where month(startDate) = 12; 
 
-- Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5
 select * from `subject`
 where Credit>=3 and Credit<=5;
 
-- Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2
set sql_safe_updates = 0; -- câu lệnh mở update 
update student 
set classID = 2
where studentName = 'Hung' ;
set sql_safe_updates = 1 ; -- câu lệnh đóng update 

-- Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. nếu trùng sắp theo tên tăng dần
select StudentName, SubName, Mark 
from student 
join mark on mark.studentid = student.StudentId 
join `subject` on mark.SubId = `subject`.SubId
order by mark desc , StudentName ; 