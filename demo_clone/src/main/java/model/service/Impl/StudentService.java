package model.service.Impl;

import model.bean.Student;
import model.repository.IStudentRepository;
import model.repository.Impl.StudentRepository;
import model.service.IStudentService;

import java.util.List;

public class StudentService implements IStudentService {
    IStudentRepository studentRepository = new StudentRepository();

    @Override
    public List<Student> getAllStudent() {
        return studentRepository.getAllStudent();
    }

    @Override
    public Student findById(int id) {
        return null;
    }

    @Override
    public Boolean save(Student student) {
        return studentRepository.save(student);
    }

    @Override
    public void edit(int id, Student student) {
        studentRepository.edit(id, student);
    }

    @Override
    public void delete(Student student) {
        studentRepository.delete(student);
    }
}
