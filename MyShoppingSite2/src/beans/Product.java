package beans;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import DB.DBconnection;
public class Product {
	private int id;
	private String imagepath;
	private String description;

	private String title;
	private int qty;
	private double price;
	
	public Product(int idparam) throws ClassNotFoundException, SQLException{

		DBconnection conn = new DBconnection();
		Connection myconn = conn.getConnection();
		 
		PreparedStatement pstmt1 = myconn.prepareStatement("SELECT * FROM myshoppingsite.products where idProducts=?");
		pstmt1.setInt(1,idparam );
		ResultSet myrs = pstmt1.executeQuery();
		
		while(myrs.next()){
			imagepath = myrs.getString("imagename");
			description = myrs.getString("descriptionProducts");
			price = myrs.getDouble("priceProducts");
			title = myrs.getString("titleProducts");
			id = myrs.getInt("idProducts");
			qty = 1;
			
		}
		
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getImagepath() {
		return imagepath;
	}
	public void setImagepath(String imagepath) {
		this.imagepath = imagepath;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}

	
	
	
}
