package test;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import DB.DBconnection;

public class Test {

	public static void main(String[] args) throws ClassNotFoundException, SQLException{
		DBconnection mydb = new DBconnection();
		
			Connection myconn = mydb.getConnection();
			Statement mystmt = myconn.createStatement();
			ResultSet myrs = mystmt.executeQuery("select max(iduser) from user");
			while(myrs.next()){
				System.out.println(myrs.getInt(1));
			}

	}
}
