package ch14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch14.bean.Employee;

/**
 * Servlet implementation class JDBC15InsertSelvet
 */
@WebServlet("/JDBC15InsertSelvet")
public class JDBC15InsertSelvet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC15InsertSelvet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "/ch14/jdbc15form.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		
		String lastName = request.getParameter("lastName");
		String firstName = request.getParameter("firstName");
		
		
		String photo = request.getParameter("photo");
		String notes = request.getParameter("notes");
		
		Employee employee = new Employee();
		
		employee.setFirstName(firstName);
		employee.setLastName(lastName);
		employee.setNotes(notes);
		employee.setPhoto(photo);
		executeJDBC(employee);
		
		
		
		
		doGet(request, response);
	}
	
	private void executeJDBC(Employee employee) {

		
		
		String sql = "INSERT INTO Employees " + 
				"(LastName, FirstName, Notes) " + 
				"VALUES " + 
				"(?, ?, ?)" ;

		String url = "jdbc:mysql://3.34.132.204/test"; // 본인 ip
		String user = "root";
		String password = "wnddkdwjdqhcjfl1";

		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {
			// 클래스 로딩
			Class.forName("com.mysql.cj.jdbc.Driver");

			// 연결
			con = DriverManager.getConnection(url, user, password);

			// PreparedStatement 생성
			stmt = con.prepareStatement(sql);
			
			// ? (파라미터)에 값 할당l. 첫번째 파라미터에 물음표의 위치
			stmt.setString(1, employee.getLastName());
			stmt.setString(2, employee.getFirstName());
			
			
			stmt.setString(3, employee.getNotes());
			

			// 쿼리 실행, 결과(ResultSet) 리턴
			int cnt = stmt.executeUpdate();

			if(cnt == 1) {
				System.out.println("입력 성공");
			}else {
				
				System.out.println("입력 실패");
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

		

	}

}
