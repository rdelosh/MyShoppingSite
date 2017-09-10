

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB.DBconnection;

/**
 * Servlet implementation class ViewItemServlet
 */
@WebServlet("/ViewItemServlet")
public class ViewItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewItemServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		if (request.getParameter("id")==null){
			response.sendRedirect(request.getContextPath()+"/index.jsp");
		}
		
		int productidparam = Integer.parseInt(request.getParameter("id"));
		try{
			String db_imagepath="";
			String db_description="";
			double db_price=0;
			String db_title="";
			int db_id=0;
			
			DBconnection conn = new DBconnection();
			Connection myconn = conn.getConnection();
			 
			PreparedStatement pstmt1 = myconn.prepareStatement("SELECT * FROM myshoppingsite.products where idProducts=?");
			pstmt1.setInt(1,productidparam );
			ResultSet myrs = pstmt1.executeQuery();
			
			while(myrs.next()){
				db_imagepath = myrs.getString("imagename");
				db_description = myrs.getString("descriptionProducts");
				db_price = myrs.getDouble("priceProducts");
				db_title = myrs.getString("titleProducts");
				db_id = myrs.getInt("idProducts");
				
			}
			
			
			
			request.setAttribute("imagepath", db_imagepath);
			request.setAttribute("description", db_description);
			request.setAttribute("price", db_price);
			request.setAttribute("title", db_title);
			request.setAttribute("id", db_id);
			
			
			request.getRequestDispatcher("viewitem.jsp").forward(request, response);
			System.out.println(db_id);
		}catch(Exception e){
			System.out.println("something went wrong in the viewitemservlet");
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
