

import java.io.IOException;
import java.sql.SQLException;

import beans.Product;
import java.util.LinkedList;
import java.util.ListIterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import beans.Product;
/**
 * Servlet implementation class AddToCartServlet
 */
@WebServlet("/AddToCartServlet")
public class AddToCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddToCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession mysession = request.getSession();
		String itemID = request.getParameter("idtocart");
		LinkedList<Product> mylistofitems=null;
		
		if(mysession.getAttribute("listofitems")==null){
			mylistofitems = new LinkedList<Product>();
			mysession.setAttribute("listofitems", mylistofitems);
					
			
		}else if(mysession.getAttribute("listofitems")!=null){
			mylistofitems = (LinkedList<Product>) (mysession.getAttribute("listofitems"));
		}
			
		if(itemID!=null){
			
			try {
				boolean alreadyadded=false;
				ListIterator myiterator = mylistofitems.listIterator();
				while(myiterator.hasNext()){
					Product tempProduct = (Product) myiterator.next();
					if(tempProduct.getId()==Integer.parseInt(itemID)){ //if product in list with ID == parameter ID then
						tempProduct.setQty(tempProduct.getQty()+1);
						myiterator.set(tempProduct);
						alreadyadded=true;
					}
				}
				if(alreadyadded==false){
					mylistofitems.add(new Product(Integer.parseInt(itemID)));
				}
			} catch (NumberFormatException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			mysession.setAttribute("listofitems", mylistofitems);
			request.getRequestDispatcher("viewcart.jsp").forward(request, response);
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
