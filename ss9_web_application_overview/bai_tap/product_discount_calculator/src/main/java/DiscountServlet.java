import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DiscountServlet", urlPatterns = "/discount")
public class DiscountServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float list_price = Float.parseFloat(request.getParameter("price"));
        float discount_percent = Float.parseFloat(request.getParameter("discount"));
        float discount_amount = list_price * discount_percent * 0.01f;


        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<h1>list price: " + list_price + "</h1>");
        writer.println("<h1>Discount percent: " + discount_percent + "% </h1>");
        writer.println("<h1>Discount Amount:: " + discount_amount + "</h1>");
        writer.println("</html>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
