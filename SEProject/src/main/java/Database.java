import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Database {
    public static void main(String[] args) {
        String jdbcUrl = "jdbc:mysql://sql12.freesqldatabase.com:3306/sql12668368";
        String username = "sql12668368";
        String password = "6QTvbJSfdb";

        try {
            Connection connection = DriverManager.getConnection(jdbcUrl, username, password);
            // Use the connection...
            System.out.println("Connected to the database!");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
