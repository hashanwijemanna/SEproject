package main.java;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Database {

    public static void main(String[] args) {
        // Database URL, username, and password
        String url = "jdbc:mysql://sql12.freemysqlhosting.net:3306/sql12673880";
        String username = "sql12673880";
        String password = "Z5fcYdIa6J";

        // Load the JDBC driver
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.err.println("JDBC Driver not found");
            e.printStackTrace();
            return;
        }

        // Establish the database connection
        try (Connection connection = DriverManager.getConnection(url, username, password)) {
            System.out.println("Connected to the database!");

            // You can perform database operations here

        } catch (SQLException e) {
            System.err.println("Error connecting to the database");
            e.printStackTrace();
        }
    }
}
