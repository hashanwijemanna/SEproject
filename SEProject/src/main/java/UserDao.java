import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDao {
    private static final String JDBC_URL = "jdbc:mysql://sql12.freesqldatabase.com:3306/sql12668368";
    private static final String JDBC_USER = "sql12668368";
    private static final String JDBC_PASSWORD = "6QTvbJSfdb";

    public List<User> getAllUsers() {
        List<User> userList = new ArrayList<>();

        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
            String query = "SELECT * FROM users";
            try (PreparedStatement preparedStatement = connection.prepareStatement(query);
                 ResultSet resultSet = preparedStatement.executeQuery()) {
                while (resultSet.next()) {
                    User user = new User();
                    user.setId(resultSet.getInt("user_id"));
                    user.setFName(resultSet.getString("full_name"));
                    user.setNIC(resultSet.getString("nic"));
                    user.setEmail(resultSet.getString("email"));
                    user.setPhone(resultSet.getString("phone_number"));
                    user.setPass(resultSet.getString("password"));
                    // Add other columns as needed
                    userList.add(user);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return userList;
    }
}
