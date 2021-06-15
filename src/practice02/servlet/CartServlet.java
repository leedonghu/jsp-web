package practice02.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import practice02.bean.Account;
import practice02.bean.Cart;
import practice02.bean.Fruit;
import practice02.service.CartService;

/**
 * Servlet implementation class BasketServlet
 */
@WebServlet("/practice02/cart")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private CartService service;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Override
    public void init() throws ServletException {
    	// TODO Auto-generated method stub
    	super.init();
    	
    	service = new CartService();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//받아온 정보들을 필요한 형태로 변형
		String name = request.getParameter("name");
		String idStr = request.getParameter("id");
		String priceStr = request.getParameter("price");
		String amountStr = request.getParameter("amount");
		
		int id = Integer.parseInt(idStr);
		int amount = Integer.parseInt(amountStr);
		int price = Integer.parseInt(priceStr);
		
		Account acc = (Account)request.getSession().getAttribute("acc");
		String cId = acc.getId();
		
		Fruit fruit = new Fruit();
		fruit.setAmount(amount);
		fruit.setId(id);
		fruit.setName(name);
		fruit.setPrice(price);
		
		//cart table에 insert
		service.addCart(cId, fruit);
		
		//cart table에서 data 적절한 형태로 받아옴
		List<Cart> list =  service.getCart(cId);
		
		//받아온 정보를 request에 붙힘
		request.setAttribute("list", list);
		
		//jsp로 forward
		String path = "/WEB-INF/practice02/cart.jsp";
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
