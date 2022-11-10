package DB;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
    private  static Connection conn;

    public static Connection getConn()   {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/ebook_app","root","123456");

        } catch (Exception e){
            e.printStackTrace();

        }
        return conn;
    }
}
//private  static Connection conn;
//    public static Connection getConn() {
//        try {
//            Class.forName("com.mysql.jdbc.Driver");
//            String url = "jdbc:mysql://localhost:3306/ebook_app";
//            String username = "root";
//            String pass = "123456";
//            return DriverManager.getConnection(url, username, pass);
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//            return null;
//        }
//    }
//}
