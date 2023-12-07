import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.io.*;
import java.util.*;
import java.sql.SQLException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Check if the provided username and password are equal to "admin"
        if ("admin@gmail.com".equals(email) && "admin".equals(password)) {
            // Successful login, redirect to the home-admin.jsp
            response.sendRedirect("home-admin.jsp");
        } else {

            String jdbcUrl = "jdbc:mysql://sql12.freesqldatabase.com:3306/sql12668368";
            String dbUsername = "sql12668368";
            String dbPassword = "6QTvbJSfdb";

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection connection = DriverManager.getConnection(jdbcUrl, dbUsername, dbPassword);

                String sql = "SELECT * FROM users WHERE email = ? AND password = ?";
                try (PreparedStatement statement = connection.prepareStatement(sql)) {
                    statement.setString(1, email);
                    statement.setString(2, password);

                    ResultSet resultSet = statement.executeQuery();

                    if (resultSet.next()) {
                        response.sendRedirect("home-user.jsp");
                    } else {
                        response.sendRedirect("error.jsp");
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }

        }
    }
}
