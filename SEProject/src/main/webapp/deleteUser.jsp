<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>

<%
    String userId = request.getParameter("userId");

    if (userId != null && !userId.isEmpty()) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://sql12.freesqldatabase.com:3306/sql12668368", "sql12668368", "6QTvbJSfdb");

            String sql = "DELETE FROM users WHERE user_id = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, userId);

            int rowsAffected = stmt.executeUpdate();

            stmt.close();
            conn.close();

            if (rowsAffected > 0) {
                out.println("User with ID " + userId + " has been deleted successfully.");
                response.sendRedirect("userdb.jsp");
            } else {
                out.println("Failed to delete user with ID " + userId + ".");
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            out.println("Error: " + e.getMessage());
        }
    } else {
        out.println("Invalid user ID.");
    }
%>