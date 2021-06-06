package practice02.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CheckPasswordServlet
 */
@WebServlet("/practice02/checkPassword")
public class CheckPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckPasswordServlet() {
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
		// input에서 넘어온 password를 받음
		String password = request.getParameter("password");
		
		// 정규표현식으로 비밀번호 패턴을 생성
		String passwordForm = "^[a-zA-Z0-9]{8,14}$";
		
		//받아온 비밀번호와 비밀번화 패턴이 일치하면 통과
		if(password.matches(passwordForm)) {
			response.getWriter().append("good");
		} else {
			response.getWriter().append("notgood");
		}
	}

}
