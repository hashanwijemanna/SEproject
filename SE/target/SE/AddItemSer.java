package main.webapp;
import java.sql.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/AddItemSer")
public class AddItemSer extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static final String JDBC_URL = "jdbc:mysql://sql12.freesqldatabase.com:3306/sql12669773";
    private static final String JDBC_USER = "sql12669773";
    private static final String JDBC_PASSWORD = "gdWtCjfCcI";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String img = request.getParameter("img");
        String description = request.getParameter("description");
        String price = request.getParameter("price");

        // Insert data into the database
        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
            String sql = "INSERT INTO products (name, image, description, price) VALUES (?, ?, ?, ?)";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setString(1, name);
                statement.setString(2, img);
                statement.setString(3, description);
                statement.setString(4, price);

                int rowsAffected = statement.executeUpdate();
                if (rowsAffected > 0) {
                    // Registration successful
                    response.sendRedirect("Admin-Products.jsp");
                } else {
                    // Registration failed
                    response.sendRedirect("AddProducts.jsp");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}
