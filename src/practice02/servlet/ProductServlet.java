package practice02.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import practice02.bean.Fruit;
import practice02.dao.CartDao;

/**
 * Servlet implementation class ProductServlet
 */
@WebServlet("/practice02/product")
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Override
    public void init() throws ServletException {
    	// TODO Auto-generated method stub
    	super.init();
    	
    	
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = request.getParameter("page");
		int limit = 0;
		if(page == null) {
			limit = 1;
		}else {
			
			limit = Integer.parseInt(page);
		}
				
		
		CartDao dao = new CartDao();
		List<Fruit> list = dao.getFruit(limit);
		int size = dao.getSize();
		
		request.setAttribute("fruit", list);
		request.setAttribute("size", size);
		
		
		String path = "/WEB-INF/practice02/product.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
