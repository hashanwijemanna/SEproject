<%@ page import="java.sql.*" %>
<%@ page import="java.io.*,java.util.*" %>

<%
    String url = "jdbc:mysql://sql12.freesqldatabase.com:3306/sql12668368";
    String username = "sql12668368";
    String pass = "6QTvbJSfdb";

    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");

        conn = DriverManager.getConnection(url, username, pass);

        String sql = "INSERT INTO users (full_name, nic, email, phone_number, password) VALUES (?, ?, ?, ?, ?)";
        pstmt = conn.prepareStatement(sql);

        String fullname = request.getParameter("fullname");
        String nic = request.getParameter("nic");
        String email = request.getParameter("email");
        String phonenumber = request.getParameter("phonenumber");
        String password = request.getParameter("password");

        pstmt.setString(1, fullname);
        pstmt.setString(2, nic);
        pstmt.setString(3, email);
        pstmt.setString(4, phonenumber);
        pstmt.setString(5, password);

        int rowsAffected = pstmt.executeUpdate();

        if (rowsAffected > 0) {
            out.println("User registered successfully!");
            response.sendRedirect("login_ui_Xky.jsp");
            return;
        } else {
            out.println("Failed to register user. Please try again.");
        }
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        // Close resources
        try {
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
