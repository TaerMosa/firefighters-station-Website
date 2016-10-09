package connection;


import java.sql.Connection;
import java.sql.DriverManager;

public class mySqlConnection {
	public static Connection connect(){
		try{
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "YourRoot", "YourDBPass");
		}
		catch (Exception e){
			return null;
		}
		
	}

	public static boolean close(Connection c){
		try{
			c.close();
			return true;
		}
		catch (Exception e){
			return false;
		}
	}
}
