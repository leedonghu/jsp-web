package practice02.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import practice02.bean.Fruit;

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

	public List<Fruit> getFruit(int limit){
		String sql = "SELECT id, name, price, amount FROM Fruit "
				+ "LIMIT ?, 5 ";
		
		List<Fruit> list = new ArrayList<>();
		
		ResultSet rs = null;
		
		try(
			Connection con = DriverManager.getConnection(url, user, password);
			PreparedStatement pstmt = con.prepareStatement(sql);
				){
			//쿼리에서는 연산자를 쓸 수 없는듯
			//?에 값을 넣을때 계산된 값을 넣음
			pstmt.setInt(1, 5*(limit-1));
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Fruit fruit = new Fruit();
				fruit.setId(rs.getInt(1));
				fruit.setName(rs.getString(2));
				fruit.setPrice(rs.getInt(3));
				fruit.setAmount(rs.getInt(4));
				
				list.add(fruit);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
		
		
		return list;
	}

	public int getSize() {
		String sql = "SELECT count(*) FROM Fruit";
		
		ResultSet rs = null;
		try(
			Connection con = DriverManager.getConnection(url, user, password);
			Statement stmt = con.createStatement();
				){
			rs = stmt.executeQuery(sql);
			if(rs.next()) {
				return rs.getInt(1);
			}
		}catch(Exception e) {
			e.printStackTrace();
			
		}finally {
			if(rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
		return 0;
	}

	public void add(String cId, Fruit fruit) {
		String sql = "INSERT INTO Cart ( "
				+ "customerId, productId, productName, amount, price ) "
				+ "VALUES ( "
				+ "?, ?, ?, ?, ?) ";
		
		try(
			Connection con = DriverManager.getConnection(url, user, password);
			PreparedStatement pstmt = con.prepareStatement(sql);	
				){
			pstmt.setString(1, cId);
			pstmt.setInt(2, fruit.getId());
			pstmt.setString(3, fruit.getName());
			pstmt.setInt(4, fruit.getAmount());
			pstmt.setInt(5, fruit.getPrice());
			
			pstmt.executeUpdate();
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

	public Fruit get(int id) {
		String sql = "SELECT id, name, price, amount FROM Fruit WHERE id = ? ";
		
		ResultSet rs = null;
		try(
			Connection con = DriverManager.getConnection(url, user, password);
			PreparedStatement pstmt = con.prepareStatement(sql);	
				){
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				Fruit fruit = new Fruit();
				fruit.setId(rs.getInt(1));
				fruit.setName(rs.getString(2));
				fruit.setPrice(rs.getInt(3));
				fruit.setAmount(rs.getInt(4));
				
				return fruit;
				
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return null;
		
	}
	
	
}
