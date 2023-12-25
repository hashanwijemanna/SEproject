<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*,javax.servlet.*"%>

<%
    String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    String DB_URL = "jdbc:mysql://sql12.freemysqlhosting.net:3306/sql12672409";

    String USER = "sql12672409";
    String PASS = "hqZveYqKfy";

    Connection conn = null;
    Statement stmt = null;

    try {
        Class.forName(JDBC_DRIVER);

        conn = DriverManager.getConnection(DB_URL, USER, PASS);

        String userId = request.getParameter("userId");
        String sql = "DELETE FROM users WHERE user_id = ?";
        try (PreparedStatement preparedStatement = conn.prepareStatement(sql)) {
            preparedStatement.setString(1, userId);
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

    response.sendRedirect("Users.jsp");
%>
