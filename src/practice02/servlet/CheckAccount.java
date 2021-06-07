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
		//로그인 창에서 id와 password를 받아옴
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		//회원가입시 저장되었던 계정 정보를 가져옴
		AccountDao dao = new AccountDao();
		Account acc = dao.getAccount(id);
		
		//회원가입되었던 계정이 있고 그 계정의 비밀번호와 입력된 비밀번호가 같으면 로그인
		//세션에 받아온 Account 객체와 String 하나를 넣어놈
		//객체는 ${} (el)를 편하게 쓰기위해
		//String은 로그인 상태를 파악하기 위해
		//로그아웃 페이지에서 session.invalidate(); 시켜줌
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
