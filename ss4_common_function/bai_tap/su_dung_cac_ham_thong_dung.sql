use quanlysinhvien;

-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất
select *
from `subject`
where credit = (select max(credit) from `subject`);

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
select * 
from `subject`
join mark on `subject`.subID = `mark`.subID
where mark = (select max(mark) from `mark`) ;

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần

select student.StudentName , avg(mark)    	
from student
join mark on `mark`.StudentId = student.StudentId
group by student.StudentId	
order by mark desc




