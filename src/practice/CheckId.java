package practice;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CheckId
 */
@WebServlet("/CheckId")
public class CheckId extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckId() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		ServletContext application = request.getServletContext();
		Account acc = (Account)application.getAttribute("acc");
		String id1 = acc.getId();
		String password1 = acc.getPassword();
	
		if(id1 != null) {
			
			if(id.equals(id1)) {
				if(password.equals(password1)) {
					
					String path = "/practice01/mainPage.jsp";
					RequestDispatcher dispatcher = request.getRequestDispatcher(path);
					dispatcher.forward(request, response);
				} else {
					out.print("<script>alert('비빌번호가 다릅니다');</script>");
					String path = "/practice01/loginPage.jsp";
					response.sendRedirect(path);
				}
				
			}else {
				out.print("<script>alert('아이디가 다릅니다');</script>");
				String path = "/practice01/loginPage.jsp";
				response.sendRedirect(path);
			}
			
		}
		
	}

}
