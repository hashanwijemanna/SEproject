<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Database Login Page</title>
</head>
<body>

<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");

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
%>

</body>
</html>
