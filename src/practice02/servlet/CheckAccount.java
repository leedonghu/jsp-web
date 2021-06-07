package practice02.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import practice02.bean.Account;
import practice02.dao.AccountDao;

/**
 * Servlet implementation class CheckAccount
 */
@WebServlet("/practice02/checkAccount")
public class CheckAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckAccount() {
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
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		AccountDao dao = new AccountDao();
		Account acc = dao.getAccount(id);
		
		if(acc != null && acc.getPassword().equals(password)) {
			HttpSession session = request.getSession();
			session.setAttribute("logined", "로그인 중");
			session.setAttribute("acc", acc);
			String path = request.getContextPath()  + "/practice02/main";
			response.sendRedirect(path);
		} else {
			String path = "/WEB-INF/practice02/login.jsp";
			request.getRequestDispatcher(path).forward(request, response);
			request.setAttribute("message", "로그인 실패");
		}
	}

}
