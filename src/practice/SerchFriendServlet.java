package practice;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch14.bean.Customer;

/**
 * Servlet implementation class SerchFriendServlet
 */
@WebServlet("/SerchFriendServlet")
public class SerchFriendServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SerchFriendServlet() {
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
		
		String str = request.getParameter("friend");
		
		List<Friend> list = executeJDBC(str);
		request.setAttribute("friend", list);
		
		String path= "/practice01/friendPage.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}
	
	private List<Friend> executeJDBC(String str) {

		List<Friend> list = new ArrayList<>(); // 리턴할 객체
		
		String sql = "SELECT LastName, "
				+ "FirstName, "
				+ "Age, "
				+ "City, "
				+ "Country "
				+ "FROM Friends " + 
				"WHERE LastName LIKE '" + str + "%' ";

		String url = "jdbc:mysql://3.34.132.204/test"; // 본인 ip
		String user = "root";
		String password = "wnddkdwjdqhcjfl1";

		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			// 클래스 로딩
			Class.forName("com.mysql.cj.jdbc.Driver");

			// 연결
			con = DriverManager.getConnection(url, user, password);

			// statement 생성
			stmt = con.createStatement();

			// 쿼리 실행, 결과(ResultSet) 리턴
			rs = stmt.executeQuery(sql);

			// 결과 탐색
			while (rs.next()) {
				Friend friend = new Friend();
				friend.setLastName(rs.getNString(1));
				friend.setFirstName(rs.getString(2));
				friend.setAge(rs.getInt(3));
				friend.setCity(rs.getString(4));
				friend.setCountry(rs.getString(5));
				
				
				list.add(friend);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 연결 닫기
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}

		return list;

	}

	

}
