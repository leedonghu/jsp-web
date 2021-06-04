package practice02.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import practice02.bean.Account;

public class AccountDao {
	
	private String url;
	private String user;
	private String password;
	
	public AccountDao() {
		this.url ="jdbc:mysql://3.34.132.204/test";
		this.user ="root";
		this.password ="wnddkdwjdqhcjfl1";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

	public boolean existId(String id) {
		
		//데이터베이스에서 같은 아이디가 있는지 탐색하는 메소드
		String sql = "SELECT id FROM Account WHERE id = ?";
		
		ResultSet rs = null;
		try (
			Connection con = DriverManager.getConnection(url, user, password);
			PreparedStatement pstmt = con.prepareStatement(sql);
				) {
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				//같은 아이디가 있으면 true를 리턴
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		//같은 아이디가 없으면 false를 리턴
		return false;
	}


	public boolean insertAcc(Account acc) {
		String sql = "INSERT INTO Account "
				+ "(id, name, password, mobileNum, email, address, birth) "
				+ "VALUES "
				+ "(?, ?, ?, ?, ?, ?, ?) ";
		
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			
			con = DriverManager.getConnection(url, user, password);
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, acc.getId());
			pstmt.setString(2, acc.getName());
			pstmt.setString(3, acc.getPassword());
			pstmt.setString(4, acc.getMobileNum());
			pstmt.setString(5, acc.getEmail());
			pstmt.setString(6, acc.getAddress());
			pstmt.setDate(7, acc.getBirth());
			
			int cnt = pstmt.executeUpdate();
			if(cnt ==1) {
				return true;
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			if(pstmt !=null) {
				try {
					pstmt.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if(con != null) {
				try {
					con.close();
				} catch(Exception e) {
					e.printStackTrace();
				}
			}
		}
		
		
		return false;
	}


	public Account getAccount(String id) {
		String sql = "SELECT id, name, password, mobileNum, email, address, birth "
				+ "FROM Account "
				+ "WHERE id = ? ";
		
		ResultSet rs = null;
		
		try(
			Connection con = DriverManager.getConnection(url, user, password);
			PreparedStatement pstmt = con.prepareStatement(sql)	
				){
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				Account acc = new Account();
				acc.setId(rs.getString(1));
				acc.setName(rs.getString(2));
				acc.setPassword(rs.getString(3));
				acc.setMobileNum(rs.getString(4));
				acc.setEmail(rs.getString(5));
				acc.setAddress(rs.getString(6));
				acc.setBirth(rs.getDate(7));
						
				return acc;		
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		
		
		return null;
	}
	
	
	

}
