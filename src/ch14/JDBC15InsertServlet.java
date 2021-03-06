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
@WebServlet("/JDBC15InsertServlet")
public class JDBC15InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC15InsertServlet() {
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

		String url = "jdbc:mysql://3.34.132.204/test"; // ?????? ip
		String user = "root";
		String password = "wnddkdwjdqhcjfl1";

		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {
			// ????????? ??????
			Class.forName("com.mysql.cj.jdbc.Driver");

			// ??????
			con = DriverManager.getConnection(url, user, password);

			// PreparedStatement ??????
			stmt = con.prepareStatement(sql);
			
			// ? (????????????)??? ??? ??????l. ????????? ??????????????? ???????????? ??????
			stmt.setString(1, employee.getLastName());
			stmt.setString(2, employee.getFirstName());
			
			
			stmt.setString(3, employee.getNotes());
			

			// ?????? ??????, ??????(ResultSet) ??????
			int cnt = stmt.executeUpdate();

			if(cnt == 1) {
				System.out.println("?????? ??????");
			}else {
				
				System.out.println("?????? ??????");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// ?????? ??????
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
