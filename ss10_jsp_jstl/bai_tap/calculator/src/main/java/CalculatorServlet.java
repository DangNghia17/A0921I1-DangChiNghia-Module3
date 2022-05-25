import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CalculatorServlet", urlPatterns = "/calculate")
public class CalculatorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float firstOperator = Float.parseFloat(request.getParameter("first-operand"));
        float secondOperator = Float.parseFloat(request.getParameter("second-operand"));
        char operator = request.getParameter("operator").charAt(0);

        PrintWriter printWriter = response.getWriter();
        printWriter.println("<html>");
        printWriter.println("<h1>Result:</h1>");
        try {
            float result = Calculator.calculate(firstOperator, secondOperator, operator);
            printWriter.println( firstOperator + " " + operator +  secondOperator + " = " + result);
        } catch (Exception e) {
            System.err.println("Error:" + e.getMessage());
        }
        printWriter.println("</html>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
