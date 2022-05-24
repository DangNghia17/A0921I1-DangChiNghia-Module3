import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", urlPatterns = "/customer_page")
public class CustomerServlet extends HttpServlet {

    //tao database ảo
    private static List<Customer> customerList = new ArrayList<>();
    static {
        customerList.add(new Customer( "Hoan", "1/2/2002", "Da Nang", true));
        customerList.add(new Customer( "Hung", "1/2/2002", "Da Nang", true));
        customerList.add(new Customer( "Trung", "1/2/2002", "Da Nang", false));
        customerList.add(new Customer( "Toan", "1/2/2002", "Da Nang", false));
        customerList.add(new Customer( "Thang", "1/2/2002", "Da Nang", true));
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/customer_page.jsp");
        request.setAttribute("customerList",customerList);
        dispatcher.forward(request,response);
    }
}
