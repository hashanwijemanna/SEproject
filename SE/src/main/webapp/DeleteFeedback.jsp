<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*,javax.servlet.*"%>

<%
    String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    String DB_URL = "jdbc:mysql://sql12.freemysqlhosting.net:3306/sql12673880";
    String USER = "sql12673880";
    String PASS = "Z5fcYdIa6J";

    Connection conn = null;
    Statement stmt = null;

    try {
        Class.forName(JDBC_DRIVER);

        conn = DriverManager.getConnection(DB_URL, USER, PASS);

        String Id = request.getParameter("Code");
        String sql = "DELETE FROM feedbacks WHERE feedback_id = ?";
        try (PreparedStatement preparedStatement = conn.prepareStatement(sql)) {
            preparedStatement.setString(1, Id);
            preparedStatement.executeUpdate();
        }
    } catch (SQLException se) {
        se.printStackTrace();
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        try {
            if (stmt != null) stmt.close();
        } catch (SQLException se) {
            se.printStackTrace();
        }
        try {
            if (conn != null) conn.close();
        } catch (SQLException se) {
            se.printStackTrace();
        }
    }

    response.sendRedirect("Admin-Feedback.jsp");
%>
