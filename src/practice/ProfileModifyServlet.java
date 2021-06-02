package practice;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProfileModifyServlet
 */
@WebServlet("/ProfileModifyServlet")
public class ProfileModifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProfileModifyServlet() {
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
		
		String name = request.getParameter("name");
		String mobileNum = request.getParameter("mobileNum");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		
		ServletContext application = request.getServletContext();
		Account acc = (Account)application.getAttribute("acc");
		
		acc.setName(name);
		acc.setMobileNum(mobileNum);
		acc.setEmail(email);
		acc.setAddress(address);
		
		
		
		String path = request.getContextPath()+"/practice01/profile.jsp";
		response.sendRedirect(path);
	}

}
