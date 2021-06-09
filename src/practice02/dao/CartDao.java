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
			//회원가입창에서 받아온 id를 table의 이름으로
			pstmt.setString(1, id);
			int cnt = pstmt.executeUpdate();
			
			//table이 만들어지면 pstmt.executeUpdate(); 가 0을 리턴함
			if(cnt == 0) {
				return true;
			}
			
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	
}
