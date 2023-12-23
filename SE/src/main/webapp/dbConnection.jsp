<%@ page import="java.sql.*" %>

<%
    String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    String DB_URL = "jdbc:mysql://sql12.freemysqlhosting.net:3306/sql12672409";
    String USER = "sql12672409";
    String PASS = "hqZveYqKfy";

    Connection conn = null;

    try {
        Class.forName(JDBC_DRIVER);
        conn = DriverManager.getConnection(DB_URL, USER, PASS);
        application.setAttribute("dbConnection", conn);
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
