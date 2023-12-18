<%@ page import="java.sql.*" %>

<%
    String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    String DB_URL = "jdbc:mysql://sql12.freesqldatabase.com:3306/sql12669773";
    String USER = "sql12669773";
    String PASS = "gdWtCjfCcI";

    Connection conn = null;

    try {
        Class.forName(JDBC_DRIVER);
        conn = DriverManager.getConnection(DB_URL, USER, PASS);
        application.setAttribute("dbConnection", conn);
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
