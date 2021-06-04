package sample2.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import sample2.bean.Board;

public class BoardDao {
	private String url;
	private String user;
	private String password;
	
	public BoardDao() {
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

	public boolean insert(Board board) {
		
		String sql = "INSERT INTO Board "
				+ "(title, body, memberId) "
				+ "VALUES "
				+ "(?, ?, ?) ";
		
		try(
			Connection con = DriverManager.getConnection(url, user, password);
			PreparedStatement pstmt = con.prepareStatement(sql);
				){
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getBody());
			pstmt.setString(3, board.getMemberId());
			
			int cnt = pstmt.executeUpdate();
			if(cnt == 1) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}
}