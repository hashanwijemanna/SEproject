<%@ page import="java.sql.*" %>
<%@ page import="java.io.*,java.util.*" %>

<%
    // Database connection parameters
    String url = "jdbc:mysql://sql12.freesqldatabase.com:3306/sql12668368";
    String username = "sql12668368";
    String password = "6QTvbJSfdb";

    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        // Load the JDBC driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Establish the connection
        conn = DriverManager.getConnection(url, username, password);

        // Prepare the SQL query for insertion
        String sql = "INSERT INTO users (full_name, nic, email, phone_number, password) VALUES (?, ?, ?, ?, ?)";
        pstmt = conn.prepareStatement(sql);

        // Get form data
        String fullname = request.getParameter("fullname");
        String nic = request.getParameter("nic");
        String email = request.getParameter("email");
        String phonenumber = request.getParameter("phonenumber");

        // Set parameters for the SQL query
        pstmt.setString(1, fullname);
        pstmt.setString(2, nic);
        pstmt.setString(3, email);
        pstmt.setString(4, phonenumber);
        pstmt.setString(5, password);

        // Execute the query
        int rowsAffected = pstmt.executeUpdate();

        if (rowsAffected > 0) {
            out.println("User registered successfully!");
            response.sendRedirect("login_ui.jsp");
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
