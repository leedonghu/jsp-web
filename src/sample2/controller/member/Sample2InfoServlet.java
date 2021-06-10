package sample2.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sample2.bean.Member;
import sample2.dao.MemberDao;
import sample2.service.member.MemberService;

/**
 * Servlet implementation class Sample2InfoServlet
 */
@WebServlet("/sample2/member/info")
public class Sample2InfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private MemberService service;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sample2InfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Override
    public void init() throws ServletException {
    	// TODO Auto-generated method stub
    	super.init();
    	service = new MemberService();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//로그인 되어있다면 세션에있던 멤버 인스턴스를 가져올 수 있음
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("userLogined");
		
		if(member !=null) {
			
			//멤버 인스턴스에 있던 정보를 데이터베이와 한번 비교후 베이터 베이스 정보 가져옴
			MemberDao dao = new MemberDao();
			//Member mem = dao.getMember(member.getId());
			//Member mem = dao.getMember2(member.getId());
			
			Member mem = service.getMember(member.getId());
			
			//가져온 정보를 request에 담아서 forward
			request.setAttribute("member", mem);
			
			String path = "/WEB-INF/sample2/member/info.jsp";
			request.getRequestDispatcher(path).forward(request, response);
		}else {
			String path = request.getContextPath() + "/sample2/main";
			response.sendRedirect(path);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
