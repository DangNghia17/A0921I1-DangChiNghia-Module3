package controller;

import model.bean.Student;
import model.service.IStudentService;
import model.service.Impl.StudentService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "StudentServlet", urlPatterns = "/student")
public class StudentServlet extends HttpServlet {
    IStudentService studentService = new StudentService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                save(request, response);
                break;
             case "edit":
                edit(request, response);
                break;
             case "delete":
                delete(request, response);
                break;
        }

    }

    private void delete(HttpServletRequest request, HttpServletResponse response) {
    }

    private void edit(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
        String birthday = request.getParameter("birthday");
        int point = Integer.parseInt(request.getParameter("point"));
        String account = request.getParameter("account");
        int class_id = Integer.parseInt(request.getParameter("class_id"));
        String email = request.getParameter("email");
        Student student = new Student(name, gender, birthday, point, account, class_id, email);
        studentService.edit(id ,student);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/student/edit.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                createStudentForm(request, response);
                break;
            case "edit":
                editStudentForm(request, response);
                break;
            case "delete":
                deleteStudentForm(request, response);
                break;
            default:
                listStudent(request, response);
                break;

        }


    }

    private void deleteStudentForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("student/delete.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void editStudentForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/student/edit.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }


    }

    private void save(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
        String birthday = request.getParameter("birthday");
        int point = Integer.parseInt(request.getParameter("point"));
        String account = request.getParameter("account");
        int class_id = Integer.parseInt(request.getParameter("class_id"));
        String email = request.getParameter("email");
        Student student = new Student(name, gender, birthday, point, account, class_id, email);
        if (studentService.save(student) != true) {
            request.setAttribute("mess", "Them moi thất bại");
        } else {
            request.setAttribute("mess", "Them moi thanh cong");

        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("/student/create.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void listStudent(HttpServletRequest request, HttpServletResponse response) {
        List<Student> studentList = studentService.getAllStudent();
        request.setAttribute("Studentlist", studentList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/student/list.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void createStudentForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/student/create.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
