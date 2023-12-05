import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Check if the provided username and password are equal to "admin"
        if ("admin".equals(username) && "admin".equals(password)) {
            // Successful login, redirect to the home-admin.jsp
            response.sendRedirect("home-admin.jsp");
        } else {
            // Failed login, redirect back to the login_ui.jsp
            response.sendRedirect("login_ui_Xky.jsp");
        }
    }
}
