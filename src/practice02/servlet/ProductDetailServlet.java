package practice02.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import practice02.bean.Fruit;
import practice02.dao.CartDao;

/**
 * Servlet implementation class ProductDetailServlet
 */
@WebServlet("/practice02/detail")
public class ProductDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//아이디를 받아옴
		String idStr = request.getParameter("id");
		int id = Integer.parseInt(idStr);
		
		//받은 아이디로 테이블에서 정보를 받아옴
		CartDao cDao = new CartDao();
		Fruit fruit = cDao.get(id);
	
		List<Integer> list = new ArrayList<>();
		
		for(int i=1; i<=fruit.getAmount(); i++) {
			list.add(i);
		}
		
		//받은 정보를 bean에 담아서 request에 붙힘
		request.setAttribute("fruit", fruit);
		request.setAttribute("list", list);
		
		String path  = "/WEB-INF/practice02/productDetail.jsp";
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
