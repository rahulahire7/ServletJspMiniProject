package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

import java.util.ArrayList;

import com.model.*;

public class JdbcOps {
	//Decide on why protected..
	protected final static String ORACLE_DRIVER = "oracle.jdbc.driver.OracleDriver";
	protected final static String ORACLE_URL = "jdbc:oracle:thin:@localhost:1521:xe";
	protected final static String ORACLE_USERNAME = "system";
	protected final static String ORACLE_PASSWORD = "Newuser123";
	
	private static String insert_into_userinfo = "INSERT INTO userinfo VALUES(user_seq.nextval,?,?,?,?)"; //use prepareStatement
	private static String insert_into_postinfo = "INSERT INTO postinfo VALUES(post_seq.nextval,?,?,?)";
	private static String select_all_from_userinfo = "SELECT * FROM userinfo"; //use createStatement
	private static String select_all_from_postinfo = "SELECT * FROM postinfo";
	private static String select_user_created_posts = "SELECT * FROM postinfo WHERE userid=?";
	
	public Connection establishConnection() { //NOTE: Name changed, as previously it was openConnection
		Connection con = null;
		try {
			Class.forName(ORACLE_DRIVER);
			con = DriverManager.getConnection(ORACLE_URL, ORACLE_USERNAME, ORACLE_PASSWORD);
		} catch (ClassNotFoundException e) {
			System.out.println("Class not found -> " + e);
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("SQL Exception occured -> " + e);
			e.printStackTrace();
		}
		return con;
	}
	
	public int insertIntoUserInfo(ArrayList<User> lst) {
		Connection con = establishConnection();
		int i = 0;
		try {
			PreparedStatement ps = con.prepareStatement(insert_into_userinfo);
			ps.setString(1, lst.get(0).getUname());
			ps.setString(2, lst.get(0).getEmail());
			ps.setDouble(3, lst.get(0).getMobno());
			ps.setString(4, lst.get(0).getPass());
			i = ps.executeUpdate();
			con.close();
		} catch (SQLException e) {
			System.out.println("Error occured while inserting values -> " + e);
			e.printStackTrace();
		}
		return i;
	}
	
	public int insertIntoPostInfo(ArrayList<Post> lst) {
		Connection con = establishConnection();
		int i = 0;
		try {
			PreparedStatement ps = con.prepareStatement(insert_into_postinfo);
			ps.setInt(1, lst.get(0).getUserid());
			ps.setString(2, lst.get(0).getTitle());
			ps.setString(3, lst.get(0).getParagraph());
			i = ps.executeUpdate();
			con.close();
		} catch (SQLException e) {
			System.out.println("Error occured while inserting values -> " + e);
			e.printStackTrace();
		}
		return i;
	}
	
	public ArrayList<User> selectAllFromUserinfo() {  
		Connection con = establishConnection();
		ArrayList<User> lst = new ArrayList<User>();
		try {
			Statement s = con.createStatement();
			ResultSet rs = s.executeQuery(select_all_from_userinfo);
			while(rs.next()) {
				User u = new User();
				u.setUserid(rs.getInt(1));
				u.setUname(rs.getString(2));
				u.setEmail(rs.getString(3));
				u.setMobno(rs.getDouble(4));
				u.setPass(rs.getString(5));
				lst.add(u);
			}
			con.close();
		} catch (SQLException e) {
			System.out.println("Error occured while fetching -> " + e);
			e.printStackTrace();
		}
		return lst;
	}
	
	public boolean validateUser(User u) {
		
		boolean redirect = false;
		ArrayList<User> lst = selectAllFromUserinfo();
		
		for(User usr:lst) {
			if( ((usr.getUname()).equals(u.getUname())) && ((usr.getPass()).equals(u.getPass())) ) {
				redirect = true;
				break;
			}
		}

		return redirect;
	}
	
	public User getUserProfileData(User u) {
		ArrayList<User> lst = selectAllFromUserinfo();
		
		for(User usr:lst) {
			if( ((usr.getUname()).equals(u.getUname())) && ((usr.getPass()).equals(u.getPass())) ) {
				u.setUserid(usr.getUserid());
				u.setEmail(usr.getEmail());
				u.setMobno(usr.getMobno());
				break;
			}
		}
		return u;
	}
	
	public ArrayList<Post> getAllPosts() {
		
		ArrayList<Post> lst = new ArrayList<Post>();
		
		try {
			Connection con = establishConnection();
			Statement s = con.createStatement();
			ResultSet rs = s.executeQuery(select_all_from_postinfo);
		
			//Write logic for what will happen when postinfo table is empty..
			
			while(rs.next()) {
			
				Post p = new Post();
				p.setPostid(rs.getInt(1));
				p.setUserid(rs.getInt(2));
				p.setTitle(rs.getString(3));
				p.setParagraph(rs.getString(4));
				lst.add(p);
			
			}
			
		} catch (SQLException e) {
			
			System.out.println("Error occured while fetching all data from postinfo -> " + e);
			e.printStackTrace();
		
		}
		
		return lst;
	}
	
	public ArrayList<Post> getAllUserCreatedPosts(int uid) {
		ArrayList<Post> lst = null;
		try {
			Connection con = establishConnection();
			PreparedStatement ps = con.prepareStatement(select_user_created_posts);
			ps.setInt(1, uid);
			ResultSet rs = ps.executeQuery();
			//need to check if cursor is pointing at the first row, if yes then it means that rs has values without moving the cursor..
			//if(rs.isFirst()) {

				lst = new ArrayList<Post>();
				while(rs.next()) {
					Post p = new Post();
					p.setPostid(rs.getInt(1));
					p.setUserid(rs.getInt(2));
					p.setTitle(rs.getString(3));
					p.setParagraph(rs.getString(4));
					lst.add(p);
				}
			//}
			con.close();
		} catch (SQLException e) {
			System.out.println("Error occured while selecting user specific posts -> " + e);
			e.printStackTrace();
		}
		return lst;
	}
	
}
