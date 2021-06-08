package sample2.controller.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sample2.bean.BoardDto;
import sample2.bean.Member;
import sample2.dao.BoardDao;

/**
 * Servlet implementation class Sample2BoardRemoveServlet
 */
@WebServlet("/sample2/board/remove")
public class Sample2BoardRemoveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sample2BoardRemoveServlet() {
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
		//board의 id를 받아옴
		String boardId = request.getParameter("boardId");
		
		// board 정보 가져옴
		BoardDao dao = new BoardDao();
		BoardDto board = dao.get2(Integer.parseInt(boardId));
		
		Member member = (Member)request.getSession().getAttribute("userLogined");
		
		//글을 쓴 회원 아이디와 로그인된 아이디가 같을떼
		if(board.getMemberId().equals(member.getId())) {
			
			boolean ok = dao.remove(board.getBoardId());
			if(ok) {
				request.getSession().setAttribute("message", "계시물이 삭제되었습니다.");
				String path = request.getContextPath() + "/sample2/board/list";
				response.sendRedirect(path);
				//return;
			} else {
				request.getSession().setAttribute("message", "계시물이 삭제되지 않았습니다.");
				String path = request.getContextPath() + "/sample2/board/detail?id=" + boardId;
				response.sendRedirect(path);
			}
		}else {
			String path = request.getContextPath() + "/sample2/board/detail?id=" + boardId;
			response.sendRedirect(path);
			
		}
		
		
		
	}

}
