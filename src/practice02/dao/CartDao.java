package practice02.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class CartDao {
	
	private String url;
	private String user;
	private String password;
	
	public CartDao() {
		this.url ="jdbc:mysql://3.34.132.204/practice";
		this.user ="root";
		this.password ="wnddkdwjdqhcjfl1";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public boolean creat(String id) {
		String sql = "CREAT TABLE ?( "
				+ "fruit VARCHAR(255) PRIMARY KEY, "
				+ "amount INT, "
				+ "price INT) ";
		try(
		   Connection con = DriverManager.getConnection(url, user, password);
		   PreparedStatement pstmt = con.prepareStatement(sql);		
				){
			pstmt.setString(1, id);
			int cnt = pstmt.executeUpdate();
			if(cnt == 0) {
				return true;
			}
			
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	
}
