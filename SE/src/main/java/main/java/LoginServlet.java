package main.java;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static final String JDBC_URL = "jdbc:mysql://sql12.freemysqlhosting.net:3306/sql12673880";
    private static final String JDBC_USER = "sql12673880";
    private static final String JDBC_PASSWORD = "Z5fcYdIa6J";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        boolean isValidUser = validateUser(email, password);

        if ("admin@gmail.com".equals(email) && "admin".equals(password)) {
            response.sendRedirect("Admin-Home.jsp");
        }else if (isValidUser) {
            response.sendRedirect("Home.jsp");
        } else {
            response.sendRedirect("error.jsp");
        }


    }

    private boolean validateUser(String email, String password) {
        boolean isValid = false;

        try {
            // Load the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish a connection
            try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {

                // Create a prepared statement to execute SQL query
                String sql = "SELECT * FROM users WHERE email = ? AND password = ?";
                try (PreparedStatement statement = connection.prepareStatement(sql)) {
                    statement.setString(1, email);
                    statement.setString(2, password);

                    // Execute the query and check if a matching user is found
                    try (ResultSet resultSet = statement.executeQuery()) {
                        if (resultSet.next()) {
                            isValid = true; // Valid user
                        }
                    }
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        return isValid;
    }
}
