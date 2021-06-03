package practice02.servlet;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import practice02.bean.Account;

/**
 * Servlet implementation class NewAccountServlet
 */
@WebServlet("/practice02/account")
public class NewAccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewAccountServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//로그인 페이지에서 받은 요청을 회원가입 폼이 있는 페이지로 이동
		String path = "/WEB-INF/practice02/accountForm.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//회원가입 폼에서 받은 정보를 받음
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String mobileNum = request.getParameter("mobileNum");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String birth = request.getParameter("birth");
		
		//Account 객체를 만들어 그 안에 저장
		Account acc = new Account();
		acc.setName(name);
		acc.setId(id);
		acc.setPassword(password);
		acc.setMobileNum(mobileNum);
		acc.setEmail(email);
		acc.setAddress(address);
		acc.setBirth(Date.valueOf(birth)); // valueOf메소드로 string을 convert해줌
		
	}

}
