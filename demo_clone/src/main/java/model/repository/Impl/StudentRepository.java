package model.repository.Impl;

import model.bean.Student;
import model.repository.BaseRepository;
import model.repository.IStudentRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class StudentRepository implements IStudentRepository {
    private final String FIND_ALL = "SELECT * FROM student";
    private final String ADD_NEW = "insert into student(`name`, gender, birthday, point, account, class_id, email) values (?,?,?,?,?,?,?)";
    private final String EDIT = "UPDATE `student` set `name` = ?, gender= ? ,birthday= ?,`point`= ?,`account`= ?,class_id= ?,email= ? WHERE id = ?;";

    @Override
    public List<Student> getAllStudent() {
        List<Student> studentList = new ArrayList<>();
        Connection connection = BaseRepository.getConnection();
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = connection.prepareStatement(FIND_ALL);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                Boolean gender = resultSet.getBoolean("gender");
                String birthday = resultSet.getString("birthday");
                int point = resultSet.getInt("point");
                String account = resultSet.getString("account");
                int class_id = resultSet.getInt("class_id");
                String email = resultSet.getString("email");
                Student student = new Student(id, name, gender, birthday, point, account, class_id, email);
                studentList.add(student);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return studentList;
    }

    @Override
    public Student findById(int id) {
        return null;
    }

    @Override
    public Boolean save(Student student) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(ADD_NEW);
            preparedStatement.setString(1, student.getName());
            preparedStatement.setBoolean(2, student.isGender());
            preparedStatement.setString(3, student.getBirthday());
            preparedStatement.setInt(4, student.getPoint());
            preparedStatement.setString(5, student.getAccount());
            preparedStatement.setInt(6, student.getClass_id());
            preparedStatement.setString(7, student.getEmail());
            int check = preparedStatement.executeUpdate();
            if (check != 0) {
                return true;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public void edit(int id, Student student) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = null;
            preparedStatement = connection.prepareStatement(EDIT);
            preparedStatement.setString(1, student.getName());
            preparedStatement.setBoolean(2, student.isGender());
            preparedStatement.setString(3, student.getBirthday());
            preparedStatement.setInt(4, student.getPoint());
            preparedStatement.setString(5, student.getAccount());
            preparedStatement.setInt(6, student.getClass_id());
            preparedStatement.setString(7, student.getEmail());
            preparedStatement.setInt(8, student.getId());
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }


    @Override
    public void delete(Student student) {

    }
}
