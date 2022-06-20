package model.service;

import model.bean.Student;

import java.util.List;

public interface IStudentService {
    List<Student> getAllStudent();
    Student findById(int id );
    Boolean save(Student student);
    void edit(int id ,Student student);
    void delete(Student student);
}
