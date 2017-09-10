package DB;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBconnection {
	
	/*
	private String url = "jdbc:mysql://localhost:3306/";
	private String DBname = "myshoppingsite";
	private String DBuser = "root";
	private String DBpass = "xpert123";
	private Connection myConn;
	*/
	
	private String url = "jdbc:mysql://localhost:3306";
	private String DBname = "myshoppingsite";
	private String DBuser = "root";
	private String DBpass = "xpert123";
	private Connection myConn;
	
	public Connection getConnection() throws SQLException, ClassNotFoundException{
		Class.forName("com.mysql.jdbc.Driver");
		myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/myshoppingsite",DBuser,DBpass);
		//myConn = DriverManager.getConnection(url+DBname+"",""+DBuser+"",""+DBpass);
		return myConn;
	}
}
