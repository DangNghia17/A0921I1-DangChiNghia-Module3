package controller;

import model.SanPham;
import service.Impl.SanPhamServiceImpl;
import service.SanPhamService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet(name = "Servlet", urlPatterns = "/sanpham")
public class Servlet extends HttpServlet {
    private SanPhamService sanPhamService = new SanPhamServiceImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                save(request, response);
                break;
            case "edit":
                edit(request, response);
                break;
            case "delete":
                break;
            case "search":
                break;
            default:
                break;
        }
    }

    private void edit(HttpServletRequest request, HttpServletResponse response) {
        String tenSanPham = request.getParameter("tenSanPham");
        String gia = request.getParameter("gia");
        int soLuong = Integer.parseInt(request.getParameter("soLuong"));
        String mauSac = request.getParameter("mauSac");
        String moTa = request.getParameter("moTa");
        String danhMuc = request.getParameter("danhMuc");
        SanPham sanPham = new SanPham( tenSanPham, gia, soLuong, mauSac, moTa, danhMuc);
        boolean flag =sanPhamService.edit(sanPham);
        if (flag){
            request.setAttribute("mess","chỉnh sửa thanh cong");
        }else {
            request.setAttribute("mess","chỉnh sửa that bai");
        }

        try {
            request.getRequestDispatcher("sanpham/edit.jsp").forward(request, response);
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
            case "create":
                showCreateForm(request, response);
                break;
            case "edit":
                showEditForm(request,response);
                break;
            case "delete":
                break;
            case "search":
//                search(request,response);
                break;
            default:
                showSanPhamList(request, response);
                break;
        }
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) {

        List<SanPham> sanPhamList = sanPhamService.getAll();
        request.setAttribute("sanPhamList", sanPhamList);
        try {
            request.getRequestDispatcher("sanpham/edit.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showCreateForm(HttpServletRequest request, HttpServletResponse response) {
        List<SanPham> sanPhamList = sanPhamService.getAll();
        request.setAttribute("sanPhamList", sanPhamList);
        try {
            request.getRequestDispatcher("sanpham/create.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showSanPhamList(HttpServletRequest request, HttpServletResponse response) {
        List<SanPham> sanPhamList = sanPhamService.getAll();
        request.setAttribute("sanPhamList", sanPhamList);
        try {
            RequestDispatcher dispatcher = request.getRequestDispatcher("sanpham/list.jsp");
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void save(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String tenSanPham = request.getParameter("tenSanPham");
        String gia = request.getParameter("gia");
        int soLuong = Integer.parseInt(request.getParameter("soLuong"));
        String mauSac = request.getParameter("mauSac");
        String moTa = request.getParameter("moTa");
        String danhMuc = request.getParameter("danhMuc");
        SanPham sanPham = new SanPham(id, tenSanPham, gia, soLuong, mauSac, moTa, danhMuc);
        boolean flag =sanPhamService.addNew(sanPham);
        if (flag){
            request.setAttribute("mess","Them moi thanh cong");
        }else {
            request.setAttribute("mess","Them moi that bai");
        }

        try {
            request.getRequestDispatcher("sanpham/create.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
