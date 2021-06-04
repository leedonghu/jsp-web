package practice02.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import practice02.dao.AccountDao;

/**
 * Servlet implementation class CheckIdServlet
 */
@WebServlet("/practice02/checkId")
public class CheckIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckIdServlet() {
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
		//input에서 받아온 id 파라미터 값과 정규표현식
		String id = request.getParameter("id");
		String idForm = "^[a-zA-Z0-9]{5,10}$";
		
		AccountDao dao = new AccountDao();
		
		//id와 정규표현식을 비교하여 아이디 생성 가능 여부 체크
		if(id.matches(idForm)) {
			if(dao.existId(id)) {
				response.getWriter().append("not ok");
			} else {
				response.getWriter().append("ok");
			}
		} else {
			response.getWriter().append("not good");
		}
		
	}

}
