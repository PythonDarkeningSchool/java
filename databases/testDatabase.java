import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class testDatabase {
    public static void main(String[] args){
        String user = "generic", password = "generic";
        String driver = "org.hsqldb.jdbcDriver";
        String url = "jdbc:hsqldb:hsql://localhost/Business";

        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try{
            // Start the driver
            Class.forName(driver);
            connection = DriverManager.getConnection(url, user, password);

            String sqlQuery = "SELECT * FROM Number";
            preparedStatement = connection.prepareStatement(sqlQuery);
            resultSet = preparedStatement.executeQuery();

            while(resultSet.next()){
                System.out.println(resultSet.getInt("number"));
                System.out.println(resultSet.getString("name"));
                System.out.println(resultSet.getInt("departmentNumber"));
                System.out.println(resultSet.getDate("hireDate"));
            }
        }
        catch (Exception e){
            e.printStackTrace();
            throw new RuntimeException(e);
        }

    }
}
