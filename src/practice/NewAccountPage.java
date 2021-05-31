package practice;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class NewAccountPage
 */
@WebServlet("/NewAccountPage")
public class NewAccountPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewAccountPage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String mobileNum = request.getParameter("mobilNum");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		
		Account acc = new Account();
		acc.setName(name);
		acc.setId(id);
		acc.setPassword(password);
		acc.setMobileNum(mobileNum);
		acc.setEmail(email);
		acc.setAddress(address);
		
		ServletContext application = request.getServletContext();
		application.setAttribute("acc", acc);
		
		
		
		response.sendRedirect(request.getContextPath()+"/practice01/loginPage.jsp");
	}

}
