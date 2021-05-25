package practice;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Board
 */
//@WebServlet("/practice/boardView.jsp")
public class Board extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Board() {
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
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		String title = request.getParameter("title");
		String text = request.getParameter("text");
		Map<String, String> map =(Map<String, String>) session.getAttribute("board");
		
		if(map==null) {
			map = new HashMap<String, String>();
			session.setAttribute("board", map);
		}
		if(title != null) {
			map.put(title, text);
		}
		
		if(!map.isEmpty()) {
			for(Map.Entry<String, String> entries : map.entrySet()) {
				
				out.print("<td>");
				out.print(entries.getKey());
				out.print("</td>");	
			}
		}
	}

}
